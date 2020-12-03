USE 教務系統 
GO
MERGE 客戶業績 AS cs
USING 客戶 AS c
ON cs.客戶編號 = c.客戶編號
WHEN MATCHED AND cs.業績目標 > 250 THEN DELETE
WHEN MATCHED THEN
   UPDATE SET
      業績目標 = 業績目標 + 25
WHEN NOT MATCHED BY TARGET THEN 
   INSERT (客戶編號, 業績目標) 
   VALUES(c.客戶編號, 100)
;





















































