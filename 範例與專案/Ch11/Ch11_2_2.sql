USE 教務系統 
GO
CREATE VIEW 學生聯絡_檢視 (學號, 學生姓名, 學生電話)
AS
SELECT 學號, 姓名, 電話 FROM 學生
GO
SELECT * FROM 學生聯絡_檢視



 































































