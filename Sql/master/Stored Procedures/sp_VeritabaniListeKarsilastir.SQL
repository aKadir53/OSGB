BEGIN TRAN
GO
ALTER -- create
  procedure [dbo].[sp_VeritabaniListeKarsilastir] @DBMask varchar (20) = null, @ObjMask varchar (20) = null, @Tip bit = 1, @ignoreColid bit = 0
as
begin
  set nocount on

  select identity (int, 1, 1) RecID, name DBName, status,
    cast (case when name = DB_NAME () then 1 else 0 end as bit) Curr, 
    cast (1 as bit) CanConnect, 
    cast (0 as bit) vw_SysExists, 
    cast (0 as bit) vw_Sys2Exists, 
    cast (case when @ObjMask is null then 1 else 0 end as bit) ObjectExists
  into #t
  from master.dbo.sysdatabases
  where (@DBMask is null or name like @DBMask)
  order by name

  alter table #t add primary key clustered (RecID)

  declare abc cursor
  for
  select DBName 
  -- select *
  from #t

  declare 
    @DBName varchar (50),
    @DBNameOld varchar (50),
    @SQL varchar (1000),
    @hata bit
  open abc
  
  fetch abc into @dbName
  while @@FETCH_STATUS = 0
  begin
    set @hata = 0
    set @SQL = 'IF EXISTS (Select 1 from ['+@DBName+'].dbo.sysobjects so where xtype = ''V'' and name = ''vw_sys'') Update #t set vw_SysExists = 1 where DBname = '''+@DBName + ''''
    begin try
      exec (@SQL)
    end try
    begin catch
      Update #t set CanConnect = 0 where DBname = @DBName and Canconnect = 1
      set @hata = 1
    end catch

    if @HAta = 0
    begin
      set @SQL = 'IF EXISTS (Select 1 from ['+@DBName+'].dbo.sysobjects so where xtype = ''V'' and name = ''vw_Sys2'') Update #t set vw_Sys2Exists = 1 where DBname = '''+@DBName + ''''
      begin try
        exec (@SQL)
      end try
      begin catch
        Update #t set CanConnect = 0 where DBname = @DBName and Canconnect = 1
      end catch
    end
  
    if @HAta = 0 and not @ObjMask is null
    begin
      set @SQL = 'IF EXISTS (Select 1 from ['+@DBName+'].dbo.sysobjects so where name like '''+@ObjMask+''') Update #t set ObjectExists = 1 where DBname = '''+@DBName + ''''
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

  delete from #t where canconnect = 0 or vw_SysExists = 0 or vw_Sys2Exists = 0 or ObjectExists = 0

  create table #t3 
    (RecId int identity (1, 1) not null, 
	 primary key clustered (RecID),
	 DBName1 varchar (50),
	 DBName2 varchar (50))

  if @Tip = 1
  begin
    insert into #t3 (DBName1, DBName2)
    select t1.DBName DBName1, t2.DBName DBName2
    from #t t1
    inner join #t t2 on t1.dbname < t2.dbname
    order by t1.dbname, t2.dbname
  end
  else begin
    select identity (int, 1, 1) RecID, DBName 
    into #t2
    from #t
    order by DBName

    insert into #t3 (DBName1, DBName2)
    select t1.DBName DBName1, t2.DBName DBName2
    from #t2 t1
    inner join #t2 t2 on T2.RecID = T1.RecID + 1
    drop table #t2
  end

  drop table #t

  set nocount off

  declare abc cursor for
  select DBName1, DBName2
  from #t3

  OPEN abc

  fetch abc into @DBNameOld, @dbName
  while @@fetch_status = 0
  begin
    select @DBNameOld, @DBName
    exec sp_VeritabaniKarsilastir @DBNameOld, @DBName, @ignoreColid
    fetch abc into @DBNameOld, @dbName
  end

  close abc
  deallocate abc
  drop table #t3
end
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_VeritabaniListeKarsilastir'
GO
COMMIT
GO
