USE 教務系統 
GO
MERGE 客戶 AS c
USING 新客戶 AS nc
ON c.客戶編號 = nc.客戶編號
WHEN MATCHED THEN 
   UPDATE SET
      姓名 = nc.姓名,
      電話 = nc.電話
WHEN NOT MATCHED BY TARGET THEN 
   INSERT (客戶編號, 姓名, 電話) 
   VALUES(nc.客戶編號, nc.姓名, nc.電話)
;




























































