#!/usr/bin/env bash

#echo "${args[0]}"

RESET="\033[0m"
INFO="\033[38;5;14m"
inputDir=./style/scss
outputDir=./style/css
files=./style/scss/*
get_dir(){
    input=$1
    fileDir=${input%%/}/*.scss
    echo $fileDir
}

compile(){
    files=${1%%/}/*.scss
    for f in $files; do
        fn="${f##*/}"
        name="${fn%.scss}"
        # check for underscore
        if [[ $name != _* ]];
        then
            echo "compiling $name"
            output="${outputDir}/${name}.css"
            sass $f $output --no-source-map
        fi
    done
}
if [ -n "$1" ];then
    fp=$1
    files=${fp%%/}/*.scss
fi

compile $inputDir
if [[ -n "$2" ]]; then
    outputDir=$2
fi
# process files
#echo "Compiling files..."
#for file in $inputDir; do
#    #check for underscore
#    fn=
#done
#sass ./style/scss/main.scss ./style/css/main.css --no-source-map;
