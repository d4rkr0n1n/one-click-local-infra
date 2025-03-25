#!/bin/bash
echo
echo "Running setup_webserver.sh..."
echo
echo "Installing Apache Server..."
sudo apt-get install apache2 -y
echo "Installing Apache... done"
echo
echo "Updating index.html..."
sudo cp -f /tmp/index.html /var/www/html/index.html
echo "Updating index.html... done"
echo
echo "Enable and start Apache Server..."
sudo systemctl enable --now apache2
echo "Enable and start Apache... done"
echo
echo "Running setup_webserver.sh...done"