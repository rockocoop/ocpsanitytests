#!/bin/bash
oc new-project iperf3
oc create -f IperfCloud/iperf-client/pod-deployment-antiafinity.yaml
oc create -f IperfCloud/iperf3-server/pod-deployment.yaml
oc create -f IperfCloud/iperf3-server/service.yaml
oc create -f IperfCloud/iperf3-client/service.yaml
oc create -f IperfCloud/iperf3-client/route.yaml
curl -X GET http://ip_client_route/iperf/api.cgi?server=ip_server_scv,port=5001,type=json | jq
curl -X GET http://ip_client_route/iperf/state?server=ip_server_scv,port=5001,type=json,warning=50000m,critical=30000m | jq
oc get pods -n iperf3 -o wide
oc delete project iperf3

