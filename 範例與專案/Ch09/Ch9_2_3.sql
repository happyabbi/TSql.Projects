USE 教務系統 
GO
SELECT 教授.教授編號, 員工.姓名, 教授.職稱, 員工.薪水
FROM 教授 LEFT JOIN 員工 
ON 教授.身份證字號 = 員工.身份證字號
























































