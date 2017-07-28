FROM ubuntu
MAINTAINER yukke42


# install mysql non-interactively
ENV MYSQL_PASSWD a
RUN echo "mysql-server mysql-server/root_password password $MYSQL_PASSWD" | debconf-set-selections
RUN echo "mysql-server mysql-server/root_password_again password $MYSQL_PASSWD" | debconf-set-selections

RUN apt-get update && apt-get install -y \
    sudo \
    locate \
    tzdata \
    language-pack-ja \
    vim \
    build-essential \
    mysql-server \
    libmysqlclient-dev



# Add basic user
ENV USERNAME yukke
RUN useradd -m $USERNAME -s /bin/bash && \
    echo "$USERNAME:$USERNAME" | chpasswd && \
    gpasswd -a $USERNAME sudo && \
    echo "$USERNAME ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers.d/$USERNAME && \
    chmod 0440 /etc/sudoers.d/$USERNAME

# init dotfiles
# RUN  echo "[client]\nuser=root\npassword='$MYSQL_PASSWD'" > /home/$USERNAME/.my.cnf
COPY .bashrc /home/$USERNAME/.bashrc
RUN  chown -R $USERNAME:$USERNAME /home/$USERNAME/

# time zone setting
RUN ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

# update locate database
RUN updatedb

# change user
USER yukke
