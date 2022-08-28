#!/usr/bin/env bash
# I tend to default to Markdown Syntax but this script displays a menu of urls that
# keep in a markdown doc. Then it opens that url with the browser I'm using that that time

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
