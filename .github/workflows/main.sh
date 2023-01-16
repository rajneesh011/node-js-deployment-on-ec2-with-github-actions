#!/bin/bash
sudo apt install apache2 curl -y
sudo curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
sudo source ~/.bashrc   
sudo nvm install node 14
sudo npm install pm2 -g
sudo cd /var/www/html
sudo git pull origin main
sudo pm2 start "node app.js"
