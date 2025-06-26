#!/bin/bash

# Обновление системы
sudo apt-get update && sudo apt-get upgrade -y

# Установка зависимостей
sudo apt install -y screen curl iptables build-essential git wget lz4 jq make gcc nano \
automake autoconf tmux htop nvme-cli libgbm1 pkg-config libssl-dev libleveldb-dev \
tar clang bsdmainutils ncdu unzip python3 python3-pip python3-venv python3-dev

# Повторное обновление
sudo apt-get update

# Установка Node.js 22
curl -fsSL https://deb.nodesource.com/setup_22.x | sudo -E bash -
sudo apt-get install -y nodejs

# Проверка версий
node -v
sudo npm install -g yarn
yarn -v

# Альтернативная установка yarn
curl -o- -L https://yarnpkg.com/install.sh | bash

# Добавление yarn в PATH
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
echo 'export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"' >> ~/.bashrc
source ~/.bashrc

# Клонирование репозитория
git clone https://github.com/gensyn-ai/rl-swarm
