# how to use - docker-compose
```
docker-compose pull
wget https://raw.githubusercontent.com/rubenshs/hadoop-docker/main/docker-compose.yml
docker-compose up
sudo docker cp hdpmaster:/home/hadoop/.ssh /home/${USER}/teste
sudo chmod -R 777 /home/loester/teste/
rm /home/${USER}/.ssh/known_hosts
ssh hadoop@172.20.0.100 -i /home/${USER}/teste/.ssh/key -o StrictHostKeyChecking=no
```


### Start Standalone Spark Master Server
```
start-master.sh
```


### Start Spark Slave Server (Start a Worker Process)
```
start-slave.sh spark://master:port
```

```
start-slave.sh spark://ubuntu1:7077
start-slave.sh -c 1 spark://ubuntu1:7077
start-slave.sh -m 512M spark://ubuntu1:7077

spark-shell
pyspark

stop-slave.sh

start-all.sh

stop-all.sh
```