# merging_repo

This project serveed multiple puposes like:
A.Create jar file once we run jenkins pipeine which uses maven and pom.xml file.
B.Create dokcer file to run docker container and automate the output using jenkins pipeline.
C.create ansible playbook which pushes jar file produced in task A to AWS S3 bucket and github repo.

Task A:
Craete jenkins pipeline which using pom.xml file and maven.This jar can be easily shared and decompressed.jenkins pipeline is mentioned in the repo.

Task B:
Docker file uses maven 3.8.6 as base image.Docker image is created and run on container using jenkins pipeline.jenkins pipeline uses maven as base image builds images to produce jar output.

TASK C:
initially 2 ansible playbook were created s3-push.yaml and git-push.yaml which pushes jar file created after running jenkins-docker pipeline to AWS S3 bucket and github repo.this 2 yaml files are merged to get multipush.yaml which pushes jar file to both s3 bucket and github repo simoulteneously.make sure to enable ACL permission so that ansible can push to bucket.

