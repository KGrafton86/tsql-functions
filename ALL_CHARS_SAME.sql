/*
input must be a string
number returned indicates how many characters are different from the first character
a return value of 0 means the string is of all the same character
*/

CREATE FUNCTION dbo.ALL_CHARS_SAME(@string NVARCHAR(MAX))

RETURNS INT AS
BEGIN
  DECLARE @return AS INT
  SET @return = LEN(REPLACE(@string, LEFT(@string,1),''))
  RETURN @return
END;
