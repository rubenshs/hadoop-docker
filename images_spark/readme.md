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