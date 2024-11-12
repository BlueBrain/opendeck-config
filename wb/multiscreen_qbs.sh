#!/bin/bash
my_dir="$(dirname "$0")"

source "$my_dir"/setenv.sh
source "$my_dir"/clear.sh

# source "$my_dir"/prepare_blending.sh


function projector1 {
    # DP-0 (RIGHT EYE, TOP)
    /home/bbpcave/bin/vwbc2 -km --adapter 0 --screen-width 2160 --screen-height 3422 --mullion-width -530 --mullion-height -3422 --warp /home/bbpcave/sharedconfig/calibration/QuadMesh_2.map --num-tiles-width 7 --num-tiles-height 2 --mesh-tiles-i 0 --mesh-tiles-j 0 --top --blend /home/bbpcave/sharedconfig/calibration/BlendImage_2_T-prewarped.png --blend-after-warp
    # DP-2 (LEFT EYE, TOP)
    /home/bbpcave/bin/vwbc2 -km --adapter 1 --screen-width 2160 --screen-height 3422 --mullion-width -530 --mullion-height -3422 --warp /home/bbpcave/sharedconfig/calibration/QuadMesh_2.map --num-tiles-width 7 --num-tiles-height 2 --mesh-tiles-i 0 --mesh-tiles-j 0 --top --blend /home/bbpcave/sharedconfig/calibration/BlendImage_2_T-prewarped.png --blend-after-warp
    # DP-4 (LEFT EYE, BOTTOM)
    /home/bbpcave/bin/vwbc2 -km --adapter 2 --screen-width 2160 --screen-height 3422 --mullion-width -530 --mullion-height -3422 --warp /home/bbpcave/sharedconfig/calibration/QuadMesh_2.map --num-tiles-width 7 --num-tiles-height 2 --mesh-tiles-i 0 --mesh-tiles-j 0 --bottom --blend /home/bbpcave/sharedconfig/calibration/BlendImage_2_B-prewarped.png --blend-after-warp
    # DP-6 (RIGHT EYE, BOTTOM)
    /home/bbpcave/bin/vwbc2 -km --adapter 3 --screen-width 2160 --screen-height 3422 --mullion-width -530 --mullion-height -3422 --warp /home/bbpcave/sharedconfig/calibration/QuadMesh_2.map --num-tiles-width 7 --num-tiles-height 2 --mesh-tiles-i 0 --mesh-tiles-j 0 --bottom --blend /home/bbpcave/sharedconfig/calibration/BlendImage_2_B-prewarped.png --blend-after-warp
}

function projector2 {
    /home/bbpcave/bin/vwbc2 -km --adapter 4 --screen-width 2160 --screen-height 3422 --mullion-width -530 --mullion-height -3422 --warp /home/bbpcave/sharedconfig/calibration/QuadMesh_3.map --num-tiles-width 7 --num-tiles-height 2 --mesh-tiles-i 1 --mesh-tiles-j 0 --top --blend /home/bbpcave/sharedconfig/calibration/BlendImage_3_T-prewarped.png --blend-after-warp
    /home/bbpcave/bin/vwbc2 -km --adapter 5 --screen-width 2160 --screen-height 3422 --mullion-width -530 --mullion-height -3422 --warp /home/bbpcave/sharedconfig/calibration/QuadMesh_3.map --num-tiles-width 7 --num-tiles-height 2 --mesh-tiles-i 1 --mesh-tiles-j 0 --top --blend /home/bbpcave/sharedconfig/calibration/BlendImage_3_T-prewarped.png --blend-after-warp
    /home/bbpcave/bin/vwbc2 -km --adapter 6 --screen-width 2160 --screen-height 3422 --mullion-width -530 --mullion-height -3422 --warp /home/bbpcave/sharedconfig/calibration/QuadMesh_3.map --num-tiles-width 7 --num-tiles-height 2 --mesh-tiles-i 1 --mesh-tiles-j 0 --bottom --blend /home/bbpcave/sharedconfig/calibration/BlendImage_3_B-prewarped.png --blend-after-warp
    /home/bbpcave/bin/vwbc2 -km --adapter 7 --screen-width 2160 --screen-height 3422 --mullion-width -530 --mullion-height -3422 --warp /home/bbpcave/sharedconfig/calibration/QuadMesh_3.map --num-tiles-width 7 --num-tiles-height 2 --mesh-tiles-i 1 --mesh-tiles-j 0 --bottom --blend /home/bbpcave/sharedconfig/calibration/BlendImage_3_B-prewarped.png --blend-after-warp
}

