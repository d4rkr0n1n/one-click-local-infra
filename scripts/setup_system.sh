#!/bin/bash

echo
echo "Running setup_system.sh..."
echo
echo "Updating system..."
sudo apt-get update
echo "Updating system... done"
echo
echo "Upgrading system..."
sudo apt-get upgrade -y
echo "Upgrading system... done"
echo
echo "Running setup_system.sh... done"
echo