# Project Overview


This project serves multiple purposes, focusing on automating the build, containerization, and deployment processes using Jenkins, Docker, and Ansible. The key tasks include creating a JAR file, building a Docker container, and managing deployments to AWS S3 and GitHub.


Task A: Jenkins Pipeline for JAR File Creation
Objective
To create a Jenkins pipeline that utilizes Maven and the pom.xml file to generate a JAR file, which can be easily shared and decompressed.
Implementation
Jenkins Pipeline: The Jenkins pipeline is defined in the repository and orchestrates the build process.
Maven: The pipeline leverages Maven to compile the code and package it into a JAR file, ensuring that all dependencies are included.


Task B: Docker Containerization
Objective
To create a Dockerfile that uses Maven as the base image for building the application and running it in a Docker container.
Implementation
Dockerfile: The Dockerfile is configured to use Maven version 3.8.6 as the base image.
Jenkins Pipeline: The pipeline automates the process of building the Docker image and running it in a container, producing the JAR output as specified in Task A.


Task C: Ansible Playbook for Deployment
Objective
To create an Ansible playbook that pushes the JAR file produced in Task A to both an AWS S3 bucket and a GitHub repository.
Implementation
Initial Playbooks:
s3-push.yaml: Ansible playbook designed to upload the JAR file to an AWS S3 bucket.
git-push.yaml: Ansible playbook for pushing the JAR file to a GitHub repository.
Merged Playbook:
multipush.yaml: The two initial playbooks have been merged into a single playbook, multipush.yaml, which simultaneously pushes the JAR file to both the S3 bucket and the GitHub repository.
Permissions:
Ensure that ACL (Access Control List) permissions are enabled for the S3 bucket, allowing the Ansible playbook to successfully push the JAR file.


This structured approach clearly outlines the objectives and implementations of each task, making it easier for stakeholders to understand the project's scope and goals.

