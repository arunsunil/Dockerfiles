FROM ubuntu:18.04

RUN apt update
RUN apt install -y vim nano wget curl tmux git

CMD ["/bin/bash"]