function projector3 {
    /home/bbpcave/bin/vwbc2 -km --adapter 8 --screen-width 2160 --screen-height 3422 --mullion-width -530 --mullion-height -3422 --warp /home/bbpcave/sharedconfig/calibration/QuadMesh_4.map --num-tiles-width 7 --num-tiles-height 2 --mesh-tiles-i 2 --mesh-tiles-j 0 --top --blend /home/bbpcave/sharedconfig/calibration/BlendImage_4_T-prewarped.png --blend-after-warp
    /home/bbpcave/bin/vwbc2 -km --adapter 9 --screen-width 2160 --screen-height 3422 --mullion-width -530 --mullion-height -3422 --warp /home/bbpcave/sharedconfig/calibration/QuadMesh_4.map --num-tiles-width 7 --num-tiles-height 2 --mesh-tiles-i 2 --mesh-tiles-j 0 --top --blend /home/bbpcave/sharedconfig/calibration/BlendImage_4_T-prewarped.png --blend-after-warp
    /home/bbpcave/bin/vwbc2 -km --adapter 10 --screen-width 2160 --screen-height 3422 --mullion-width -530 --mullion-height -3422 --warp /home/bbpcave/sharedconfig/calibration/QuadMesh_4.map --num-tiles-width 7 --num-tiles-height 2 --mesh-tiles-i 2 --mesh-tiles-j 0 --bottom --blend /home/bbpcave/sharedconfig/calibration/BlendImage_4_B-prewarped.png --blend-after-warp
    /home/bbpcave/bin/vwbc2 -km --adapter 11 --screen-width 2160 --screen-height 3422 --mullion-width -530 --mullion-height -3422 --warp /home/bbpcave/sharedconfig/calibration/QuadMesh_4.map --num-tiles-width 7 --num-tiles-height 2 --mesh-tiles-i 2 --mesh-tiles-j 0 --bottom --blend /home/bbpcave/sharedconfig/calibration/BlendImage_4_B-prewarped.png --blend-after-warp
}

function projector4 {
    /home/bbpcave/bin/vwbc2 -km --adapter 12 --screen-width 2160 --screen-height 3422 --mullion-width -530 --mullion-height -3422 --warp /home/bbpcave/sharedconfig/calibration/QuadMesh_5.map --num-tiles-width 7 --num-tiles-height 2 --mesh-tiles-i 3 --mesh-tiles-j 0 --top --blend /home/bbpcave/sharedconfig/calibration/BlendImage_5_T-prewarped.png --blend-after-warp
    /home/bbpcave/bin/vwbc2 -km --adapter 13 --screen-width 2160 --screen-height 3422 --mullion-width -530 --mullion-height -3422 --warp /home/bbpcave/sharedconfig/calibration/QuadMesh_5.map --num-tiles-width 7 --num-tiles-height 2 --mesh-tiles-i 3 --mesh-tiles-j 0 --top --blend /home/bbpcave/sharedconfig/calibration/BlendImage_5_T-prewarped.png --blend-after-warp
    /home/bbpcave/bin/vwbc2 -km --adapter 14 --screen-width 2160 --screen-height 3422 --mullion-width -530 --mullion-height -3422 --warp /home/bbpcave/sharedconfig/calibration/QuadMesh_5.map --num-tiles-width 7 --num-tiles-height 2 --mesh-tiles-i 3 --mesh-tiles-j 0 --bottom --blend /home/bbpcave/sharedconfig/calibration/BlendImage_5_B-prewarped.png --blend-after-warp
    /home/bbpcave/bin/vwbc2 -km --adapter 15 --screen-width 2160 --screen-height 3422 --mullion-width -530 --mullion-height -3422 --warp /home/bbpcave/sharedconfig/calibration/QuadMesh_5.map --num-tiles-width 7 --num-tiles-height 2 --mesh-tiles-i 3 --mesh-tiles-j 0 --bottom --blend /home/bbpcave/sharedconfig/calibration/BlendImage_5_B-prewarped.png --blend-after-warp
}

