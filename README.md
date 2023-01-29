# SQL Learning 
Here is mysql environment needed to do exercises and the solutions of [SQL Training](https://speakerdeck.com/ymiyake/sql-training-2021).

## Requirement
* docker
* mysql CLI (if needed)

## Steps

### Run mysql container
```
docker-compose up -d
```

### Connect to the container
* Or, actually you can use mysql CLI on local machine to connect with mysql inside the container.
```
docker container exec -it mysql-container /bin/sh
```

### Connect to the mysql with CLI
* see the password in the yaml
```
mysql -u root -p -h localhost -P 3306
```

### Query data from a table
```
mysql> use testdb;
Database changed

mysql> show tables;
+--------------------------+
| Tables_in_testdb         |
+--------------------------+
| allergy                  |
| club                     |
| club_member              |
| ice_cream_flavor         |
| ice_cream_flavor_allergy |
| student                  |
+--------------------------+
6 rows in set (0.01 sec)

mysql> select * from ice_cream_flavor LIMIT 10;
+---------------------------------------------------+-----------+---------+--------------+------------+
| name                                              | kind      | calorie | is_available | created_at |
+---------------------------------------------------+-----------+---------+--------------+------------+
| コットンキャンディワンダーランド                       | THE 31    |     162 |            1 | 2021-02-21 |
| チョップドチョコレート                               | CHOCOLATE |     175 |            1 | 2021-05-12 |
| ナッツトゥユー                                      | ELEGANT   |     168 |            0 | 1998-12-30 |
| ラブポーションサーティワン                            | THE 31    |     160 |            0 | 2019-04-22 |
| ロッキーロード                                      | CHOCOLATE |     175 |            1 | 2012-05-02 |
| 小倉トースト 〜大納言あずき使用〜                      | ELEGANT   |     153 |            1 | 2021-01-03 |
+---------------------------------------------------+-----------+---------+--------------+------------+
6 rows in set (0.01 sec)
```

### Remove all resources created by up
```
docker-compose down --rmi all --volumes
```

