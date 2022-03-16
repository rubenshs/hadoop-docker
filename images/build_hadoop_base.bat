docker build -t localhost:5000/hadoop-namenode_base:latest -f dockerfile.centos7.hadoop-base .
docker push localhost:5000/hadoop-namenode_base:latest