#!/usr/bin/env bash
# cool array expansion, var A[every index]
A=('random text', 'and stuff', 'blah')
for Index in "${A[@]}"; {
    printf '%s\n' "$Index"
}
