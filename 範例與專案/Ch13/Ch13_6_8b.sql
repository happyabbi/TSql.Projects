DECLARE @type int
SET @type = 2
DECLARE @result varchar(10)
SET @result = CHOOSE ( @type, '全票', '半票', '敬老票', '免票')
PRINT @result
































































