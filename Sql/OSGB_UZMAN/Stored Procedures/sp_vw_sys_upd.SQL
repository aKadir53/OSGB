BEGIN TRAN
GO
ALTER -- create
  procedure sp_vw_sys_upd @xtype sysname, @xownername sysname, @xobjectname sysname 
as
begin
  if not exists (select 1 from vw_sys_x t where t.xtype = @xtype and t.Ownername = @xownername and t.name = @xobjectname)
    insert into vw_sys_x (xtype, Returns, OwnerName, name, ParentObjName, OwnerID, CreateDateTime, AllText, InsertDate, InsertHostName, UpdateDate, UpdateHostName)
    select xtype, Returns, OwnerName, name, ParentObjName, OwnerID, CreateDateTime, AllText, getdate () InsertDate, host_name () InsertHostName, null UpdateDate, null UpdateHostName
    from vw_sys
    where xtype = @xtype
      and OwnerName = @xownername
      and name = @xobjectname
  else if not exists (select 1 from vw_sys t where t.xtype = @xtype and t.Ownername = @xownername and t.name = @xobjectname)
    delete vw_sys_x 
    where xtype = @xtype 
      and OwnerName = @xownername 
      and name = @xobjectname
  else
    update s2
      set
        s2.AllText = s1.AllText,
        s2.Returns = s1.Returns, 
        s2.ParentObjName = s1.ParentObjName, 
        s2.OwnerID = s1.OwnerID, 
        s2.CreateDateTime = s1.CreateDateTime , 
        s2.UpdateDate = GETDATE (), 
        s2.UpdateHostName = HOST_NAME ()
    from vw_sys s1
    inner join vw_sys_x s2 on s1.xtype = s2.xtype
      and s1.OwnerName = s2.OwnerName
      and s1.name = s2.name
    where s1.xtype = @xtype
      and s1.OwnerName = @xownername
      and s1.name = @xobjectname
      and (IsNull (s2.AllText, '') <> IsnUll (s1.AllText, '')
        or IsNull (s2.Returns, '') <> IsnUll (s1.Returns, '')
        or IsNull (s2.ParentObjName, '') <> IsnUll (s1.ParentObjName, '')
        or IsNull (s2.OwnerID, '') <> IsnUll (s1.OwnerID, '')
        or IsNull (s2.CreateDateTime, '19000101') <> IsnUll (s1.CreateDateTime, '19000101'))
end
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_vw_sys_upd'
GO
COMMIT
GO
