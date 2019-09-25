#!/bin/bash

deploy() {
    echo "deploy"
}

init() {
    echo "init"
}

if [ "$1" = "deploy" -o "$1" = "d" ]; then
    deploy
elif [ "$1" = "init" -o "$1" = "i" ; then
    init
fi
