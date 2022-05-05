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

### Testing Spark
Após a execução você deve ver o status como SUCCEEDED!

```
spark-submit --deploy-mode cluster \
               --class org.apache.spark.examples.SparkPi \
               $SPARK_HOME/examples/jars/spark-examples_2.11-2.3.0.jar 10

spark-submit --deploy-mode cluster --class org.apache.spark.examples.SparkPi $SPARK_HOME/examples/jars/spark-examples_2.11-2.3.0.jar 10
```
### Testing Spark-Shell (Scala)
```
val msg = "Hello World..."
#println(msg)

case class Mensagem(codigo: Int, msg: String) { override def toString() :String = { return "Codigo : " + codigo + "|" + "msg : " + msg }}
val helloWorld = Mensagem(1, msg)
helloWorld.toString()
```