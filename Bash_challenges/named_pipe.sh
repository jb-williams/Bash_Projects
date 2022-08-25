#!/usr/bin/env bash

# func mimics data stream, prints out either RED or BLUE at random 100 times on new line
# how many times was RED printed, how many times was BLUE printed

## wernt suppose to change this , though I(T4L) did but superficually not functionally
Stream() {
    Tokens=('RED' 'BLUE')
    for (( i = 0; i < 100; ++i )); {
        printf '%s\n' ${Tokens[RANDOM % 2]}
    }
}

# Create a FIFO (AKA: names pipe)
[ -p temp.fifo ] || mkfifo temp.fifo

# Start sending the data to the FIFO
Stream >> temp.fifo &

# Read from and process the FIFO, line-by-line
while read; do
    case $REPLY in
        RED)
            (( RedCount++ )) ;;
        BLUE)
            (( BlueCount++ )) ;;
    esac

    printf '\rRed: %-3d     Blue: %-3d' $RedCount $BlueCount

    # because otherwise it would run too fast to notice it's live
    sleep 0.01s
done < temp.fifo

printf '\n'
