# ocpsanitytests
ansible project for testing general OCP functionality

Prerequisites
Install pip and openshift module and OCP oc client:

    yum install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm)
    yum install python-pip
    pip install --upgrade setuptools
    pip install openshift
    yum install atomic-openshift-clients

The following image must be available on a local insecure repository as follows:

    <registryIP:Port>/openshift3/nginx:latest


Summary

Project contains the following roles at present:

create_project

Performs the following tasks:
- create project
- deploy nginx
- checks that pods are up nginx answers via router
- tears down the project

infra_check

Checks the following tasks:
- pods are running in the main OCP projects
- checks for failed pods in all projects in the cluster
- router
- node status 
- etcd health
- console health

restart_nodes

Performs the following for each node in the cluster:
- marks node as unschedulable
- drains node
- reboots node 
- checks node rejoins the cluster and is ready
- marks node as schedulable


