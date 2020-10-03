FROM ubuntu:latest

RUN apt update && apt install -y wget gnupg2

RUN wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | apt-key add -

RUN apt install -y apt-transport-https

RUN echo "deb https://download.sublimetext.com/ apt/stable/" | tee /etc/apt/sources.list.d/sublime-text.list

RUN apt update && apt install -y sublime-text

CMD subl
