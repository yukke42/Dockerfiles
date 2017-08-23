FROM ubuntu:16.04
MAINTAINER yukke42


RUN apt-get update && apt-get install -y \
    sudo \
    vim \
    locate \
    language-pack-ja

# Add basic user
ENV USERNAME yukke
ENV HOME /home/$USERNAME
RUN useradd -m $USERNAME -s /bin/bash && \
    echo "$USERNAME:$USERNAME" | chpasswd && \
    gpasswd -a $USERNAME sudo && \
    echo "$USERNAME ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers.d/$USERNAME && \
    chmod 0440 /etc/sudoers.d/$USERNAME

# copy dotfiles
COPY .bashrc /home/$USERNAME/.bashrc
RUN  chown $USERNAME:$USERNAME $HOME/.bashrc

# update locate database
RUN updatedb

# change user
USER $USERNAME
WORKDIR $HOME
