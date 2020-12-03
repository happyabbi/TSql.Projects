USE 教務系統 
GO
WITH 主管_遞迴
AS (
SELECT 員工字號, 姓名, 1 AS 階層
FROM 主管 WHERE 主管字號 IS NULL
UNION ALL
SELECT 主管.員工字號, 主管.姓名, 階層 + 1
FROM 主管 JOIN 主管_遞迴
ON 主管.主管字號 = 主管_遞迴.員工字號
)
SELECT * FROM 主管_遞迴
ORDER BY 階層, 員工字號
 





 































































