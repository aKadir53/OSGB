BEGIN TRAN
GO
 ALTER 
  procedure [dbo].[sp_SearchStringInDB] @SearchStr varchar (100), @ResultCaseSensitive bit, @SearchCaseSensitive bit, @TableWildCard varchar (20), @FieldWildCard varchar (20), @ShowResults bit
as
begin
  -- ‹÷ 20150521 case sensitive parametresi eklendi...
  SET NOCOUNT ON
  -- drop table SearchResults
  declare 
    @Strx varchar (100),
    @ixx int,
    @b bit
  
  SET @StrX = ''
  SET @ixx = 1
  SET @b = 0

  WHILE @ixx <= len ('X' + @SearchStr + 'X') - 2
  BEGIN
    IF Substring (@Searchstr, @ixx, 1) = '[' SET @b = 1
    ELSE IF Substring (@Searchstr, @ixx, 1) = ']' 
    BEGIN
      SET @b = 0
      SET @StrX = @StrX + '_'
    END
    ELSE IF @b = 0 SET @StrX = @StrX + Substring (@Searchstr, @ixx, 1)

    SET @ixx = @ixx + 1
  END

  PRINT @StrX

  IF NOT EXISTS (SELECT 1 from sysobjects so where name = 'SearchResults' and Type = 'U') 
  BEGIN
    CREATE TABLE SearchResults (
      RecID int Identity (1, 1) NOT NULL,
      SearchID int,
      CONSTRAINT PK_SearchResults PRIMARY KEY CLUSTERED (RecID),
      Search varchar (100),
      SearchCaseSensitive bit,
      ResultCaseSensitive bit,
      TableName varchar (100),
      FieldName varchar (200),
      Value varchar (4000),
      ValueCount int,
      RecDateTime datetime,
      ReplaceWith varchar (4000),
      Replaced bit 
    )
  END

  IF NOT EXISTS (SELECT 1 from sysobjects so where name = 'SearchProgress' and Type = 'U') 
  BEGIN
    CREATE TABLE SearchProgress (
      RecID int Identity (1, 1) NOT NULL,
      CONSTRAINT PK_SearchProgress PRIMARY KEY CLUSTERED (RecID),
      TableName varchar (100),
      FieldName varchar (200),
      Processed bit
    )
  END

  delete from SearchProgress

  INSERT INTO SearchProgress (TableName, FieldName, Processed)
  select so.name _Table, sc.name _Field, 0
  from sysobjects so
  inner join syscolumns sc on so.id = sc.id 
    and not so.name like '[_]%' 
    and so.type = 'U'
  inner join systypes st on st.xusertype = sc.xusertype
  where sc.name <> 'SirketKod'
    and st.name like '%char%'
    and sc.prec >= Len ('X' + @StrX + 'X') - 2 
    and not so.name IN ('SearchResults', 'SearchProgress')
    and (@TableWildCard is Null
      or so.name like @TableWildCard)
    and (@FieldWildCard is Null
      or sc.name like @FieldWildCard)
  order by so.name, sc.colid

  declare abc cursor for
  select so.name _Table, sc.name _Field
  from sysobjects so
  inner join syscolumns sc on so.id = sc.id 
    and not so.name like '[_]%' 
    and so.type = 'U'
  inner join systypes st on st.xusertype = sc.xusertype
  where sc.name <> 'SirketKod'
    and st.name like '%char%'
    and sc.prec >= Len ('X' + @StrX + 'X') - 2 
    and not so.name IN ('SearchResults', 'SearchProgress')
    and (@TableWildCard is Null
      or so.name like @TableWildCard)
    and (@FieldWildCard is Null
      or sc.name like @FieldWildCard)
  order by so.name, sc.colid

  declare 
    @Table varchar (100),
    @Field varchar (100),
    @SQL varchar (max),
    @SearchID int

  open abc

  fetch abc into @Table, @Field

  SET @SearchID = ISNULL ((SELeCT MAX (SearchID) FROM SearchResults), 0) + 1

  while @@fetch_status = 0
  BEGIN
    SET @SQL = 
      'IF EXISTS (SELECT 1 FROM [' + @Table + '] with (nolock) where [' + @Field + '] COLLATE TURKISH_C' + case when IsNull (@SearchCaseSensitive, 0) = 1 then 'S' else 'I' end + '_AS like ''%' + @SearchStr + '%'' COLLATE TURKISH_C' + case when IsNull (@SearchCaseSensitive, 0) = 1 then 'S' else 'I' end + '_AS)' + CHAR (13) + CHAR (10) +
      'INSERT INTO SearchResults (SearchID, Search, SearchCaseSensitive, ResultCaseSensitive, TableName, FieldName, Value, ValueCount, RecDateTime)' + CHAR (13) + CHAR (10) +
      'SELECT ' + cast (@SearchID as varchar (10)) + ',  ''' + @SearchStr + ''', ' + cast (@SearchCaseSensitive as varchar (1)) + ', ' + cast (@ResultCaseSensitive as varchar (1)) + ', ''[' + @Table + ']'', ''[' + @Field + ']'', CASE WHEN len (''X'' + [' + @Field + '] + ''X'') > 752 THEN ''%'' + SUBSTRING ([' + @Field + '], 1, 748) + ''%'' ELSE [' + @Field + '] END COLLATE TURKISH_C' + case when IsNull (@ResultCaseSensitive, 0) = 1 then 'S' else 'I' end + '_AS, Count (*), Getdate () ' + CHAR (13) + CHAR (10) +
      'FROM [' + @Table + '] with (nolock) ' + CHAR (13) + CHAR (10) +
      'where [' + @Field + '] COLLATE TURKISH_C' + case when IsNull (@SearchCaseSensitive, 0) = 1 then 'S' else 'I' end + '_AS like ''%' + @SearchStr + '%'' COLLATE TURKISH_C' + case when IsNull (@SearchCaseSensitive, 0) = 1 then 'S' else 'I' end + '_AS' + CHAR (13) + CHAR (10) +
      'GROUP BY CASE WHEN len (''X'' + [' + @Field + '] + ''X'') > 752 THEN ''%'' + SUBSTRING ([' + @Field + '], 1, 748) + ''%'' ELSE [' + @Field + '] END COLLATE TURKISH_C' + case when IsNull (@ResultCaseSensitive, 0) = 1 then 'S' else 'I' end + '_AS ' + CHAR (13) + CHAR (10) +
      'ORDER BY CASE WHEN len (''X'' + [' + @Field + '] + ''X'') > 752 THEN ''%'' + SUBSTRING ([' + @Field + '], 1, 748) + ''%'' ELSE [' + @Field + '] END COLLATE TURKISH_C' + case when IsNull (@ResultCaseSensitive, 0) = 1 then 'S' else 'I' end + '_AS '
    EXEC (@SQL)
    -- PRINT @SQL
    SET @SQL = 'UPDATE SearchProgress Set Processed = 1 where TableName = ''' + @Table + ''' and FieldName = ''' + @Field + ''''
    EXEC (@SQL)
    -- PRINT @SQL
    fetch abc into @Table, @Field
  END

  close abc

  deallocate abc
  if IsNull (@ShowResults, 0) = 1
    select * 
	from SearchResults 
	where SearchID = @SearchID
   else
    PRINT 'SearchID = ' + cast (@searchID as varchar)
  SET NOCOUNT OFF
end
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_SearchStringInDB'
GO
COMMIT
GO
