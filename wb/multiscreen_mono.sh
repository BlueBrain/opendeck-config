#!/bin/bash
my_dir="$(dirname "$0")"

source "$my_dir"/setenv.sh
source "$my_dir"/clear.sh

#source "$my_dir"/prepare_blending.sh

clear_wb

# PROJ 1
~/bin/vwbc --adapter 0 --screen-width 2160 --screen-height 4096 --mullion-width -530 --mullion-height -4770 --warp /home/bbpcave/sharedconfig/calibration/QuadMesh_2.map --num-tiles-width 7 --num-tiles-height 2 --mesh-tiles-i 0 --mesh-tiles-j 0 --top --blend /home/bbpcave/sharedconfig/calibration/BlendImage_2_T-prewarped.png --blend-after-warp
~/bin/vwbc --adapter 1 --screen-width 2160 --screen-height 4096 --mullion-width -530 --mullion-height -4770 --warp /home/bbpcave/sharedconfig/calibration/QuadMesh_2.map --num-tiles-width 7 --num-tiles-height 2 --mesh-tiles-i 0 --mesh-tiles-j 0 --bottom --blend /home/bbpcave/sharedconfig/calibration/BlendImage_2_B-prewarped.png --blend-after-warp

# PROJ 2
~/bin/vwbc --adapter 3 --screen-width 2160 --screen-height 4096 --mullion-width -530 --mullion-height -4770 --warp /home/bbpcave/sharedconfig/calibration/QuadMesh_3.map --num-tiles-width 7 --num-tiles-height 2 --mesh-tiles-i 1 --mesh-tiles-j 0 --bottom --blend /home/bbpcave/sharedconfig/calibration/BlendImage_3_B-prewarped.png --blend-after-warp
~/bin/vwbc --adapter 2 --screen-width 2160 --screen-height 4096 --mullion-width -530 --mullion-height -4770 --warp /home/bbpcave/sharedconfig/calibration/QuadMesh_3.map --num-tiles-width 7 --num-tiles-height 2 --mesh-tiles-i 1 --mesh-tiles-j 0 --top --blend /home/bbpcave/sharedconfig/calibration/BlendImage_3_T-prewarped.png --blend-after-warp

# PROJ 3
~/bin/vwbc --adapter 4 --screen-width 2160 --screen-height 4096 --mullion-width -530 --mullion-height -4770 --warp /home/bbpcave/sharedconfig/calibration/QuadMesh_4.map --num-tiles-width 7 --num-tiles-height 2 --mesh-tiles-i 2 --mesh-tiles-j 0 --top --blend /home/bbpcave/sharedconfig/calibration/BlendImage_4_T-prewarped.png --blend-after-warp
~/bin/vwbc --adapter 5 --screen-width 2160 --screen-height 4096 --mullion-width -530 --mullion-height -4770 --warp /home/bbpcave/sharedconfig/calibration/QuadMesh_4.map --num-tiles-width 7 --num-tiles-height 2 --mesh-tiles-i 2 --mesh-tiles-j 0 --bottom --blend /home/bbpcave/sharedconfig/calibration/BlendImage_4_B-prewarped.png --blend-after-warp

# PROJ 4
~/bin/vwbc --adapter 6 --screen-width 2160 --screen-height 4096 --mullion-width -530 --mullion-height -4770 --warp /home/bbpcave/sharedconfig/calibration/QuadMesh_5.map --num-tiles-width 7 --num-tiles-height 2 --mesh-tiles-i 3 --mesh-tiles-j 0 --top --blend /home/bbpcave/sharedconfig/calibration/BlendImage_5_T-prewarped.png --blend-after-warp
~/bin/vwbc --adapter 7 --screen-width 2160 --screen-height 4096 --mullion-width -530 --mullion-height -4770 --warp /home/bbpcave/sharedconfig/calibration/QuadMesh_5.map --num-tiles-width 7 --num-tiles-height 2 --mesh-tiles-i 3 --mesh-tiles-j 0 --bottom --blend /home/bbpcave/sharedconfig/calibration/BlendImage_5_B-prewarped.png --blend-after-warp

# PROJ 5
~/bin/vwbc --adapter 8 --screen-width 2160 --screen-height 4096 --mullion-width -530 --mullion-height -4770 --warp /home/bbpcave/sharedconfig/calibration/QuadMesh_6.map --num-tiles-width 7 --num-tiles-height 2 --mesh-tiles-i 4 --mesh-tiles-j 0 --top --blend /home/bbpcave/sharedconfig/calibration/BlendImage_6_T-prewarped.png --blend-after-warp
~/bin/vwbc --adapter 9 --screen-width 2160 --screen-height 4096 --mullion-width -530 --mullion-height -4770 --warp /home/bbpcave/sharedconfig/calibration/QuadMesh_6.map --num-tiles-width 7 --num-tiles-height 2 --mesh-tiles-i 4 --mesh-tiles-j 0 --bottom --blend /home/bbpcave/sharedconfig/calibration/BlendImage_6_B-prewarped.png --blend-after-warp

# PROJ 6
~/bin/vwbc --adapter 10 --screen-width 2160 --screen-height 4096 --mullion-width -530 --mullion-height -4770 --warp /home/bbpcave/sharedconfig/calibration/QuadMesh_7.map --num-tiles-width 7 --num-tiles-height 2 --mesh-tiles-i 5 --mesh-tiles-j 0 --top --blend /home/bbpcave/sharedconfig/calibration/BlendImage_7_T-prewarped.png --blend-after-warp
~/bin/vwbc --adapter 11 --screen-width 2160 --screen-height 4096 --mullion-width -530 --mullion-height -4770 --warp /home/bbpcave/sharedconfig/calibration/QuadMesh_7.map --num-tiles-width 7 --num-tiles-height 2 --mesh-tiles-i 5 --mesh-tiles-j 0 --bottom --blend /home/bbpcave/sharedconfig/calibration/BlendImage_7_B-prewarped.png --blend-after-warp

# PROJ 7
~/bin/vwbc --adapter 12 --screen-width 2160 --screen-height 4096 --mullion-width -530 --mullion-height -4770 --warp /home/bbpcave/sharedconfig/calibration/QuadMesh_8.map --num-tiles-width 7 --num-tiles-height 2 --mesh-tiles-i 6 --mesh-tiles-j 0 --top --blend /home/bbpcave/sharedconfig/calibration/BlendImage_8_T-prewarped.png --blend-after-warp
~/bin/vwbc --adapter 13 --screen-width 2160 --screen-height 4096 --mullion-width -530 --mullion-height -4770 --warp /home/bbpcave/sharedconfig/calibration/QuadMesh_8.map --num-tiles-width 7 --num-tiles-height 2 --mesh-tiles-i 6 --mesh-tiles-j 0 --bottom --blend /home/bbpcave/sharedconfig/calibration/BlendImage_8_B-prewarped.png --blend-after-warp
