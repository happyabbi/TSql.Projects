USE 教務系統 
GO
CREATE TABLE 主管 (
  員工字號 char(10) NOT NULL,
  姓名 varchar(12) NULL,
  主管字號 char(10) NULL,
  PRIMARY KEY (員工字號)
) 
GO
INSERT INTO 主管 
VALUES ('A123456789','陳慶新',NULL)
GO
INSERT INTO 主管 
VALUES ('A222222222','楊金欉','A123456789')
GO
INSERT INTO 主管 
VALUES ('H098765432','李鴻章','A222222222')
GO
INSERT INTO 主管 
VALUES ('F213456780','陳小安','E444006666')
GO
INSERT INTO 主管 
VALUES ('A221304680','郭富城','F213456780')
GO
INSERT INTO 主管 
VALUES ('F332213046','張無忌','D444403333')
GO
INSERT INTO 主管 
VALUES ('D333300333','王心零','A222222222')
GO
INSERT INTO 主管 
VALUES ('D444403333','劉得華','E444006666')
GO
INSERT INTO 主管 
VALUES ('E444006666','小龍女','A123456789')
GO

















 































































