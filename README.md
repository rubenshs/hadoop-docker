# how to use
```
docker pull rubenss/hadoop:latest /
wget https://raw.githubusercontent.com/rubenshs/hadoop-docker/main/images/docker-compose.yml /
docker-compose up
```

---

# connect via SSH by password
```
ssh hadoop@172.20.0.100
```

---
# connect via SSH by certificate
```
ssh hadoop@172.20.0.100 -i ~/.ssh/hdp-key
ssh hadoop@172.20.0.210 -i ~/.ssh/hdp-key
ssh hadoop@172.20.0.220 -i ~/.ssh/hdp-key
```