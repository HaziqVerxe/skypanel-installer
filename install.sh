#!/bin/bash

echo "🟦 SkyPanel Installer"
echo "-------------------------"

# Update system
sudo apt update -y && sudo apt upgrade -y

# Install dependencies
sudo apt install -y curl git docker.io docker-compose nodejs npm

# Clone SkyPanel repo
git clone https://github.com/SkyPanel-Project/SkyPanel.git

# Move into folder
cd SkyPanel

# Install backend
cd backend
npm install
cd ..

# Install frontend
cd frontend
npm install
cd ..

echo ""
echo "✅ SkyPanel installed! You can now configure and run the panel."
