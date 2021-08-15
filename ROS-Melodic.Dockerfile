FROM ubuntu:18.04

RUN apt update
RUN apt install -y vim nano wget curl tmux git

ENV HOME /root
WORKDIR ${HOME}

RUN git clone https://github.com/arunsunil/InstallScripts.git --branch=master
RUN cd InstallScripts/ && ./install_ros_melodic.sh

CMD ["/bin/bash"]

