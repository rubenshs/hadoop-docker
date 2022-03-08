FROM centos:7 as base

LABEL maintainer="Rubens Suzuqui rubens545.s@gmail.com"

ENV USER=hadoop
ENV PASSWORD=1

USER root
RUN echo $PASSWORD | passwd root --stdin

RUN useradd $USER
RUN echo $PASSWORD | passwd $USER --stdin
WORKDIR /home/$USER

RUN yum update -y
RUN yum upgrade -y
RUN yum install epel-release wget tar gzip -y
RUN yum -y install java-1.8.0-openjdk java-1.8.0-openjdk-devel

ENV JAVA_HOME=/usr/java/jdk-8u181-linux-x64/
ENV JRE_HOME=/usr/lib/jvm/java-1.8.0-openjdk/jre
ENV PATH=$PATH:$JAVA_HOME/bin:$JRE_HOME/bin

WORKDIR /usr/java/
RUN wget http://datascienceacademy.com.br/blog/aluno/JDK/jdk-8u181-linux-x64.tar.gz
RUN tar -xvf jdk-8u181-linux-x64.tar.gz

ENV RELEASE="3.1.0"
ENV HADOOP_HOME=/usr/local/hadoop
ENV HADOOP_HDFS_HOME=\$HADOOP_HOME
ENV HADOOP_MAPRED_HOME=\$HADOOP_HOME
ENV YARN_HOME=\$HADOOP_HOME
ENV HADOOP_COMMON_HOME=\$HADOOP_HOME
ENV HADOOP_COMMON_LIB_NATIVE_DIR=\$HADOOP_HOME/lib/native
ENV PATH=\$PATH:\$HADOOP_HOME/bin:\$HADOOP_HOME/sbin

WORKDIR $HADOOP_HOME
RUN wget https://archive.apache.org/dist/hadoop/core/hadoop-$RELEASE/hadoop-$RELEASE.tar.gz
RUN tar -xvf hadoop-$RELEASE.tar.gz





RUN yum install nginx -y
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]