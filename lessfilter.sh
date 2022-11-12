#! /usr/bin/env sh
# this is a example of .lessfilter, you can change it
mime=$(file -bL --mime-type "$1")
category=${mime%%/*}
kind=${mime##*/}
if [ -d "$1" ]; then
    exa --color always --icons -1abh -s name --git --sort date --group-directories-first "$1"
elif [ "$category" = image ]; then
    chafa "$1"
    exiftool "$1"
elif [ "$kind" = vnd.openxmlformats-officedocument.spreadsheetml.sheet ] || \
    [ "$kind" = vnd.ms-excel ]; then
    in2csv "$1" | xsv table | bat -ltsv --color=always
elif [ "$category" = text ]; then
    bat --color=always -pp "$1"
else
    lesspipe.sh "$1" | bat --color=always
fi
