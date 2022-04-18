# how to use - docker-compose
```
docker pull rubenss/hadoop:latest
wget https://raw.githubusercontent.com/rubenshs/hadoop-docker/main/docker-compose.yml
docker-compose up
sudo docker cp hdpmaster:/home/hadoop/.ssh /home/${USER}/teste
sudo chmod -R 777 /home/loester/teste/
rm /home/${USER}/.ssh/known_hosts
ssh hadoop@172.20.0.100 -i /home/${USER}/teste/.ssh/key -o StrictHostKeyChecking=no

hdfs namenode -format
$HADOOP_HOME/sbin/start-dfs.sh


http://172.20.0.100:9870
http://172.20.0.100:9864

hdfs dfsadmin -report
$HADOOP_HOME/sbin/start-yarn.sh


wget http://datascienceacademy.com.br/blog/aluno/RFundamentos/Datasets/Parte2/questoes.csv

hdfs dfs -mkdir /datasets
hdfs dfs -put questoes.csv /datasets
hdfs dfs -ls /datasets

yarn jar $HADOOP_HOME/share/hadoop/mapreduce/hadoop-mapreduce-examples-3.1.0.jar wordcount "/datasets/questoes.csv" output


hdfs dfs -cat output/part-r-00000
yarn node -list
yarn application -list

http://172.20.0.100:8080/cluster

jps

$HADOOP_HOME/sbin/stop-yarn.sh
$HADOOP_HOME/sbin/stop-dfs.sh

```
---

# how to use - build from project
```
git clone https://github.com/rubenshs/hadoop-docker
cd hadoop-docker

# windows
cd shell-bat-windows
./build_all.bat

# linux
cd shell-sh-linux
./build_all.sh
```
---
# if you need to access via docker
```
docker exec -it hdpmaster bash
```
---
# how to use
```
docker pull rubenss/hadoop:latest /
wget https://raw.githubusercontent.com/rubenshs/hadoop-docker/main/images/docker-compose.yml /
docker-compose up
```
---
# how to use docker exec
```
docker exec -it hdpmaster /bin/bash
docker exec -it hdpslv1 /bin/bash
docker exec -it hdpslv2 /bin/bash
```
---
### copy the .ssh folder to be able to access with certificate
```
sudo docker cp hdpmaster:/home/hadoop/.ssh /home/${USER}/teste
sudo chmod -R 766 /home/${USER}/teste/.ssh
```
### connect via ssh via certificate
```
ssh hadoop@172.20.0.100 -i /home/${USER}/teste/.ssh/hdp-key
```
### run the ssh debug
```
ssh -vvv hadoop@172.20.0.100 -i /home/${USER}/teste/.ssh/hdp-key
```
---
# ping in host
```
ping 172.20.0.100
ping 172.20.0.210
ping 172.20.0.220
```
---
---
# ping in inside container
```
ping 172.20.0.100 
ping hdpmaster


ping 172.20.0.210
ping hdpslv1


ping 172.20.0.220
ping hdpslv2
```
---
# connect via SSH by certificate
```
ssh hadoop@172.20.0.100 -i ~/.ssh/hdp-key
ssh hadoop@172.20.0.210 -i ~/.ssh/hdp-key
ssh hadoop@172.20.0.220 -i ~/.ssh/hdp-key
```
# connect via SSH by port
```
ssh hadoop@172.20.0.100 -p 2201 -i ~/.ssh/hdp-key
ssh hadoop@172.20.0.210 -p 2202 -i ~/.ssh/hdp-key
ssh hadoop@172.20.0.220 -p 2203 -i ~/.ssh/hdp-key
```

| Directory or File      | Permissions
|---|---|
| ~/.ssh/                | 700
| ~/.ssh/authorized_keys | 600
| ~/.ssh/config          | 600
| ~/.ssh/identity        | 600
| ~/.ssh/id_dsa          | 600
| ~/.ssh/id_rsa          | 600
| ~/.ssh/identity.pub    | 644
| ~/.ssh/id_dsa.pub      | 644
| ~/.ssh/id_rsa.pub      | 644