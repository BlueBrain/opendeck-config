#!/bin/bash
export LD_LIBRARY_PATH=/home/bbpcave/bin/lib/:$LD_LIBRARY_PATH
export DISPLAY=:0

for i in {1..8}
do
    echo Blending: /home/bbpcave/sharedconfig/calibration/BlendImage_${i}-prewarped.png
    /home/bbpcave/bin/prepareblendimgs.pl /home/bbpcave/sharedconfig/calibration/BlendImage_${i}-prewarped.png &
done
wait
echo "Blends prepared"
