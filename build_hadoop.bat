docker build -t localhost:5000/hadoop:latest -f images/dockerfile.hadoop .
docker push localhost:5000/hadoop:latest