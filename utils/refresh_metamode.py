#!/usr/bin/env python3

import subprocess
import os
import argparse
import time

parser = argparse.ArgumentParser(description='Process some integers.')
parser.add_argument('-p', dest='projectors', type=int, nargs='+',
                    help='projector number. Wall on the left = 1. Floor = 8')
projector_list = parser.parse_args().projectors


def apply_metamode(index):
    print(f"*** Control screen index: {index} ")
    p = subprocess.Popen(
        f"nvidia-settings -c :0.{index} -q CurrentMetaMode", stdout=subprocess.PIPE, shell=True)
    out, err = p.communicate()
    metamode = out.decode().strip().split(":: ")[1]
    print(f'Executing: nvidia-settings -c  :0.{index} -a CurrentMetaMode="{metamode}"')

    c = subprocess.call(f'nvidia-settings -c  :0.{index} -a CurrentMetaMode="{metamode}"', shell=True)

    print(f"Exit code is {c}")


if os.system('systemctl is-active --quiet od_xorg-multi-qbs') == 0:
    print("od_xorg-multi-qbs is active. will apply nvidia-settings metamode")
    if projector_list:
        for e in projector_list:
            apply_metamode(e)
            time.sleep(2)
    else:
        for i in range(0, 8):
            apply_metamode(i)
            time.sleep(2)
elif os.system("systemctl is-active --quiet od_xorg-mosaic-qbs") == 0:
    print("od_xorg-mosaic-qbs is active. will apply vwbc2 --refresh")
    subprocess.call(
        'bash -c "source /home/bbpcave/config/wb/setenv.sh && /home/bbpcave/bin/vwbc2 -a 0 --refresh"', shell=True)
else:
    print("DID NOT REFRESH. X NOT RUNNING?")


# TODO
# LD_LIBRARY_PATH=/home/bbpcave/bin/lib/:$LD_LIBRARY_PAT DISPLAY=:0.0 ~bbpcave/config/utils/refresh_metamode.py
