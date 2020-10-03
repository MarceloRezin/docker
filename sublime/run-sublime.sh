#!/bin/bash

xhost +

LINHAS=$(docker ps -a -f "name=sublime" | wc -l)
if ((LINHAS > 1))
then
    docker start sublime
else
    docker run --name sublime -u `id -u $USER` --net=host -e DISPLAY=$DISPLAY -v $HOME/projetos:/home/exports -v /tmp/.X11-unix:/tmp/.X11-unix sublime
fi

