USE 教務系統 
GO
DECLARE @book_Id int, @category_Id int
CREATE TABLE TextBooks (book_Id int, category_Id int)
SET @book_Id = 0
SET @category_Id = 0 
WHILE @book_Id < 2
BEGIN
   SET @book_Id = @book_Id + 1
   WHILE @category_Id < 3
   BEGIN 
      SET @category_Id = @category_Id + 1
      INSERT INTO TextBooks 
      VALUES(@book_Id, @category_Id)
   END
   SET @category_Id = 0 
END
SELECT * FROM TextBooks
DROP TABLE TextBooks




 































































