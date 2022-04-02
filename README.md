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
### copiar a pasta do .ssh para poder acessar com certificado
```
docker cp hdpmaster:/home/hadoop/.ssh /home/loester/teste
```
### executa o ssh pelo certificado
```
docker ssh hadoop@172.20.0.100 -i /home/loester/teste/.ssh/hdp-key
```
---
# connect via SSH by password
```
ssh hadoop@172.20.0.100
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
