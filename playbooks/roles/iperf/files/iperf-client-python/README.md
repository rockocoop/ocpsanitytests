# iperfcon
iperfcon is for Openshift/Kubernetes bandwidth testing the SDN network.
the iperf-client is working with the iperf-server container and outputs 
the iperf3 results summery after we run a GET command  to the iperf-client 
route with the right values.

It can use it for several used cases:

- network bandwidth within the worker
- network bandwidth between 2 workers
- network bandwidth between a Worker and and external Server

# prereqisites

- ocp cluster
- oc client
- system:admin loggin privilege

# how to use it 

Simply run the iperf.yaml playbook

# Advanced - independent environment
iperfcon can run from hosts that does not support ansible.
it can be run on any linux OS that support docker/podman
it pulls ose container that simulate the ansible whole ansible environment that include ansible and python packages.

# how to use it 

Simply run the sanity_4.sh script

