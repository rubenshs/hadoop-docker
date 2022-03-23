# hadoop-docker
```
docker-compose up
```

# conectar via ssh
```
ssh root@172.20.0.100
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

# conectar via SSH por usuário
```
ssh hadoop@172.20.0.100 -p 2201
ssh hadoop@172.20.0.210 -p 2202
ssh hadoop@172.20.0.220 -p 2203

ssh hadoop@hdps -p 2201
ssh hadoop@hdpslv1 -p 2202
ssh hadoop@hdpslv2 -p 2203
```

# conectar via SSH por certificado
```
ssh hadoop@172.20.0.100 -p 2201 -i ~/.ssh/hdp-key
ssh hadoop@172.20.0.210 -p 2202 -i ~/.ssh/hdp-key
ssh hadoop@172.20.0.220 -p 2203 -i ~/.ssh/hdp-key

ssh hadoop@hdps -p 2201 -i ~/.ssh/hdp-key
ssh hadoop@hdpslv1 -p 2202  -i ~/.ssh/hdp-key
ssh hadoop@hdpslv2 -p 2203  -i ~/.ssh/hdp-key
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