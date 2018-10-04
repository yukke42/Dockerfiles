FROM ubuntu:18.04

# ダウンロードするサーバーを日本ミラーに変更する
RUN sed -i.backup "s%http://archive.ubuntu.com/ubuntu/%http://ftp.jaist.ac.jp/pub/Linux/ubuntu/%g" /etc/apt/sources.list

# TimeZoneをJSTに変更
RUN apt-get update && \
    apt-get install -y tzdata && \
    rm -rf /var/lib/apt/lists/* && \
    echo "Asia/Tokyo" > /etc/timezone && \
    ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
    dpkg-reconfigure -f noninteractive tzdata

RUN apt-get update && apt-get install -y \
    sudo \
    vim \
    locate \
    git \
    language-pack-ja \
    build-essential

# ユーザーの追加
ENV USERNAME yukke42
ENV HOME /home/$USERNAME
RUN useradd -m $USERNAME -s /bin/bash && \
    echo "$USERNAME:$USERNAME" | chpasswd && \
    gpasswd -a $USERNAME sudo && \
    echo "$USERNAME ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers.d/$USERNAME && \
    chmod 0440 /etc/sudoers.d/$USERNAME

# bash設定を導入
RUN git clone https://github.com/yukke42/dotfiles ~/.dotfiles && \
    cd ~/.dotfiles/BashOnUbuntu && \
    ./setup.sh && \
    . ~/.bash_profile

RUN updatedb
RUN chown -R $USERNAME:$USERNAME $HOME

USER $USERNAME
WORKDIR $HOME
