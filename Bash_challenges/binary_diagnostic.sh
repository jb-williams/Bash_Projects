#!/usr/bin/env bash

# sub power consumption, use these binary numbs to gen new binary nums
# called gamma rate and epsilon rate. Power consumption can be found by multiplying them
## use gamma rate num 10110, or 22 in decimal
## use epsilon rate num 01001, or 9 in decimal
## multiplying them together you get consumption of 198

Data='00100 11110 10110 10111 10101 01111 00111 11100 10000 11001 00010 01010'
 for Number in $Data; {
     for ((Digit=0; Digit <= 4; Digit++)); {
         declare Column$Digit+=${Number:Digit:1}
     }
}

for Column in $Column0 $Column1 $Column2 $Column3 $Column4; {
    Ones=0
    Zeros=0
    for ((Digit=; Digit <= 4; Digit++)); {
        case ${Column:Digit:1} in
            0) let Zeros++ ;;
            1) let Ones++ ;;
        esac
    }

    if ((Zeros > Ones)); then
        GamaBin+=1
    else
        GammBin+=0
    fi

    if ((Zeros < Ones)); then
        EpsilonBin+=1
    else
        EpsilonBin+=0
    fi
}
#                       arithmetic expansion, converts to binary in shell
printf -v GammaDec '%d\n' $((2#$GammaBin))
printf -v EpsilonDec '%d\n' $((2#$EpsilonBin))
printf 'Result: %d\n' $((GammaDec * EpsilonDec))
