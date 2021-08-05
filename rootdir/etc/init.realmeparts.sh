#!/system/bin/sh
# Boost initialization script by @saurabhchardereal
# Based on work by @ronaxdevil

# If there is not a persist value, we need to set one
if [[ `getprop persist.realmeparts.gpu_profile` == "" ]]; then
    setprop persist.realmeparts.gpu_profile 0
fi

if [[ `getprop persist.realmeparts.cpu_profile` == "" ]]; then
    setprop persist.realmeparts.cpu_profile 0
fi

if [[ `getprop persist.realmeparts.battery_saver` == "" ]]; then
    setprop persist.realmeparts.battery_saver 0
fi
