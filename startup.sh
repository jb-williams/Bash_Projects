#!/bin/bash
set -eo pipefail

function run {
 if ! pgrep "$1" ;
  then
    "$@"&
  fi
}

run keepassxc &
run alacritty &
