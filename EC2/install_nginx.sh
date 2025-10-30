#!/bin/bash
sudo apt-get update -y
sudo apt-get install nginx -y
sudo systemctl start nginx
sudo systemctl enable nginx
echo "<h1>NGINX has been installed in the EC2 instance</h1>" | sudo tee /var/www/html/index.html

