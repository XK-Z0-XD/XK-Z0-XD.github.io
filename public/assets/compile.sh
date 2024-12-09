#!/usr/bin/env bash

#args=("$1" "$2)
#inputDir=./style/scss/*
#files=./style/scss/*
#outputDir=./style/css/
#echo "$args"
#if [ -n "$1" ];then
#    fp=$1
#    files=${fp%%/}/scss/*.scss
#fi
#if [[ -n "$2" ]]; then
#    outputDir=$2
#fi
# process files
echo "Compiling files..."
#for file in $inputDir; do
#    #check for underscore
#    fn=
#done
sass ./style/scss/main.scss ./style/css/main.css --no-source-map;
