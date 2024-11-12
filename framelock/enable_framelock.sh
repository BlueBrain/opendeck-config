#!/bin/bash

log() {
    if [ "$verbose" = true ] && [ "$2" -le "$log_level" ]
    then
        date=$(date +%d-%m-%Y:%T)
        echo "[INFO][$date]: $1"
    fi
}

warn () {
    date=$(date +%d-%m-%Y:%T)
    echo "[WARNING][$date]:  $1"
}

err () {
    date=$(date +%d-%m-%Y:%T)
    echo "[ERROR][$date]:  $1"
}

GPUS=$(echo {0..7})

enable_framelock() {
    export DISPLAY=:0
    log  "Trying to enable frame lock on the cluster..." 2

    log  "setting framelock config on all dpys" 2
    nvidia-settings -a localhost:0[dpy]/FrameLockDisplayConfig=1 > /dev/null 2>&1
    if [[ $? != 0 ]]
    then
        err "Could not set FrameLockDisplayConfig on gpu$i"
        exit -1
    fi

    nvidia-settings -a localhost:0[dpy:47]/FrameLockDisplayConfig=2 > /dev/null 2>&1
    if [[ $? != 0 ]]
    then
        err "Could not set FrameLockDisplayConfig on cave5 dpy$i"
        exit 1
    fi


    for i in $GPUS
    do
        log "enable on gpu $i" 2
        OUTPUT=$(nvidia-settings -a localhost:0[gpu:$i]/FrameLockEnable=1 2>&1  1> /dev/null)
        exit_code=$?
        if [[ $exit_code != 0 ]]
        then
            err "Cannot enable on GPU-$i"
            exit -1
        fi
        REGEX="ERROR: Error assigning value 1 to attribute 'FrameLockEnable'"
        if [[ $OUTPUT =~ $REGEX ]]
        then
            err "Cannot enable on GPU-$i"
            exit -1
        fi
    done
    echo "Successfully enabled frame lock on the cluster."
}

enable_xhost() {
    DISPLAY=:0 xhost  +localhost
    xhost_code=$?
    if [[ ! $xhost_code == 0 ]]
    then
        err "xhost exits with: $xhost_code"
        exit $xhost_code
    fi
}

check_xhosts() {

    output=$(DISPLAY=:0 xhost)
    if [[ "$output" =~ localhost ]]
    then
        xhost_set=true
    else
        xhost_set=false
    fi


}

check_framelock() {
    count_framelocked=0
    for i in $GPUS
    do
        OUTPUT=$(DISPLAY=:0 nvidia-settings -q localhost:0[gpu:$i]/FrameLockEnable 2> /dev/null)
        exit_code=$?
        if [[ $exit_code != 0 ]]
        then
            err "Frame lock status not available on gpu:$i. Connection problem etc."
            enable_framelock
        else
            REGEX="Attribute 'FrameLockEnable' \(localhost:[[:digit:]]\[gpu:[[:digit:]]\]\):[[:space:]]([[:digit:]]).*"
            if [[ $OUTPUT =~ $REGEX ]]
            then
                FRAME_LOCK_STATUS=${BASH_REMATCH[1]}
                if [ "$FRAME_LOCK_STATUS" -eq "1" ]
                then
                    ((++count_framelocked))
                    log "gpu:$i: Frame lock is enabled." 2
                else
                    warn "gpu:$i: Frame lock is DISABLED."
                fi
            else
                err 'Frame lock output parsing error'
            fi
        fi
    done

}

main() {
    interval=10
    while true
    do

        check_xhosts
        if [[ $xhost_set == true ]]
        then
            log "xhost is set-up" 2
            break
        else
            enable_xhost
        fi
    done

    while true
    do
        check_framelock
        if [[ $count_framelocked == 8 ]]
        then
            log  "framelock working on on all nodes. sleep for $interval" 1
            sleep $interval
        else
            warn "framelock NOT enabled on all gpus, trying to enable"
            enable_framelock
        fi
        sleep $interval
        check_xhosts
    done
}

if [ "$1" = "v" ]
then
    verbose=true
fi
if [ -z "$2" ]
then
    log_level=1
else
    log_level="$2"
fi

main
