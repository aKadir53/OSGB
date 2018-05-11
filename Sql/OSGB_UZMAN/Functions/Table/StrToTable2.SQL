BEGIN TRAN
GO
ALTER FUNCTION [dbo].[StrToTable2]
(	@StrToSplit 	VARCHAR(5000),
    @StrToSplit1 	VARCHAR(5000),
	@Delimiter 	CHAR(1)
)
RETURNS @SplitTable Table
(	DataValue	VARCHAR(50) COLLATE TURKISH_CI_AS,
    DataValue1	VARCHAR(50) COLLATE TURKISH_CI_AS,
	ValueAt		Numeric(9,0) IDENTITY(1,1)
)
AS
BEGIN
DECLARE @value varchar(5000), @end integer, @start integer,
        @value1 varchar(5000)
  
  IF LEN(@StrToSplit) = 0
     RETURN
	SET @Delimiter = LTRIM(RTRIM(@Delimiter))
	SET @start = 1
	SET @end =
           CHARINDEX(@Delimiter, @StrToSplit, @start )
  IF @end = 0
  BEGIN
     
     SET @value = SUBSTRING(@StrToSplit, @start, LEN(@StrToSplit))
     SET @value1 = SUBSTRING(@StrToSplit1, @start, LEN(@StrToSplit1))

     INSERT INTO @SplitTable SELECT @value,@value1
  END
  ELSE BEGIN
  	 WHILE @end >= 0
  	 BEGIN	
    		SET @value = SUBSTRING(@StrToSplit, @start, ABS(@end - @start) )
    		SET @value1 = SUBSTRING(@StrToSplit1, @start, ABS(@end - @start) )
            INSERT INTO @SplitTable SELECT @value,@value1
    		IF @end = 0 BREAK

    		SET @start = @end + 1
    		SET @end = CHARINDEX(@Delimiter, @StrToSplit, @start)
  	 END
 END
 RETURN
END
GO
exec sp_vw_sys_upd 'TF', 'dbo', 'StrToTable2'
GO
COMMIT
GO
