#!/usr/bin/env bash

# given list of numbers, determine how many times num has increased

Nums='199 200 208 210 200 207 240 269 260 263'

OldNum=0
for Num in $Nums; {
    (( Num > OldNum )) && let Incs++

    OldNum=$Num
}

printf 'Total Increases: %d\n' $(( Incs - 1))
