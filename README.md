# SQL Learning 
Here is mysql environment needed to do exercises and the solutions of [SQL Training](https://speakerdeck.com/ymiyake/sql-training-2021). 

## Requirement
* docker

## Commands

Run mysql container
```
docker-compose up -d
```

Connect to mysql container hosted in docker
```
mysql -u root -p -h localhost -P 3306 --protocol=tcp
```

Remove all resources created by up
```
docker-compose down --rmi all --volumes
```


