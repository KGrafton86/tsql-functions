/* finds minimum of 3 integers 
reqired for LEVENSHTEIN */

create function dbo.MIN3(@a int, @b int, @c int)
returns int as
begin
  declare @min int
  set @min = @a
  if @b < @min set @min = @b
  if @c < @min set @min = @c
  return @min
end;
GO
