#!/bin/bash
# script from klondwood
yum list java*
sudo yum -y remove java*
java -version
cd
mkdir tmp
cd tmp
curl -u uftp:uftp ftp://192.168.2.115/path/developer/jdk-8u151-linux-x64.tar.gz -o jdk-8u151-linux-x64.tar.gz
tar zxvf jdk-8u151-linux-x64.tar.gz
sudo mv jdk1.8.0_151 /usr/share/
sudo vim /etc/profile
#add
export JAVA_HOME=/usr/share/jdk1.8.0_151
export PATH=$JAVA_HOME/bin:$PATH
export CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
source /etc/profile
java -version
which java
