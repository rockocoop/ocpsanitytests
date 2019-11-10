# ocpsanitytests
ansible project for testing general OCP functionality



Prerequisites
Install OCP oc client:

    yum install atomic-openshift-clients

The following image must be available on a local insecure repository as follows:

    <registryIP:Port>/openshift3/nginx:latest


Summary

Project contains the following roles at present:

create_project

Performs the following tasks:
- create project
- create persistent storage claim
- deploy nginx with persistent storage
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
- checks selinux policy is correct
- marks node as unschedulable
- reboots node 
- checks node rejoins the cluster and is ready
- marks node as schedulable


Once all roles have run, there is a 5 minute delay and then a check is run to see all pods are running

Additional Parameters:

The following parameters are needed to run the tests, in addition to a valid OCP inventory file for the environment (the one used to deploy)

	ocpappsdomain: <openshift application subdomain>
	openshift_console_api: <master API FQDN and Port>
	localregistry: <registry where nginx image >
	testproject: <name of temporary project created for test app>  - default value is "scoobydoo"
    storageclass: <persistent storage class type> - default is "glusterfs-storage" (optional)
