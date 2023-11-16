#!/bin/bash

# install packages
sudo yum install wget -y

JAVA=17
JAVA_VERSION="17.0.9"
JAVA_PACKAGE="https://download.oracle.com/java/${JAVA}/archive/jdk-${JAVA_VERSION}_linux-x64_bin.rpm"

sudo wget ${JAVA_PACKAGE}

sudo curl https://yum.oracle.com/RPM-GPG-KEY-oracle-ol7 | gpg --import

#GPG Key Fingerprint
sudo curl https://yum.oracle.com/RPM-GPG-KEY-oracle-ol7 -o RPM-GPG-KEY-oracle
sudo gpg --quiet --with-fingerprint RPM-GPG-KEY-oracle

sudo yum install jdk-${JAVA_VERSION}_linux-x64_bin.rpm -y

sudo rm -rf jdk-${JAVA_VERSION}_linux-x64_bin.rpm

sudo alternatives --set java /usr/lib/jvm/jdk-17-oracle-x64/bin/java



