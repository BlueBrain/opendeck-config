#!/bin/bash
my_dir="$(dirname "$0")"

source "$my_dir"/setenv.sh

function clear_wb {
    lower_bound=$1
    uppser_bound=$(($lower_bound+3))
    echo "*** Clearing adapters from  $1 to $uppser_bound ***"
    for i in `seq "$lower_bound" $uppser_bound`
    do
        /home/bbpcave/bin/vwbc --adapter ${i} --clear
        echo "*** Cleared adapter $i ***"
    done
}

function clear_all {
    echo "*** Clearing all adapter"
    for (( c=0; c<32; c=c+4 ))
    do
        clear_wb $c &
    done
    wait
}

