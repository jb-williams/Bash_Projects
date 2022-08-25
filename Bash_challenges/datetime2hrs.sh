#!/usr/bin/env bash

# bash 4
# print date time in any format but display the time 2hrs before what it is currently
# the -v assigns printf to a variable

printf -v Seconds '%(%s)T\n' -1 # -1 current time(implied) -2 ?? 0+ ?? 0 is epoch
## 3600 sec = 1hr
printf '%(%F %H:%M)T\n' $(( Seconds - 7200 ))

# bash 5
printf '%(%F %H:%M)T\n' $(( EPOCHSECONDS - 7200 ))
