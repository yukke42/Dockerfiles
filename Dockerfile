FROM ubuntu
MAINTAINER yukke42

# # copy japanese ver.
# COPY ./sources.list /etc/apt/sources.list
# RUN  echo "deb https://apt.dockerproject.org/repo ubuntu-xenial main" \
#       > /etc/apt/sources.list.d/docker.list

# add the japanese server
# RUN sed -i.bak -e "s%http://archive.ubuntu.com/ubuntu/%http://ftp.jaist.ac.jp/pub/Linux/ubuntu/%g" \
#           /etc/apt/sources.list


RUN apt-get update && apt-get install -y \
    sudo \
    vim \
    locate \
    language-pack-ja
    # xterm \
    # x11-xserver-utils
    # git

Add basic user
ENV USERNAME yukke
RUN useradd -m $USERNAME -s /bin/bash && \
    echo "$USERNAME:$USERNAME" | chpasswd && \
    gpasswd -a $USERNAME sudo && \
    echo "$USERNAME ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers.d/$USERNAME && \
    chmod 0440 /etc/sudoers.d/$USERNAME

# copy basic settings
COPY ../dotfiles/.bashrc /home/$USERNAME/.bashrc
RUN  chown $USERNAME:$USERNAME /home/$USERNAME/.bashrc
# COPY .profile /home/$USERNAME/.profile
# RUN  chown $USERNAME:$USERNAME /home/$USERNAME/.profile


# update locate database
RUN updatedb

# Change user
USER yukke
