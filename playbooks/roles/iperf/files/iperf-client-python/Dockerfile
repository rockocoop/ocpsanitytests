FROM registry.redhat.io/ubi8
MAINTAINER Yaron Perry

RUN  useradd iperf && yum update -y && yum install -y iperf3 python3 && yum clean all
USER iperf
COPY iperfcon.py /home/iperf/

EXPOSE 8080

CMD ["python3", "/home/iperf/iperfcon.py"]

