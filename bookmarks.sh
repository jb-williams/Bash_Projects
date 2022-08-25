#!/usr/bin/env bash

set -eo pipefail
file="/path/to/a/bookmarks.md"
#after cat(which changed from grep https) | awk '{print $1}' | sed -e 's/.........//' -e 's/"//' 
bkmk="$(cat $file | fzf --prompt="Open : " --border --margin=5% --color=dark --height=100% --reverse --header=" BOOKMARKS " --header-first)"


if [[ $bkmk ]]
then
    devour flatpak run io.gitlab.librewolf-community "$bkmk"
else
    exit
fi
