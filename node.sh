#!/bin/bash
NODE_PATH='/home/ubuntu/node'
USER='root'
USERGROUP='root'
echo "Start deployment"
cd $WEB_PATH
forever stop git.js
echo 'stop git.js'
echo "pulling source code..."
git reset --hard origin/master
git clean -f
git pull
git checkout master
echo "changing permissions..."
chown -R $USER:$USERGROUP $WEB_PATH
echo "Finished."
forever start git.js
echo 'start git.js'