function projector5 {
    /home/bbpcave/bin/vwbc2 -km --adapter 16 --screen-width 2160 --screen-height 3422 --mullion-width -530 --mullion-height -3422 --warp /home/bbpcave/sharedconfig/calibration/QuadMesh_6.map --num-tiles-width 7 --num-tiles-height 2 --mesh-tiles-i 4 --mesh-tiles-j 0 --top --blend /home/bbpcave/sharedconfig/calibration/BlendImage_6_T-prewarped.png --blend-after-warp
    /home/bbpcave/bin/vwbc2 -km --adapter 17 --screen-width 2160 --screen-height 3422 --mullion-width -530 --mullion-height -3422 --warp /home/bbpcave/sharedconfig/calibration/QuadMesh_6.map --num-tiles-width 7 --num-tiles-height 2 --mesh-tiles-i 4 --mesh-tiles-j 0 --top --blend /home/bbpcave/sharedconfig/calibration/BlendImage_6_T-prewarped.png --blend-after-warp
    /home/bbpcave/bin/vwbc2 -km --adapter 18 --screen-width 2160 --screen-height 3422 --mullion-width -530 --mullion-height -3422 --warp /home/bbpcave/sharedconfig/calibration/QuadMesh_6.map --num-tiles-width 7 --num-tiles-height 2 --mesh-tiles-i 4 --mesh-tiles-j 0 --bottom --blend /home/bbpcave/sharedconfig/calibration/BlendImage_6_B-prewarped.png --blend-after-warp
    /home/bbpcave/bin/vwbc2 -km --adapter 19 --screen-width 2160 --screen-height 3422 --mullion-width -530 --mullion-height -3422 --warp /home/bbpcave/sharedconfig/calibration/QuadMesh_6.map --num-tiles-width 7 --num-tiles-height 2 --mesh-tiles-i 4 --mesh-tiles-j 0 --bottom --blend /home/bbpcave/sharedconfig/calibration/BlendImage_6_B-prewarped.png --blend-after-warp
}

function projector6 {
    /home/bbpcave/bin/vwbc2 -km --adapter 20 --screen-width 2160 --screen-height 3422 --mullion-width -530 --mullion-height -3422 --warp /home/bbpcave/sharedconfig/calibration/QuadMesh_7.map --num-tiles-width 7 --num-tiles-height 2 --mesh-tiles-i 5 --mesh-tiles-j 0 --top --blend /home/bbpcave/sharedconfig/calibration/BlendImage_7_T-prewarped.png --blend-after-warp
    /home/bbpcave/bin/vwbc2 -km --adapter 21 --screen-width 2160 --screen-height 3422 --mullion-width -530 --mullion-height -3422 --warp /home/bbpcave/sharedconfig/calibration/QuadMesh_7.map --num-tiles-width 7 --num-tiles-height 2 --mesh-tiles-i 5 --mesh-tiles-j 0 --top --blend /home/bbpcave/sharedconfig/calibration/BlendImage_7_T-prewarped.png --blend-after-warp
    /home/bbpcave/bin/vwbc2 -km --adapter 22 --screen-width 2160 --screen-height 3422 --mullion-width -530 --mullion-height -3422 --warp /home/bbpcave/sharedconfig/calibration/QuadMesh_7.map --num-tiles-width 7 --num-tiles-height 2 --mesh-tiles-i 5 --mesh-tiles-j 0 --bottom --blend /home/bbpcave/sharedconfig/calibration/BlendImage_7_B-prewarped.png --blend-after-warp
    /home/bbpcave/bin/vwbc2 -km --adapter 23 --screen-width 2160 --screen-height 3422 --mullion-width -530 --mullion-height -3422 --warp /home/bbpcave/sharedconfig/calibration/QuadMesh_7.map --num-tiles-width 7 --num-tiles-height 2 --mesh-tiles-i 5 --mesh-tiles-j 0 --bottom --blend /home/bbpcave/sharedconfig/calibration/BlendImage_7_B-prewarped.png --blend-after-warp
}

function projector7 {
    /home/bbpcave/bin/vwbc2 -km --adapter 24 --screen-width 2160 --screen-height 3422 --mullion-width -530 --mullion-height -3422 --warp /home/bbpcave/sharedconfig/calibration/QuadMesh_8.map --num-tiles-width 7 --num-tiles-height 2 --mesh-tiles-i 6 --mesh-tiles-j 0 --top --blend /home/bbpcave/sharedconfig/calibration/BlendImage_8_T-prewarped.png --blend-after-warp
    /home/bbpcave/bin/vwbc2 -km --adapter 25 --screen-width 2160 --screen-height 3422 --mullion-width -530 --mullion-height -3422 --warp /home/bbpcave/sharedconfig/calibration/QuadMesh_8.map --num-tiles-width 7 --num-tiles-height 2 --mesh-tiles-i 6 --mesh-tiles-j 0 --top --blend /home/bbpcave/sharedconfig/calibration/BlendImage_8_T-prewarped.png --blend-after-warp
    /home/bbpcave/bin/vwbc2 -km --adapter 26 --screen-width 2160 --screen-height 3422 --mullion-width -530 --mullion-height -3422 --warp /home/bbpcave/sharedconfig/calibration/QuadMesh_8.map --num-tiles-width 7 --num-tiles-height 2 --mesh-tiles-i 6 --mesh-tiles-j 0 --bottom --blend /home/bbpcave/sharedconfig/calibration/BlendImage_8_B-prewarped.png --blend-after-warp
    /home/bbpcave/bin/vwbc2 -km --adapter 27 --screen-width 2160 --screen-height 3422 --mullion-width -530 --mullion-height -3422 --warp /home/bbpcave/sharedconfig/calibration/QuadMesh_8.map --num-tiles-width 7 --num-tiles-height 2 --mesh-tiles-i 6 --mesh-tiles-j 0 --bottom --blend /home/bbpcave/sharedconfig/calibration/BlendImage_8_B-prewarped.png --blend-after-warp
}

