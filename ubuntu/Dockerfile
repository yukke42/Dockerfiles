FROM ubuntu:16.04
MAINTAINER yukke42

# ダウンロードするサーバーを日本ミラーに変更する
RUN sed -i.backup "s%http://archive.ubuntu.com/ubuntu/%http://ftp.jaist.ac.jp/pub/Linux/ubuntu/%g" /etc/apt/sources.list

RUN apt-get update && apt-get install -y \
    sudo \
    tzdata \
    vim \
    locate \
    language-pack-ja \
    git

RUN apt-get update && apt-get install -y \
    build-essential

# Add basic user
ENV USERNAME yukke42
ENV HOME /home/$USERNAME
RUN useradd -m $USERNAME -s /bin/bash && \
    echo "$USERNAME:$USERNAME" | chpasswd && \
    gpasswd -a $USERNAME sudo && \
    echo "$USERNAME ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers.d/$USERNAME && \
    chmod 0440 /etc/sudoers.d/$USERNAME

# update locate database
RUN updatedb

# copy dotfiles
COPY .bashrc /home/$USERNAME/.bashrc
RUN  chown $USERNAME:$USERNAME $HOME/.bashrc

# change user
USER $USERNAME
WORKDIR $HOME
