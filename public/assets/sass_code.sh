#!/usr/bin/env bash

arg_dir=$1
files=./style/scss/*
outdir=./style/css/
#excluded=
#getFileName(){
#    
#}
#isExcluded(){
#
#}
if [ -n "$arg_dir" ];then
    files=${arg_dir%%/}/scss/*.scss
fi
echo "Compiling sass files in $files"
for file in $files; do
    # remove base path
    filename="${file##*/}"
    name="${filename%.scss}"
    if [[ "$name" == "lib" ]]; then
        echo "skipping lib"
    else
        echo "compiling $name"
        output="${outdir}${filename%.scss}.css"
        echo "$file => $output"
        sass $file $output --no-source-map
    fi
    
done