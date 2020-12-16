FROM ubuntu:latest

RUN apt update

RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata

RUN apt update && apt install -y gimp

CMD gimp
