
# NGINX Deployment on Ubuntu - DevOps Stage 0

## Project Overview

This project demonstrates the process of installing and configuring **NGINX** on an **Ubuntu** server as part of the **HNG DevOps Internship**. The task involves setting up a basic **NGINX web server** and creating a custom **HTML page** to serve a personalized message. The project also includes configuring **security settings** to allow **HTTP traffic (Port 80)** securely.

## Technologies Used

- **Ubuntu 22.04 LTS** (or any compatible version)
- **NGINX** web server
- **AWS EC2** (for cloud hosting)
- **SSH** (to access the server)
- **Vim** (text editor for editing HTML)
- **UFW** (firewall for managing inbound traffic)
- **AWS Security Groups** (for managing access control)
- **GitHub** (optional for version control)

## Skills Acquired

- Installing and configuring **NGINX** on a Linux server
- **Basic server security** configuration using **AWS Security Groups** and **UFW**
- Modifying **HTML** content to create a custom webpage
- Configuring **AWS EC2** instance for **web hosting**
- Learning the fundamentals of **DevOps**, **cloud computing**, and **Linux server administration**

## Installation Guide

### Step 1: Launching an AWS EC2 Instance

1. **Create an AWS account** if you don't have one already.
2. **Launch an EC2 instance** with **Ubuntu 22.04 LTS**.
3. Ensure that the instance is set up with a **public IP address** for external access.

### Step 2: Connect to Your Instance via SSH

Once your instance is running, connect to it using SSH:

```bash
ssh ubuntu@<your-server-ip>
Step 3: Update the System
Update your system's package index:

bash
Copy
Edit
sudo apt update && sudo apt upgrade -y
Step 4: Install NGINX
Install NGINX using the following command:

bash
Copy
Edit
sudo apt install -y nginx
Start and enable the service to run on boot:

bash
Copy
Edit
sudo systemctl start nginx
sudo systemctl enable nginx
Step 5: Configure the Custom HTML Page
Navigate to the web root directory:
bash
Copy
Edit
cd /var/www/html
Use Vim to edit the index.html file:
bash
Copy
Edit
sudo vim index.html
Add your custom HTML content:
html
Copy
Edit
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome</title>
</head>
<body>
    <h1>Welcome to DevOps Stage 0 - Richard Olatunde/RichardOlatunde</h1>
</body>
</html>
Save and exit Vim (ESC → :wq → ENTER).

Restart NGINX to apply the changes:

bash
Copy
Edit
sudo systemctl restart nginx
Step 6: Open Port 80 on AWS Security Group
In the AWS Management Console, go to EC2 → Security Groups.
Select the security group associated with your instance.
Add a new inbound rule:
Type: HTTP
Protocol: TCP
Port Range: 80
Source: 0.0.0.0/0 (allows public access)
Step 7: Configure UFW Firewall
Enable UFW and allow NGINX traffic:

bash
Copy
Edit
sudo ufw allow 'Nginx Full'
sudo ufw enable
sudo ufw status
Step 8: Verify Your Deployment
Visit your public IP (or domain) in a browser:

bash
Copy
Edit
http://<your-server-ip>
You should see the custom welcome page with the message:

css
Copy
Edit
Welcome to DevOps Stage 0 - Richard Olatunde/RichardOlatunde
Project Challenges and Solutions
1. Firewall Blocking Port 80
Challenge: The page was not loading due to blocked HTTP (Port 80) traffic.
Solution: I updated the AWS security group to allow inbound traffic on Port 80 and configured the firewall using UFW.
2. Permission Issues
Challenge: I encountered permission errors when editing the index.html file.
Solution: I used the following command to change ownership of the directory and files:
bash
Copy
Edit
sudo chown -R $USER:$USER /var/www/html
Conclusions and Learnings
NGINX Installation: This project helped me understand the basics of configuring web servers and handling cloud-based deployments.
Security Configuration: I learned how to manage firewall rules and security groups to ensure that my server is accessible while maintaining security.
Cloud Computing: This task solidified my understanding of AWS EC2 instances and how to deploy web applications in the cloud.
License
MIT License. See the LICENSE file for details.

Acknowledgments
AWS for the cloud hosting
NGINX for the powerful web server software
HNG Internship for the opportunity to learn and grow in the DevOps field
