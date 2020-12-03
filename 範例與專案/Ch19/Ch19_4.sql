CREATE FUNCTION dbo.GetUnicodeString
(
 @string nvarchar(50)
)
RETURNS nvarchar(50)
AS
BEGIN
 
 DECLARE @position int, @nstring nvarchar(50), @result nvarchar(50)
 SELECT @nstring = LTRIM(RTRIM(@string))
 SET @position = 1
 
 WHILE @position <= DATALENGTH(@nstring)
 BEGIN   
   IF (SUBSTRING(@nstring, @position, 1) <> '')
   BEGIN
      
          SELECT @result = CONCAT(@result, NCHAR(UNICODE(SUBSTRING(@nstring, @position, 1))))
   END   
   SELECT @position = @position + 1
 END  
 RETURN @result
   
END