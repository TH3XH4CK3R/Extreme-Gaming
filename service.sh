#!/system/bin/sh
# Do NOT assume where your module will be located.
# ALWAYS use $MODDIR if you need to know where this script
# and module is placed.
# This will make sure your module will still work
# if Magisk change its mount point in the future
MODDIR=${0%/*}
write /sys/module/lazyplug/parameters/nr_possible_cores 8
write /dev/cpuset/foreground/cpus 0-3,4-7
write /dev/cpuset/foreground/boost/cpus 4-7
write /dev/cpuset/top-app/cpus 0-7
write /sys/class/kgsl/kgsl-3d0/devfreq/governor msm-adreno-tz
write /sys/module/adreno_idler/parameters/adreno_idler_active 0
# This script will be executed in late_start service mode









