FROM ubuntu:16.04
MAINTAINER yukke42


# add the japanese server
# RUN sed -i.bak -e "s%http://archive.ubuntu.com/ubuntu/%http://ftp.jaist.ac.jp/pub/Linux/ubuntu/%g" \
#           /etc/apt/sources.list


RUN apt-get update && apt-get install -y \
    sudo \
    vim \
    locate \
    language-pack-ja


# Add basic user
ENV USERNAME yukke
RUN useradd -m $USERNAME -s /bin/bash && \
    echo "$USERNAME:$USERNAME" | chpasswd && \
    gpasswd -a $USERNAME sudo && \
    echo "$USERNAME ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers.d/$USERNAME && \
    chmod 0440 /etc/sudoers.d/$USERNAME

# copy dotfiles
COPY .bashrc /home/$USERNAME/.bashrc
RUN  chown $USERNAME:$USERNAME /home/$USERNAME/*

# update locate database
RUN updatedb

# change user
USER yukke
