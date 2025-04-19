# ISECURION-Project

## Overview

The **ISECURION** project demonstrates the automation and orchestration of DevOps tasks using **Linux**, **Shell Scripting**, **Docker**, **Kubernetes**, and **Monitoring** tools. The project focuses on building a simple environment that integrates system setup, containerization, Kubernetes deployment, and system monitoring, aimed at a complete development lifecycle for DevOps.

### Project Breakdown:

1. **Linux & Shell Scripting**: Automating system setup and configurations using bash scripting to install and configure necessary tools.
2. **Docker & Containerization**: Building a custom Docker image to run a simple HTTP server (Nginx or Python HTTP server), ensuring security and efficiency in the container.
3. **Kubernetes YAML**: Writing Kubernetes deployment and service YAML files to deploy and expose the Docker container.
4. **Monitoring**: Setting up system monitoring tools (Netdata ) using Docker Compose, and deploying the infrastructure with Helm for easier management.

## Prerequisites

Before you begin, make sure your system is set up with the following tools:

- **Docker**: To containerize the HTTP server and other applications.
- **kubectl**: For managing Kubernetes clusters.
- **Helm**: For deploying Kubernetes resources using charts.
- **Linux-based OS**: Ideally, Ubuntu or any Debian-based system is preferred for running the shell script.
- **Node Exporter**: For exporting system metrics to Prometheus.

## How to Run/Test the Scripts and Docker Image

### 1. Set up the Environment (System Setup Script)

The `setup.sh` script is designed to automate the installation and configuration of necessary tools on the system:

- **Installs Docker, kubectl, and htop**.
- **Creates a new user (`myuser`)** with non root user .
- **Configures UFW firewall** to allow only essential ports: 22 (SSH), 80 (HTTP), and 443 (HTTPS).
- **Sets up a cron job** to clean the `/tmp` directory every 6 hours.Kubernetes YAML Files
   To deploy the Dockerized application to Kubernetes, the following YAML files have been created:

   deployment.yaml: Deploys the Docker container with a single replica.

   service.yaml: Exposes the deployed application via a NodePort service.

   configmap.yaml: Mounts configuration settings as environment variables inside the container.

#### Steps to run the setup script:
1. Clone the repository to your local machine:
   ```bash
   git clone https://github.com/yourusername/ISECURION-Project.git
   cd ISECURION-Project

2.   Dockerize the HTTP Server
     A Docker image is built based on a Debian distribution that runs a simple HTTP server (Nginx or Python HTTP server) with a custom index.html file.

     Steps to create and run the Docker image:
     Build Docker Image: The Docker image uses a Debian-based base image and installs the necessary web server.

3. Kubernetes YAML Files
     To deploy the Dockerized application to Kubernetes, the following YAML files have been created:

     deployment.yaml: Deploys the Docker container with a single replica.

     service.yaml: Exposes the deployed application via a NodePort service.

     configmap.yaml: Mounts configuration settings as environment variables inside the container.

4. Monitoring with Docker Compose and Helm
   1. Set up Docker Compose:
   We use Docker Compose to run the web application alongside Node Exporter for monitoring system metrics (CPU, memory, disk usage).


5. Challenges:
   Setting up firewall rules and ensuring the system is secure.

   Configuring Docker networking to expose the application correctly.

   Ensuring the proper setup of Kubernetes services and deployments.




