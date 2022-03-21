export USER=hadoop
export PASSWORD=1
export JAVA_HOME=/usr/java/jdk1.8.0_181/
export JRE_HOME=/usr/lib/jvm/java-1.8.0-openjdk/jre
export RELEASE="3.1.0"
export HADOOP_HOME=/usr/local/hadoop
export HADOOP_HDFS_HOME=\$HADOOP_HOME
export HADOOP_MAPRED_HOME=\$HADOOP_HOME
export YARN_HOME=\$HADOOP_HOME
export HADOOP_COMMON_HOME=\$HADOOP_HOME
export HADOOP_COMMON_LIB_NATIVE_DIR=\$HADOOP_HOME/lib/native
export HADOOP_CONF_DIR=$HADOOP_HOME/etc/hadoop
export HADOOP_SSH_OPTS="-i ~/.ssh/hdp-key"
export PATH=$JAVA_HOME/bin:$PATH
export PATH=$HADOOP_HOME/bin:$PATH
export PATH=$JRE_HOME/bin:$PATH
export HADOOP_CONF_DIR=/etc/hadoop/conf
export HADOOP_COMMON_HOME=$HADOOP_HOME
export HADOOP_MAPRED_HOME=$HADOOP_HOME
export HADOOP_HDFS_HOME=$HADOOP_HOME/share/hadoop/hdfs
export HADOOP_YARN_HOME=$HADOOP_HOME/share/hadoop/yarn