#!/system/bin/sh
# Do NOT assume where your module will be located.
# ALWAYS use $MODDIR if you need to know where this script
# and module is placed.
# This will make sure your module will still work
# if Magisk change its mount point in the future
MODDIR=${0%/*}
setprop ro.vendor.qti.config.zram true
write /proc/sys/vm/page-cluster 0
write /sys/block/zram0/max_comp_streams 4
# This script will be executed in post-fs-data mode
