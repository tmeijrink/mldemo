#!/bin/sh

sudo npm -g install bower
sudo npm -g install gulp
sudo npm -g install forever

cd ..
npm install
bower install
gulp build

cd /etc
sudo ln -s /space/projects/tickler.live/etc/prod tickler
cd /etc/init.d
sudo ln -s /space/projects/tickler.live/etc/init.d/node-express-service tickler
sudo chkconfig --add tickler
sudo chkconfig --levels 2345 tickler on
