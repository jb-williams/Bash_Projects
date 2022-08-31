#!/bin/bash

grep -q closed /proc/acpi/button/lid/LID/state
if [ $? = 0 ]
then
    ## laptop lot lid is closed then
    grep -q 0 /sys/class/power_supply/AC/online
    if [ $? = 0 ]
    then
        ## laptop is not plugged in, go to sleep
        systemctl suspend
    fi
fi
