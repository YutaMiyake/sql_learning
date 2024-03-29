USE testdb;

-- create tables
CREATE TABLE student (
  sid INTEGER,
  name VARCHAR(255),
  age INTEGER,
  major VARCHAR(255),
  PRIMARY KEY (sid)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE club (
  cid INTEGER,
  name VARCHAR(255),
  budget INTEGER,
  PRIMARY KEY (cid));

CREATE TABLE club_member (
  sid INTEGER,
  cid INTEGER,
  joined_at DATE,
  PRIMARY KEY (sid, cid),
  FOREIGN KEY (sid) REFERENCES student(sid),
  FOREIGN KEY (cid) REFERENCES club(cid)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- insert data

INSERT INTO student
  (sid, name, age, major)
VALUES
(1,"佐藤",20,"計算機科学"),
(2,"山田",19,"計算機科学"),
(3,"金子",18,"経済学"),
(4,"金子",19,"経済学"),
(5,"大胡田",18,"計算機科学"),
(6,"秦",17,"計算機科学"),
(7,"水谷",29,"計算機科学"),
(8,"金剛證寺",20,"計算機科学"),
(9,"島田",30,"計算機科学"),
(10,"小松",30,"計算機科学"),
(11,"打越",30,"計算機科学"),
(12,"田中",22,"計算機科学"),
(13,"古謝",22,"計算機科学"),
(14,"名波",22,"計算機科学"),
(15,"隼人",21,"計算機科学"),
(16,"八千古嶋",20,"計算機科学"),
(17,"中西",21,"計算機科学"),
(18,"備魚",19,"計算機科学"),
(19,"西多",40,"計算機科学"),
(20,"杉浦",19,"計算機科学"),
(21,"赤上",19,"計算機科学"),
(22,"畠山",19,"計算機科学"),
(23,"綛",19,"計算機科学"),
(24,"大孝",18,"計算機科学"),
(25,"豊岳",20,"計算機科学"),
(26,"勝部",20,"計算機科学"),
(27,"古浜",20,"計算機科学"),
(28,"馬場",20,"計算機科学"),
(29,"開澤",20,"計算機科学"),
(30,"唐土",20,"計算機科学"),
(31,"前田",19,"文化人類学"),
(32,"久寿居",20,"文化人類学"),
(33,"定榮",20,"文化人類学"),
(34,"柘榴",20,"文化人類学"),
(35,"上垣内",20,"文化人類学"),
(36,"中頭",20,"文化人類学"),
(37,"日沢",19,"文化人類学"),
(38,"嵜山",19,"文化人類学"),
(39,"兵主",19,"文化人類学"),
(40,"北郷",19,"文化人類学"),
(41,"根岸",19,"文化人類学"),
(42,"名島",19,"文化人類学"),
(43,"安田",19,"文化人類学"),
(44,"清",20,"文化人類学"),
(45,"大胡田",20,"文化人類学"),
(46,"秦",20,"文化人類学"),
(47,"水谷",20,"文化人類学"),
(48,"金剛證寺",20,"文化人類学"),
(49,"島田",20,"文化人類学"),
(50,"小松",32,"文化人類学"),
(51,"打越",32,"文化人類学"),
(52,"田中",32,"経済学"),
(53,"古謝",32,"経済学"),
(54,"名波",32,"経済学"),
(55,"隼人",32,"経済学"),
(56,"八千古嶋",20,"経済学"),
(57,"中西",20,"経済学"),
(58,"備魚",20,"経済学"),
(59,"西多",20,"経済学"),
(60,"杉浦",20,"経済学"),
(61,"赤上",20,"経済学"),
(62,"畠山",20,"経済学"),
(63,"綛",20,"経済学"),
(64,"大孝",20,"経済学"),
(65,"豊岳",22,"経済学"),
(66,"勝部",22,"経済学"),
(67,"古浜",22,"経済学"),
(68,"馬場",22,"経済学"),
(69,"開澤",22,"経済学"),
(70,"唐土",22,"経済学"),
(71,"安田",22,"経済学"),
(72,"寒",20,"経済学"),
(73,"越中",20,"経済学"),
(74,"田代",18,"経済学"),
(75,"胡",18,"経済学"),
(76,"大野",19,"経済学"),
(77,"手嶋",19,"経済学"),
(78,"須知",19,"経済学"),
(79,"是佐",19,"経済学"),
(80,"高畠",19,"経済学"),
(81,"前田",19,"経済学"),
(82,"久寿居",20,"経済学"),
(83,"定榮",20,"経済学"),
(84,"柘榴",20,"経済学"),
(85,"上垣内",20,"経済学"),
(86,"中頭",21,"経済学"),
(87,"日沢",21,"経済学"),
(88,"嵜山",21,"経済学"),
(89,"兵主",21,"経済学"),
(90,"北郷",21,"経済学");

INSERT INTO club VALUES
(1,"写真部",300),
(2,"軽音部",450000),
(3,"茶道部",9000000);

INSERT INTO club_member VALUES
(1,1,'2021/4/15'),
(1,2,'2021/4/15'),
(2,3,'2021/5/1');

