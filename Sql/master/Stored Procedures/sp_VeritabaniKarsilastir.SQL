BEGIN TRAN
GO
ALTER -- create
  procedure dbo.sp_VeritabaniKarsilastir @Veritabani1 varchar (20), @veritabani2 varchar (20), @ignoreColid bit
as
begin
  declare @sql varchar (max)
  set @sql = 
    'set nocount on' + char (13) + char (10) +
    'select identity (int, 1, 1) id, min (DBName) DBName, TableName, FieldName, '+case when IsNull (@ignoreColid, 0) = 1 then '' else 'colid, ' end +'fieldtype, sum (x) x, FieldString' + char (13) + char (10) +
    'into #t ' + char (13) + char (10) +
    'from ' + char (13) + char (10) +
    '(' + char (13) + char (10) +
    'select -1 x, ''' + @Veritabani1 +''' DBName, * ' + char (13) + char (10) +
    'from ' + @Veritabani1 +'.dbo.vw_sys2' + char (13) + char (10) +
    'union all' + char (13) + char (10) +
    'select 1 x, ''' + @Veritabani2 +''' DBName, * ' + char (13) + char (10) +
    'from ' + @Veritabani2 +'.dbo.vw_sys2' + char (13) + char (10) +
    ') w' + char (13) + char (10) +
    'group by TableName, FieldName, '+case when IsNull (@ignoreColid, 0) = 1 then '' else 'colid, ' end +'fieldtype, FieldString' + char (13) + char (10) +
    'having sum (x) <> 0' + char (13) + char (10) +
    'order by TableName, FieldName, '+case when IsNull (@ignoreColid, 0) = 1 then '' else 'colid, ' end +'x' + char (13) + char (10) +
    'set nocount off' + char (13) + char (10) +
    'if exists (select 1 from #t) Select * from #t order by id' + char (13) + char (10) +
    'drop table #t' + char (13) + char (10) +
    'set nocount on' + char (13) + char (10) +
    'select identity (int, 1, 1) id, MIN (DBName) DBName, xtype, ownername, name, LTRIM (RTrim (Alltext)) AllText, sum (x) x' + char (13) + char (10) +
    'into #u ' + char (13) + char (10) +
    'from ' + char (13) + char (10) +
    '(' + char (13) + char (10) +
    'select 1 x, ''' + @Veritabani1 +''' DBName, * ' + char (13) + char (10) +
    'from ' + @Veritabani1 +'.dbo.vw_sys' + char (13) + char (10) +
    '--where not Alltext is null' + char (13) + char (10) +
    'union all' + char (13) + char (10) +
    'select -1 x, ''' + @Veritabani2 +''' DBName, * ' + char (13) + char (10) +
    'from ' + @Veritabani2 +'.dbo.vw_sys' + char (13) + char (10) +
    '--where not Alltext is null' + char (13) + char (10) +
    ') w' + char (13) + char (10) +
    'group by xtype, ownername, name, LTRIM (RTrim (Alltext))' + char (13) + char (10) +
    'having sum (x) <> 0' + char (13) + char (10) +
    'order by xtype, ownername, name, x' + char (13) + char (10) +
    'set nocount off' + char (13) + char (10) +
    'if exists (select 1 from #u) Select * from #t order by id' + char (13) + char (10) +
    'drop table #u'
  --PRINT @SQL
  EXEC (@sql)
end
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_VeritabaniKarsilastir'
GO
COMMIT
GO
