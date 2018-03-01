BEGIN TRAN
GO
ALTER procedure dbo.sp_CreateGuncellemeTakipScriptTrigger @TableName varchar (200), @KeyFieldList varchar (200), @Create bit, @Apply bit
as
begin
  declare 
    @sql varchar (max),
    @AllFieldsListI varchar (max) = '',
    @AllFieldsListC varchar (max) = '',
    @CompareKeyFields varchar (max) = '',
    @CompareKeyFieldsi varchar (max),
    @KeyValuesList varchar (max) = '',
    @KeyValuesListi varchar (max),
    @AllFieldsValuesList varchar (max) = '',
    @FieldName varchar (200),
    @FieldType varchar (200),
    @OrderedKeyFields varchar (200) = '',
    @JoinKeyFieldsdi varchar (200) = '',
    @JoinKeyFieldsui varchar (200),
    @UpdateFieldList varchar (max) = '',
    @FuncType varchar (10),
    @IsIdentity bit,
    @IsIdentityInsert bit = 0,
    @IsNullable bit,
	@CastedFieldName varchar (300),
	@FuncParam varchar (20)

  declare abc cursor for
  select FieldName, FieldType, IsIdentity, isNullable
  from vw_sys2
  where Tablename = @TableName
    and IsComputed = 0
  order by Colid

  open abc

  fetch abc into @fieldName, @FieldType, @IsIdentity, @IsNullable
  while @@FETCH_STATUS = 0
  begin
    set @FuncType = 
      case 
        when @FieldType in ('char', 'nchar', 'nvarchar', 'varchar', 'text', 'image') then 'Str'
        when @FieldType in ('bit', 'bigint', 'smallint', 'tinyint', 'int') then 'Int'
        when @FieldType in ('datetime') then 'Date'
        when @FieldType in ('decimal', 'float', 'money', 'numeric') then 'Dec'
        else ''
      end
    set @FuncParam = 
      case 
        when @FieldType in ('datetime') then ', 1'
        else ''
      end
