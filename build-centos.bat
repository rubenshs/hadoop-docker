docker build -t localhost:5000/base-centos7:latest -f images/dockerfile.centos .
docker push localhost:5000/base-centos7:latest