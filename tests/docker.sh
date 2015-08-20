#!/bin/bash
# test AWS provisiones with Ansible

ANSIBLE_ROLE="aplyca.AWS"
DOCKER_IMAGE="ansible/ubuntu14.04-ansible"

docker run -it --name test-aws -v `pwd`:/tmp/${ANSIBLE_ROLE} ${DOCKER_IMAGE} /tmp/${ANSIBLE_ROLE}/tests/tests.sh
docker stop test-aws && docker rm test-aws
