#/bin/sh

# Set up ubuntu server for websites' deployment

# Install all the stuff
sudo apt-get update
sudo apt-get install curl vim git npm docker docker-compose neovim snapd
# certbot
sudo snap install core; sudo snap refresh core
sudo ln -s /snap/bin/certbot /usr/bin/certbot

npm i -g yarn
yarn global add pm2
# nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash
# load nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
nvm install 14

# fetch my configs
