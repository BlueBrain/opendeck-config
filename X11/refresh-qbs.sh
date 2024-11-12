#!/bin/bash

apply_metamode() {
    index=$1
    echo "*** Control screen index: " $index
    current_mm=$(nvidia-settings -c :0.$index -q CurrentMetaMode)
    trimmed_mm_string=${current_mm##*::}
    echo "*** Will re-apply:" $trimmed_mm_string
    nvidia-settings -c :0.$index -a CurrentMetaMode="$trimmed_mm_string"
}

while getopts ":t:" opt; do
    case ${opt} in
        t ) target=$OPTARG
            if [[  ! $target =~  ^[1-8]$ ]] ; then
                echo "You have only 8 projectors, which are 1-indexed "; exit 1
            fi
        ;;
        \? ) echo "Usage: cmd [-t]"
        ;;
        : )  echo "Missing param to $OPTARG";  exit 1
        ;;
    esac
done

if  [ "$target" ]; then
    control_index=$(( target - 1 ))
    apply_metamode $control_index
else
    for (( index=0; index<8; index=index+1 ))
    do
        apply_metamode $index
        sleep 2
    done
fi

