# c12e/oracle-java
# 

FROM ubuntu
MAINTAINER Cogntive Scale Engineering

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && \
   apt-get install -y curl tree unzip git lsof lvm2 nfs-common make g++ build-essential build-essential python-software-properties software-properties-common python python-dev python-boto python-pip python-pycurl python-setuptools python-protobuf ipython-notebook libssl-dev libjansi-java libjansi-native-java libhawtjni-runtime-java libldap2-dev libsasl2-dev libssl-dev gfortran libblas-dev liblapack-dev libncurses5-dev supervisor ntp libcurl4-nss-dev libsasl2-dev && \
   add-apt-repository ppa:webupd8team/java && \
   apt-get update && \
   echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections && \
   apt-get install -y oracle-java7-installer oracle-java7-set-default && \
   apt-get clean

ENV JAVA_HOME /usr/lib/jvm/java-7-oracle

