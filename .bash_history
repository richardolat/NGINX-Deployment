sudo apt update && sudo apt upgrade -y
sudo apt install -y nginx
sudo systemctl start nginx
sudo systemctl enable nginx
cd /var/www/html
sudo nano index.html
ls
cat index.nginx-debian.html 
sudo rm index.nginx-debian.html 
sudo vim index.html
cd ..
clear
sudo systemctl restart nginx
