# hadoop-docker
```
wget https://raw.githubusercontent.com/rubenshs/hadoop-docker/main/images/docker-compose.yml
docker-compose up
```

# conectar via ssh
```
ssh hadoop@172.20.0.100
``` 

# verificar ip no Linux CentOs 7
```
$ ifconfig
```

# alterar configuração do SSH
```
$ sudo vim /etc/ssh/sshd_config
$ service sshd restart
```

# A cada BUILD e "docker-compose up" , sempre limpar esse arquivo
```
sudo gedit /home/loester/.ssh/known_hosts
sudo vim /home/loester/.ssh/known_hosts
```

# conectar via SSH por usuário
```
ssh hadoop@172.20.0.100 -p 2201
source /home/hadoop/.bashrc

ssh hadoop@172.20.0.210 -p 2202
source /home/hadoop/.bashrc

ssh hadoop@172.20.0.220 -p 2203
source /home/hadoop/.bashrc


ssh hadoop@hdpmaster -p 2201
ssh hadoop@hdpmasterlv1 -p 2202
ssh hadoop@hdpmasterlv2 -p 2203
```

# conectar via SSH por certificado
```
ssh hadoop@172.20.0.100 -p 2201 -i ~/.ssh/hdp-key
ssh hadoop@172.20.0.210 -p 2202 -i ~/.ssh/hdp-key
ssh hadoop@172.20.0.220 -p 2203 -i ~/.ssh/hdp-key

ssh hadoop@hdpmaster -p 2201 -i ~/.ssh/hdp-key
ssh hadoop@hdpmasterlv1 -p 2202  -i ~/.ssh/hdp-key
ssh hadoop@hdpmasterlv2 -p 2203  -i ~/.ssh/hdp-key
```

# iniciar os serviços manualmente
```
$ systemctl start firewalld
$ systemctl start sshd
```

# status do serviços
```
$ systemctl status firewalld
$ systemctl status sshd
```

# permitir portas/tcp no firewall
```
$ yum install -y firewalld
$ firewall-cmd --zone=public --add-port=22/tcp --permanent
$ firewall-cmd --zone=public --add-port=9000/tcp --permanent
$ firewall-cmd --zone=public --add-port=9870/tcp --permanent
$ firewall-cmd --reload
```
