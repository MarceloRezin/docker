#!/bin/bash

xhost +

LINHAS=$(docker ps -a -f "name=gimp" | wc -l)
if ((LINHAS > 1))
then
    docker start gimp
else
    docker run --name gimp --net=host -e DISPLAY=$DISPLAY -v ~/Imagens:/home/imagens -v /tmp/.X11-unix:/tmp/.X11-unix gimp
fi

