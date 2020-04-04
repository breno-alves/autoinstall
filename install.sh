#!/usr/bin/env bash

if [[ ! -d "Softwares" &&  ! -d "Scripts" ]]; then
    echo "Software or Script folder missing!"
    exit 1
fi

declare -a arr
arr=$(ls -A1 Softwares)

RET=0
for i in ${arr[@]}
do
    sudo bash "Softwares/$i" >> $RET
    if [[ ! $RET ]]; then
        echo -e "\e[91mError in $(basename $i .sh)"
        exit 0
    else
        echo -e "\e[0m\e[92mSuccefully installed $(basename $i .sh)"
    fi
done
