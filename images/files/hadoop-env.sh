#!/bin/bash
export USER=hadoop
export PASSWORD=1
export HOME=/home/hadoop
export JAVA_HOME=/usr/java/jdk1.8.0_181/
export JRE_HOME=/usr/lib/jvm/java-1.8.0-openjdk/jre
export RELEASE=3.1.0
export HADOOP_HOME=/usr/local/hadoop
export HADOOP_HDFS_HOME=/usr/local/hadoop
export HADOOP_MAPRED_HOME=/usr/local/hadoop
export YARN_HOME=/usr/local/hadoop
export HADOOP_COMMON_HOME=/usr/local/hadoop
export HADOOP_COMMON_LIB_NATIVE_DIR=/usr/local/hadoop/lib/native
export HADOOP_CONF_DIR=/usr/local/hadoop/etc/hadoop
export HADOOP_SSH_OPTS="-i ~/.ssh/hdp-key"
export HADOOP_MAPRED_HOME=/usr/local/hadoop
export HADOOP_HDFS_HOME=/usr/local/hadoop
export HADOOP_YARN_HOME=/usr/local/hadoop
export PATH=$JAVA_HOME/bin:$PATH
export PATH=$HADOOP_HOME/bin:$PATH
export PATH=$HADOOP_COMMON_HOME/bin:$HADOOP_HDFS_HOME/bin:$HADOOP_MAPRED_HOME/bin:$PATH
export PATH=$JRE_HOME/bin:$PATH
export HDFS_NAMENODE_USER=root
export HDFS_DATANODE_USER=root
export HDFS_SECONDARYNAMENODE_USER=root
export YARN_RESOURCEMANAGER_USER=root
export YARN_NODEMANAGER_USER=root
export SBIN=/usr/local/hadoop/sbin