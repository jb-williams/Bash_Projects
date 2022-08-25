#!/usr/bin/env bash

# find the horizontal position and depth then plutiply by together
# forward 5
# down 5
# forward 8
# up 3
# down 8
# forward 2

# forward 5 adds 5 to horiz total of 5
# down 5 add 5 to depth total of 5
# up 3 subtract 5 to depth total of 2
# down 8 add 8 to depth total of 10
# forward 2 adds 2 to horiz of total 15
# multiply both totals together

while read Position Number; do
    case $Position in
        forward)
            let Forward+=$Number ;;
        down)
            let Depth+=$Number ;;
        up)
            let Depth-=Number
    esac

done <<-EOF
    forward 5
    down 5
    forward 8
    up 3
    down 8
    forward 2
EOF

printf 'Result: %d\n' $((Depth * Forward))
