# ocpsanitytests
ansible project for testing general OCP functionality

Prerequisites
install pip and openshift module
    ``yum install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm)``
    ``yum install python-pip``
    ``pip install --upgrade setuptools``
    ``pip install openshift``


Summary
Project contains the following roles at present ``

` create_project `

Performs the following tasks:
- create project
- deploy mongodb and nodejs
- checks that pods are up and nodejs answers via router
- tears down the project

`infra_check`
Checks the following tasks:
- pods are running in the main OCP projects
- router
- node status 
- etcd health
- console health