--text, ntext, or image
    if not @IsIdentity = 1 or exists (select 1 from dbo.StrToTable (@KeyFieldList, ',') where DataValue = @FieldName)
    begin
      if @IsIdentity = 1 SET @IsIdentityInsert = 1
      SET @AllFieldsListI = @allFieldsListI + @FieldName + ', '
      set @AllFieldsValuesList = @AllFieldsValuesList + 'dbo.fn_SQL' + @FuncType + 'ValueForString ('+@FieldName+', 0' + @FuncParam + ') +' + Char (39) + ', ' + Char (39) + ' + ' + char (13) + char (10) + '    '
      SET @AllFieldsListC = @allFieldsListC + @FieldName + ', '
    end
    if exists (select 1 from dbo.StrToTable (@KeyFieldList, ',') where DataValue = @FieldName)
    begin
      set @CompareKeyFields = @CompareKeyFields + @FieldName + '' + Char (39) + ' + dbo.fn_SQL' + @FuncType + 'ValueForString ($$$'+@FieldName+', 1' + @FuncParam + ') + ' + Char (39) + ' and '
      set @OrderedKeyFields = @OrderedKeyFields + @FieldName + ','
      set @KeyValuesList = @KeyValuesList + 'dbo.fn_SQL' + @FuncType + 'ValueForString ($$$'+@FieldName+', 0' + @FuncParam + ') + ' + Char (39) + ',' + Char (39) + ' + '
      set @JoinKeyFieldsdi = 
        @JoinKeyFieldsdi + 
          case when @IsNullable = 1 then 'ISNULL (' else '' end + 
          '$$$'+@FieldName+
          case when @IsNullable = 1 then ', ' + case when @FuncType = 'Str' then '' + Char (39) + '' + Char (39) + '' else '0' end + ')' else '' end + ' = '+ 
          case when @IsNullable = 1 then 'ISNULL (' else '' end + 
          'i.'+@FieldName+ 
          case when @IsNullable = 1 then ', ' + case when @FuncType = 'Str' then '' + Char (39) + '' + Char (39) + '' else '0' end + ')' else '' end + 
          ' and '
    end
    else begin
      if not @IsIdentity = 1
      begin
        SET @UpdateFieldList = @UpdateFieldList + 'case when dbo.fn_SQL' + @FuncType + 'ValueForString (d.'+@FieldName+', 0' + @FuncParam + ') <> dbo.fn_SQL' + @FuncType + 'ValueForString (i.'+@FieldName+', 0' + @FuncParam + ') then ' + Char (39) + ''+@FieldName+' = ' + Char (39) + ' + dbo.fn_SQL' + @FuncType + 'ValueForString (i.'+@FieldName+', 0' + @FuncParam + ') + ' + Char (39) + ',' + Char (39) + ' else ' + Char (39) + '' + Char (39) + ' end +' + char (13) + char (10) + '    '
      end
    end
    fetch abc into @fieldName, @FieldType, @IsIdentity, @IsNullable
  end

  close abc

  deallocate abc

  if @allFieldsListI <> '' 
    set @allFieldsListI = SUBSTRING (@allFieldsListI, 1, len (@allFieldsListI + 'X') - 3)

  if @allFieldsListC <> '' 
    set @allFieldsListC = SUBSTRING (@allFieldsListC, 1, len (@AllFieldsListC + 'X') - 3)

  if @AllFieldsValuesList <> '' 
    set @AllFieldsValuesList = SUBSTRING (@AllFieldsValuesList, 1, len (@AllFieldsValuesList + 'X') - 16)

  if @UpdateFieldList <> '' 
    set @UpdateFieldList = SUBSTRING (@UpdateFieldList, 1, len (@UpdateFieldList + 'X') - 9)

  if @CompareKeyFields <> '' 
  begin
    set @CompareKeyFields = SUBSTRING (@CompareKeyFields, 1, len (@CompareKeyFields + 'X') - 9)
    set @CompareKeyfieldsi = Replace (@CompareKeyFields, '$$$', 'i.')
    set @CompareKeyfields = Replace (@CompareKeyFields, '$$$', '')
  end

  if @OrderedKeyFields <> '' 
    set @OrderedKeyFields = SUBSTRING (@OrderedKeyFields, 1, len (@OrderedKeyFields + 'X') - 2)

  if @KeyValuesList <> '' 
  begin
    set @KeyValuesList = SUBSTRING (@KeyValuesList, 1, len (@KeyValuesList + 'X') - 10)
    set @KeyValuesListi = Replace (@KeyValuesList, '$$$', 'i.')
    set @KeyValuesList = Replace (@KeyValuesList, '$$$', '')
  end

  if @JoinKeyFieldsdi <> '' 
  begin
    set @JoinKeyFieldsdi = SUBSTRING (@JoinKeyFieldsdi, 1, len (@JoinKeyFieldsdi + 'X') - 6)
    set @JoinKeyFieldsui = Replace (@JoinKeyFieldsdi, '$$$', 'u.')
    set @JoinKeyFieldsdi = Replace (@JoinKeyFieldsdi, '$$$', 'd.')
  end

  set @sql = 
    case when @Create = 1 then 'CREATE' else 'ALTER' end +' -- create -- drop' + char (13) + char (10) +
    ' TRIGGER [dbo].['+ @TableName +'_TakipTrg]' + char (13) + char (10) +
    '   ON  [dbo].['+ @TableName +']' + char (13) + char (10) +
    '   AFTER DELETE,INSERT, UPDATE' + char (13) + char (10) +
    'AS ' + char (13) + char (10) +
    'BEGIN' + char (13) + char (10) +
    '  set nocount on' + char (13) + char (10) +
    '  declare ' + char (13) + char (10) +
    '    @TableName varchar (200) = ' + Char (39) + ''+ @TableName +'' + Char (39) + ',' + char (13) + char (10) +
    '    @KeyFields varchar (200) = ' + Char (39) + '' + @OrderedKeyFields +'' + Char (39) + '' + char (13) + char (10) +
    char (13) + char (10) +
    '  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)' + char (13) + char (10) +
    '  select ' + char (13) + char (10) +
    '    @TableName, @KeyFields, '+ @KeyValuesList +', ' + Char (39) + 'D' + Char (39) + ', 0,' + char (13) + char (10) +
    '    ' + Char (39) + 'DELETE FROM dbo.'+ @TableName +' where '+ @CompareKeyFields + char (13) + char (10) +
    '  from deleted d' + char (13) + char (10) +
    '  where not exists (select 1 from inserted i where ' + @JoinKeyFieldsdi +')' + char (13) + char (10) +
    char (13) + char (10) +
    '  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)' + char (13) + char (10) +
    '  select ' + char (13) + char (10) +
    '    @TableName, @KeyFields, '+ @KeyValuesList +', ' + Char (39) + 'I' + Char (39) + ', ' + case when IsNull (@IsIdentityInsert, 0) = 1 then '1' else '0' end + ',' + char (13) + char (10) +
    '    ' + Char (39) + 'IF NOT EXISTS (SELECT 1 from dbo.'+ @TableName +' where '+ @CompareKeyFields +'+' + Char (39) + ')' + Char (39) + '+char (13) + char (10) + ' + char (13) + char (10) +
    '    ' + Char (39) + 'insert into dbo.'+ @TableName +' ('+ @AllFieldsListI +')' + Char (39) + '+char (13) + char (10) + ' + char (13) + char (10) +
    '    ' + Char (39) + 'Select ' + Char (39) + '+ ' + @AllFieldsValuesList + char (13) + char (10) +
    '  from inserted i' + char (13) + char (10) +
    '  where not exists (select 1 from deleted d where ' + @JoinKeyFieldsdi +')' + char (13) + char (10) +
    char (13) + char (10) +
    '  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)' + char (13) + char (10) +
    '  select @TableName, @KeyFields, '+ @KeyValuesListi +', ' + Char (39) + 'U' + Char (39) + ', 0,' + char (13) + char (10) +
    '    ' + Char (39) + 'Update '+ @TableName +'' + Char (39) + '+char (13) + char (10) +' + Char (39) + '  SET ' + Char (39) + '+char (13) + char (10) + ' + Char (39) + '    ' + Char (39) + ' +' + char (13) + char (10) +
    '    REVERSE (SUBSTRING (REvERSE (' + @UpdateFieldList + '), 2, 8000)) +' + char (13) + char (10) +
    '    char (13) + char (10) + ' + Char (39) + 'WHERE '+ @CompareKeyFieldsi + char (13) + char (10) +
    '  from inserted i' + char (13) + char (10) +
    '  inner join deleted d on ' + @JoinKeyFieldsdi + char (13) + char (10) +
    '  inner join ' + char (13) + char (10) +
    '    (SELECT ' + @OrderedKeyFields + char (13) + char (10) +
    '     FROM' + char (13) + char (10) +
    '     (select '+ @AllFieldsListC + char (13) + char (10) +
    '      from' + char (13) + char (10) +
    '      (select -1 x, '+ @AllFieldsListC + char (13) + char (10) +
    '       from deleted' + char (13) + char (10) +
    '       union all' + char (13) + char (10) +
    '       select 1 x, '+ @AllFieldsListC + char (13) + char (10) +
    '       from inserted) U' + char (13) + char (10) +
    '      group by '+ @AllFieldsListC + char (13) + char (10) +
    '      having sum (x) <> 0)w' + char (13) + char (10) +
    '     group by ' + @OrderedKeyFields +') u on ' + @JoinKeyFieldsui + char (13) + char (10) +
    '  set nocount off' + char (13) + char (10) +
    'END'
  if IsNull (@Apply, 0) = 1
    EXEC (@sql)
  else
    PRINT @sql
end
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_CreateGuncellemeTakipScriptTrigger'
GO
COMMIT
GO
