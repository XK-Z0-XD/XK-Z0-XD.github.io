#!/usr/bin/env bash

arg_dir=$1

files=./style/scss/*
outdir=./style/css/
if [ -n "$arg_dir" ];then
    files=${arg_dir%%/}/scss/*.scss
fi
echo "Compiling sass files in $files"
for file in $files; do
    # remove base path
    filename="${file##*/}"
    name="${filename%.scss}"
#    echo "$filename"
    output="${outdir}${filename%.scss}.css"
    echo "$file => $output"
    sass $file $output --no-source-map
done