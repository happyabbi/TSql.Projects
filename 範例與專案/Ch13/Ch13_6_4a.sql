USE 教務系統 
GO
DECLARE @type varchar(12), @age int
SET @age = 25
SET @type = 
   CASE 
      WHEN @age < 15 THEN '小孩'
      WHEN @age < 60 THEN '成人'
      WHEN @age < 100 THEN '老人'
      ELSE 'Free'
   END
PRINT @type








 































































