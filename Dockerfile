FROM ubuntu:14.04
MAINTAINER Mauricio Sanchez <msanchez@aplyca.com>
LABEL Description="AWS cli installed and configured using Ansible" Vendor="Aplyca" Version="0.9.1-001"


# Adding Ansible role
ADD . /tmp/aplyca.AWS
WORKDIR /tmp/aplyca.AWS

# Provision image
RUN ./build/provision.sh

# Create mount points for volumes
VOLUME ["/etc/varnish"]

# Expose MariaDB port
EXPOSE 80

# Start AWS service
ENTRYPOINT ["/bin/bash", "./build/entrypoint.sh"]
