#!/bin/bash
#set -x

systemctl stop display-manager
    
echo 0 > /sys/class/vtconsole/vtcon0/bind
echo 0 > /sys/class/vtconsole/vtcon1/bind

# Unbind EFI Framebuffer
echo efi-framebuffer.0 > /sys/bus/platform/drivers/efi-framebuffer/unbind  &

# Unload NVIDIA kernel modules
modprobe -r nvidia_drm nvidia_modeset nvidia_uvm nvidia


for BUS_ID in {1b,1c,1d,1e,3d,3f,40,41}; do 

  for FUNCTION_ID in {0..3}; do 
  echo Detaching device ${BUS_ID}_${FUNCTION_ID} -n
      virsh nodedev-detach pci_0000_${BUS_ID}_00_${FUNCTION_ID}
  done
done


modprobe vfio-pci

iptables -t nat -I PREROUTING 1 -p udp --dport 5001 -j DNAT --to 192.168.1.11:5001 -m comment --comment "VRPN VM port forwarding"
iptables -t nat -I PREROUTING 1 -p udp --dport 5002 -j DNAT --to 192.168.1.11:5002 -m comment --comment "VRPN VM port forwarding"
iptables -I FORWARD  -d  192.168.1.11 -j ACCEPT
