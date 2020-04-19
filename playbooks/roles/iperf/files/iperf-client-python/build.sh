#!/bin/bash
buildah bud -f Dockerfile -t iperf3-client .

# docker build -t iperf3-client .
