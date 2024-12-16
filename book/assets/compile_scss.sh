#!/usr/bin/env bash
folder=${0%/*}
RESET="\033[0m"
INFO="\033[38;5;14m"
SUCCESS="\033[38;5;10m"
input_arg=app
output_arg=app
compile(){    
    files=${folder}/${1%%/}/scss/*.scss
    compiled="${folder}/${input_arg}"
    # echo "input: $folder output dir: $compiled"
    for f in $files; do        
        fn=${f##*/}
#        echo $f $fn
        name="${fn%.scss}"
        # check for underscore
        if [[ $name != _* ]];
        then
            echo -e "${INFO}> compiling $name  ${RESET}"
            output="${compiled}/${name}.css"
            sass $f $output --no-source-map
            echo -e "${SUCCESS}-> ${output}${RESET}"
        fi
    done
}
#input directory arg
if [ -n "$1" ];then
    input_arg=${1}
fi
# output directory arg
if [[ -n "$2" ]]; then
    output_arg=$2
fi
compile $input_arg $output_arg