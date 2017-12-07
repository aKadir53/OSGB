BEGIN TRAN
GO
ALTER -- create
  procedure [dbo].[sp_vw_sys_GetCheckDBList]
as
begin
  set nocount on

  select name DBName, status,
    cast (case when name = DB_NAME () then 1 else 0 end as bit) Curr, 
    cast (1 as bit) CanConnect, 
    cast (0 as bit) CheckSPExists, 
    cast (0 as bit) TrackTableExists
  into #t
  from master.dbo.sysdatabases
  order by name

  declare abc cursor
  for
  select DBName 
  -- select *
  from #t

  declare 
    @DBName varchar (50),
    @SQL varchar (1000),
    @hata bit
  open abc
  
  fetch abc into @dbName
  while @@FETCH_STATUS = 0
  begin
    set @hata = 0
    set @SQL = 'IF EXISTS (Select 1 from ['+@DBName+'].dbo.sysobjects so where xtype = ''P'' and name = ''sp_vw_sys_check'') Update #t set CheckSpExists = 1 where DBname = '''+@DBName + ''''
    begin try
      exec (@SQL)
    end try
    begin catch
      Update #t set CanConnect = 0 where DBname = @DBName and Canconnect = 1
      set @hata = 1
    end catch

    if @HAta = 0
    begin
      set @SQL = 'IF EXISTS (Select 1 from ['+@DBName+'].dbo.sysobjects so where xtype = ''V'' and name = ''vw_DDLEvents'') Update #t set TrackTableExists = 1 where DBname = '''+@DBName + ''''
      begin try
        exec (@SQL)
      end try
      begin catch
        Update #t set CanConnect = 0 where DBname = @DBName and Canconnect = 1
      end catch
    end
    fetch abc into @dbName
  end

  close abc

  deallocate abc

  delete from #t where canconnect = 0 or checkspExists = 0

  set nocount off

  select * 
  from #t

  drop table #t
end
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_vw_sys_GetCheckDBList'
GO
COMMIT
GO
