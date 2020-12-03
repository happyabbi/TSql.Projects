USE 教務系統
GO
CREATE TRIGGER 員工管理
ON 員工 
AFTER DELETE, UPDATE
AS 
IF EXISTS (SELECT * FROM 學生
           WHERE 姓名 = (
          SELECT 姓名 FROM Deleted))
BEGIN
  RAISERROR('不合法姓名!',1,1)
  ROLLBACK TRAN
END
