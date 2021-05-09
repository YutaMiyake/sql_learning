USE testdb;
SET CHARACTER_SET_CLIENT = utf8mb4;
SET CHARACTER_SET_CONNECTION = utf8mb4;

-- create tables
CREATE TABLE ice_cream_flavor
  (
     name    VARCHAR(255) PRIMARY KEY,
     kind    VARCHAR(255),
     calorie INTEGER,
     is_available TINYINT(1),
     created_at DATE
  )
engine=innodb DEFAULT charset=utf8mb4;

CREATE TABLE allergy
  (
     name VARCHAR(255) PRIMARY KEY
  )
engine=innodb
DEFAULT charset=utf8mb4;

CREATE TABLE ice_cream_flavor_allergy
  (
     ice_name     VARCHAR(255),
     allergy_name VARCHAR(255),
     PRIMARY KEY(ice_name, allergy_name),
     FOREIGN KEY(ice_name) REFERENCES ice_cream_flavor(name)
      ON UPDATE CASCADE ON DELETE CASCADE,
     FOREIGN KEY(allergy_name) REFERENCES allergy(name)
      ON UPDATE CASCADE ON DELETE CASCADE
  )
engine=innodb DEFAULT charset=utf8mb4; 

-- insert data

INSERT INTO ice_cream_flavor
(name, kind, calorie, is_available, created_at)
VALUES
("コットンキャンディワンダーランド","THE 31",162,1,"2021/2/21"),
("ラブポーションサーティワン","THE 31",160,0,"2019/4/22"),
("ロッキーロード","CHOCOLATE",175,1,"2012/5/2"),
("チョップドチョコレート","CHOCOLATE",175,1,"2021/5/12"),
("小倉トースト 〜大納言あずき使用〜","ELEGANT",153,1,"2021/1/3"),
("ナッツトゥユー","ELEGANT",168,0,"1998/12/30");

INSERT INTO allergy
(name)
VALUES
("乳成分"),
("卵"),
("小麦"),
("落花生"),
("そば"),
("えび"),
("かに"),
("あわび"),
("いか"),
("いくら"),
("オレンジ"),
("カシューナッツ"),
("キウイフルーツ"),
("牛肉"),
("くるみ"),
("ごま"),
("さけ"),
("さば"),
("大豆"),
("鶏肉"),
("バナナ"),
("豚肉"),
("まつたけ"),
("もも"),
("やまいも"),
("りんご"),
("ゼラチン");

INSERT into ice_cream_flavor_allergy
(ice_name,allergy_name)
values
("コットンキャンディワンダーランド","乳成分"),
("コットンキャンディワンダーランド","大豆"),
("ラブポーションサーティワン","乳成分"),
("ラブポーションサーティワン","オレンジ"),
("ラブポーションサーティワン","大豆"),
("ラブポーションサーティワン","りんご"),
("ロッキーロード","乳成分"),
("ロッキーロード","ゼラチン"),
("チョップドチョコレート","乳成分"),
("チョップドチョコレート","大豆"),
("小倉トースト 〜大納言あずき使用〜","乳成分"),
("ナッツトゥユー","乳成分"),
("ナッツトゥユー","落花生"),
("ナッツトゥユー","くるみ"),
("ナッツトゥユー","カシューナッツ");
