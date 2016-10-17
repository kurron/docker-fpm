#!/bin/bash

# install the Extra Package repository
rpm -iUvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
yum -y update

yum -y install python-pip python-devel libffi-devel openssl-devel gcc redhat-rpm-config
pip install --upgrade pip
pip install --upgrade paramiko
pip install --upgrade ansible
pip install --upgrade boto
