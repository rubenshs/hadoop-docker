# how to use
```
docker pull rubenss/hadoop:latest

wget https://raw.githubusercontent.com/rubenshs/hadoop-docker/main/images/docker-compose.yml

docker-compose up

sudo docker cp hdpmaster:/home/hadoop/.ssh /home/${USER}/teste
sudo chmod -R 777 /home/${USER}/teste/.ssh/

rm /home/${USER}/.ssh/known_hosts
ssh hadoop@172.20.0.100 -i /home/${USER}/teste/.ssh/ssh_host_rsa_key
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
