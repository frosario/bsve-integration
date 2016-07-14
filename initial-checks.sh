#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root or with sudo"
  exit
fi

docker --version || (echo "Please install docker:   https://docs.docker.com/engine/installation/linux/" && exit)

docker-compose --version || (echo "Please install docker-compose:   https://docs.docker.com/compose/install/" && exit)

aws s3 ls s3://bsve-integration || (echo "Please install and configure awscli:   https://github.com/aws/aws-cli" && exit)