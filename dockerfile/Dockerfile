FROM ubuntu:22.04


RUN apt update && \
    apt-get update && \
		apt install -y curl git ripgrep tar unzip vim wget build-essential tmux

RUN wget https://github.com/neovim/neovim/releases/download/v0.10.0/nvim-linux64.tar.gz && \
    tar -zxvf nvim-linux64.tar.gz && \
    mv nvim-linux64/bin/nvim usr/bin/nvim && \
    mv nvim-linux64/lib/nvim usr/lib/nvim && \
    mv nvim-linux64/share/nvim/ usr/share/nvim && \
    rm -rf nvim-linux64 && \
		rm nvim-linux64.tar.gz

RUN apt install -y locales && \
    locale-gen ja_JP.UTF-8

RUN git clone https://github.com/ta1tti/dotfiles.git dotfiles

RUN rm ~/.bashrc && \
		rm -rf ~/.config/nvim && \
		mkdir -p ~/.config/nvim && \
		ln -s /dotfiles/.bashrc ~/.bashrc && \
		ln -s /dotfiles/.bash_aliases ~/.bash_aliases && \
		ln -s /dotfiles/.config/nvim/* ~/.config/nvim && \
		ln -sf /dotfiles/.bash_boot_scripts ~/.bash_boot_scripts && \
		ln -sf /dotfiles/.tmux.conf ~/.tmux.conf

RUN nvim +:q
