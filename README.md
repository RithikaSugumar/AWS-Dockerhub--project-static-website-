AWS-DockerHub Static Website Deployment
Project Overview
 This project demonstrates how to deploy a static website using Docker and AWS.
 The website is containerized using Docker, pushed to DockerHub, and deployed on an AWS EC2 instance.
 This project helps understand basic DevOps workflow, including containerization, image registry usage, and cloud deployment.

Technologies Used
 HTML
 CSS
 JavaScript
 Docker
 DockerHub
 AWS EC2
 Git & GitHub

Project Architecture
Developer → GitHub Repository → Docker Image → DockerHub → AWS EC2 → Website Deployment

Project Steps
1. Create Static Website
 A simple static website was created using:
 HTML
 CSS
 JavaScript

2. Create Dockerfile
 A Dockerfile is used to containerize the website.
 Example Dockerfile:
 FROM nginx:latest
 COPY . /usr/share/nginx/html
 EXPOSE 80

This Dockerfile:
 Uses Nginx as the web server
 Copies website files into the Nginx directory
 Exposes port 80

3. Build Docker Image
 docker build -t static-website .

4. Tag Docker Image
 docker tag static-website <dockerhub-username>/static-website

5. Push Image to DockerHub
 docker push <dockerhub-username>/static-website

6. Launch AWS EC2 Instance
Steps:
 Launch an EC2 instance (Ubuntu)
 Allow HTTP (Port 80) in the security group
 Connect using SSH

7. Install Docker on EC2
 sudo apt update
 sudo apt install docker.io -y
 sudo systemctl start docker
 sudo systemctl enable docker

8. Pull Docker Image from DockerHub
 docker pull <dockerhub-username>/static-website

9. Run the Container
 docker run -d -p 80:80 <dockerhub-username>/static-website

10. Access the Website
 Open your browser and visit:
 http://<EC2-Public-IP>
    Your static website will be displayed.

Learning Outcomes
Through this project, I learned:
  How to containerize applications using Docker 
  How to push images to DockerHub
  How to deploy containers on AWS EC2
  Basic DevOps workflow
  How to host a static website in the cloud

Author
Rithika S
