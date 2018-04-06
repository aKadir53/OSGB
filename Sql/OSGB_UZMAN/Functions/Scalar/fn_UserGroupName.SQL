BEGIN TRAN
GO
ALTER -- create
  function dbo.fn_UserGroupName (@GrupKodu int)
returns varchar (50)
with schemabinding
as
begin
  declare @ret varchar (50)
  set @ret = (Select ADI from dbo.UserGroups where kodu = @GrupKodu)
  return (@ret)
end
go
exec sp_vw_sys_upd 'FN', 'dbo', 'fn_UserGroupName'
GO
COMMIT
GO
