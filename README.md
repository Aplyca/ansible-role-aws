# README.md
# Ansible Role: AWS

An Ansible role that installs AWSCli and AWS CloudWatch Logs

[![Build Status](https://travis-ci.org/Aplyca/ansible-role-aws.svg?branch=master)](https://travis-ci.org/Aplyca/ansible-role-aws)
[![Circle CI](https://circleci.com/gh/Aplyca/ansible-role-aws.svg?style=svg)](https://circleci.com/gh/Aplyca/ansible-role-aws)

Ansible Role that installs and configure AWS CLI on Debian/Ubuntu.

General tasks in AWS:
- As an enhacement it should contains the aws-cli
- Use aws-cli to syn s3
- Use aws-cli to send logs to cloudwatch

## Requirements

Use hash behavior for variables in ansible.cfg
See example: https://github.com/Aplyca/ansible-role-aws/blob/master/tests/ansible.cfg
See official docs: http://docs.ansible.com/intro_configuration.html#hash-behaviour

## Installation

Using ansible galaxy:
```bash
ansible-galaxy install aplyca.AWS
```
You can add this role as a dependency for other roles, add the role to the meta/main.yml file of your own role:
```yaml
dependencies:
  - { role: aplyca.AWS }
```

## Role Variables

See default variables: https://github.com/Aplyca/ansible-role-aws/blob/master/defaults/main.yml

## Dependencies

None.

## Testing
### Using Vagrant:

```bash
tests/vagrant.sh
```
### Using Docker:

```bash
tests/docker.sh
```

## License

MIT / BSD

## Author Information

Mauricio Sánchez from Aplyca SAS (http://www.aplyca.com)
