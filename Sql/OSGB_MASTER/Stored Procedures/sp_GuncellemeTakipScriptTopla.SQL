BEGIN TRAN
GO
ALTER -- create -- drop
 procedure dbo.sp_GuncellemeTakipScriptTopla
as
begin
  declare abc cursor for
  Select name
  from master.dbo.sysdatabases 
  where name like 'OSGB[_]%' 
    and name <> 'OSGB_MASTER'
  order by name 

  declare 
    @DBName varchar (200),
    @SQL2 varchar (2000)

  open abc

  fetch abc into @DBName
  while @@fetch_status = 0
  begin
    PRINT '['+@DBName+']'
    set NOCOUNT ON
    SET @SQL2 = 
      'update g set Islendi = 0'+char (13) + char (10) +
      'from '+'['+@DBName+']'+'.dbo.GuncellemeTakipScript g'+char (13) + char (10) +
      'where Islendi is null'
    EXEC (@SQL2)
    SET @SQL2 = 
      'insert into OSGB_MASTER.dbo.GuncellemeTakipScriptHavuz (DBName, sourceid, TableName, KeyFields, KeyValues, Mode, Script, LogTime, Islendi, IdentityInsert)'+char (13) + char (10) +
      'select '''+@DBName+''' DBName, id sourceid, TableName, KeyFields, KeyValues, Mode, Script, LogTime, Islendi, IdentityInsert'+char (13) + char (10) +
      '-- update g set Islendi = 1'+char (13) + char (10) +
      '-- select *'+char (13) + char (10) +
      'from '+'['+@DBName+']'+'.dbo.GuncellemeTakipScript g'+char (13) + char (10) +
      'where Islendi = 0 '+char (13) + char (10) +
      'order by id'
    EXEC (@SQL2)
    SET @SQL2 = 
      'update g set Islendi = 1'+char (13) + char (10) +
      'from '+'['+@DBName+']'+'.dbo.GuncellemeTakipScript g'+char (13) + char (10) +
      'inner join OSGB_MASTER.dbo.GuncellemeTakipScriptHavuz h on h.DBName = '''+@DBName+''''+char (13) + char (10) +
      'and H.Sourceid = g.id'+char (13) + char (10) +
      'where g.Islendi = 0'
    SET NOCOUNT OFF
    EXEC (@SQL2)
    fetch abc into @DBName
  end

  close abc

  deallocate abc
end
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_GuncellemeTakipScriptTopla'
GO
COMMIT
GO
