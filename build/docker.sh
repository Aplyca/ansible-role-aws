#!/bin/bash
# Build AWS CLI provisioned with Ansible

DOCKER_IMAGE="aplyca/aws"

echo "Building image"
docker build -t ${DOCKER_IMAGE} .

echo "Stopping and removing running db containers"
docker stop aws && docker rm aws

echo "Starting new db container"
docker run -d --name aws -p 3306:3306 aplyca/aws
