USE 教務系統 
GO
SELECT * FROM 課程 
WHERE 課程編號 NOT IN
(SELECT 課程編號 FROM 班級 WHERE 學號='S004')


















































