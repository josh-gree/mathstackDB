USE test;
DROP TABLE IF EXISTS badges;
CREATE TABLE badges (
      Id INT NOT NULL PRIMARY KEY,
      UserId INT NULL,
      Name VARCHAR(100) NULL,
      Date TIMESTAMP NULL,
      Class INT NULL,
      TagBased VARCHAR(10) NULL
);
LOAD XML LOCAL INFILE '/home/josh/MYSQL_DBS/math.stackexchange.com/Badges.xml'
INTO TABLE badges
ROWS IDENTIFIED BY '<row>';
SELECT * FROM badges LIMIT 10;