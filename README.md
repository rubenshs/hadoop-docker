# how to use
```
docker pull rubenss/hadoop:latest \
wget https://raw.githubusercontent.com/rubenshs/hadoop-docker/main/images/docker-compose.yml \
docker-compose up
```

---

# connect via ssh over ip
```
ssh hadoop@172.20.0.100
```

---
# connect via SSH by certificate
```
ssh hadoop@172.20.0.100 -p 2201 -i ~/.ssh/hdp-key
ssh hadoop@172.20.0.210 -p 2202 -i ~/.ssh/hdp-key
ssh hadoop@172.20.0.220 -p 2203 -i ~/.ssh/hdp-key
```