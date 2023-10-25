# Use a base image with Ubuntu
FROM ubuntu:latest

# Set environment variables to non-interactive (this prevents some prompts)
ENV DEBIAN_FRONTEND=non-interactive

# Install prerequisites
RUN apt update -y && \
    apt upgrade -y && \
    apt install -y git python3-pip python3-venv python3-neovim python3-jedi zsh nodejs npm fzf neovim tree curl && \
    npm install -g n && \
    n stable && \
    mkdir -p ~/.config/nvim/autoload && \
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh) \"\" --unattended" && \
    chsh -s $(which zsh) && \
    apt install -y powerline fonts-powerline zsh-syntax-highlighting && \
    git config --global user.name "Amir" && \
    git config --global user.email "harvard.amir@gmail.com" && \
    ssh-keygen -b 4096 -f /root/.ssh/id_rsa -N ""

# Download and move config files directly to container
ADD https://raw.githubusercontent.com/amirrouh/.dotfiles/master/.vimrc /root/.config/nvim/init.vim
ADD https://raw.githubusercontent.com/amirrouh/.dotfiles/master/.tmux.conf /root/.tmux.conf
ADD https://raw.githubusercontent.com/amirrouh/.dotfiles/master/.zshrc /root/.zshrc

# Set the default shell to zsh
SHELL ["/usr/bin/zsh", "-c"]
