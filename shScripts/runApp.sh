#! /bin/bash
cp /var/hello_world/hello_world.service /etc/systemd/system
##add exceutable permissions to express app
sudo chmod +x /var/hello_world/app.js
##Allows any users to write the app folder. Useful if using fs within the app
sudo chmod go+w /var/hello_world
##Launches the express app
sudo sysctl daemon-reload
sudo sysctl start hello_world
sudo sysctl enable hello_world