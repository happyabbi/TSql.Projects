USE 教務系統 
GO

CREATE TABLE 通訊錄 (
   編號 int IDENTITY(1000, 1) NOT NULL PRIMARY KEY,
   學號 char(4) NOT NULL,
   姓名 varchar(12) NOT NULL,
   性別 char(2) NULL,
   電話 varchar(15) NULL,
   生日 datetime NULL,
   地址 varchar(30) NULL
) 
GO

INSERT INTO 通訊錄 (學號, 姓名, 性別, 電話, 生日, 地址)
VALUES ('S221','張三重','男','02-88888888','1998/10/13','台北巿')
GO
INSERT INTO 通訊錄 (學號, 姓名, 性別, 電話, 生日, 地址)
VALUES ('S225','王美麗','女','03-77777777','1999/05/01','桃園市')
GO