# floor projector
function projector8 {
    # DP-0 (RIGHT EYE, RIGTH SIDE)
    /home/bbpcave/bin/vwbc2 --adapter 28 --screen-width 4096 --screen-height 2160 --mullion-width 0 --mullion-height 0 --warp /home/bbpcave/sharedconfig/calibration/QuadMesh_1.map --num-tiles-width 2 --num-tiles-height 1 --mesh-tiles-i 1 --mesh-tiles-j 0 --right --blend /home/bbpcave/sharedconfig/calibration/BlendImage_1_T-prewarped.png --blend-after-warp
    # DP-2 (LEFT EYE, RIGHT SIDE)
    /home/bbpcave/bin/vwbc2 -km  --adapter 29 --screen-width 4096 --screen-height 2160 --mullion-width 0 --mullion-height 0 --warp /home/bbpcave/sharedconfig/calibration/QuadMesh_1.map --num-tiles-width 2 --num-tiles-height 1 --mesh-tiles-i 1 --mesh-tiles-j 0 --right --blend /home/bbpcave/sharedconfig/calibration/BlendImage_1_T-prewarped.png --blend-after-warp
    # DP-4 (LEFT EYE, LEFT SIDE)
    /home/bbpcave/bin/vwbc2 -km --adapter 30 --screen-width 4096 --screen-height 2160 --mullion-width 0 --mullion-height 0 --warp /home/bbpcave/sharedconfig/calibration/QuadMesh_1.map --num-tiles-width 2 --num-tiles-height 1 --mesh-tiles-i 0 --mesh-tiles-j 0 --left --blend /home/bbpcave/sharedconfig/calibration/BlendImage_1_B-prewarped.png --blend-after-warp
    # DP-6 (RIGHT EYE, LEFT SIDE)
    /home/bbpcave/bin/vwbc2 --adapter 31 --screen-width 4096 --screen-height 2160 --mullion-width 0 --mullion-height 0 --warp /home/bbpcave/sharedconfig/calibration/QuadMesh_1.map --num-tiles-width 2 --num-tiles-height 1 --mesh-tiles-i 0 --mesh-tiles-j 0 --left --blend /home/bbpcave/sharedconfig/calibration/BlendImage_1_B-prewarped.png --blend-after-warp
}


while getopts ":t:c" opt; do
    case ${opt} in
        t ) target=$OPTARG
            if [[  ! $target =~  ^[1-8]$ ]]
            then
                echo "You have only 8 GPUs/projectors in this config, which are 1-indexed "
                exit 1
            fi
        ;;
        c ) clear_enabled=true
        ;;
        \? ) echo "Usage: cmd [-t]"; exit 1
        ;;
        : )  echo "Missing param to $OPTARG";  exit 1
        ;;
    esac
done

if  [ "$target" ]; then
    first_projector_dpy=$(( (target -1) * 4))
    if [[ $clear_enabled ]]
    then
        echo "Clear action is deprecated with this script"
        exit 1
    fi
    projector$target
    echo "*** METAMODE REFRESH on $first_projector_dpy"
    /home/bbpcave/bin/vwbc2 -a $first_projector_dpy --refresh
else
    if [[ $clear_enabled ]]
    then
        echo "Clear action is deprecated with this script"
        exit 1
    fi
    for (( index=1; index<9; index=index+1 ))
    do
        projector$index &
    done
    wait
    for (( index=0; index<8; index=index+1 ))
    do
        echo "*** METAMODE REFRESH"
        /home/bbpcave/bin/vwbc2 -a $(( index * 4)) --refresh &
    done
    wait
fi
