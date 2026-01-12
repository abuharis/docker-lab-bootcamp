
#!/bin/bash
set -e

echo "Updating system..."
sudo apt update -y
sudo apt upgrade -y

echo "Installing Docker..."
curl -fsSL https://get.docker.com | sh

echo "Adding ubuntu user to docker group..."
sudo usermod -aG docker ubuntu

echo "Enabling and starting Docker service..."
sudo systemctl enable docker
sudo systemctl start docker

echo "Docker installation complete. Version:"
docker --version