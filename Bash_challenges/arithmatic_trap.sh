#!/usr/bin/env bash

# result is 522 when it should be 536

declare -i Total=0
while read Nr; do
    Total+=$Nr
done <<-EOF
  # 102
  # 071
  # 210
  # 153
EOF

printf 'Total: %d\n' $Total

## '##0' removes leading 0's
while read; do
    (( Total += ${REPLY##0} ))
done <<-EOF
    102
    071
    210
    153
EOF

printf 'Total: %d\n' $Total

# '10#' converts to base10 in shell, like '2#' converts to binary in shell
while read; do
    (( Total += 10#$REPLY ))
done <<-EOF
    102
    071
    210
    153
EOF

printf 'Total: %d\n' $Total
