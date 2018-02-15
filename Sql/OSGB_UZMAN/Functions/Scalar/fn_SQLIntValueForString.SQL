BEGIN TRAN
GO
ALTER function dbo.fn_SQLIntValueForString (@Value bigint, @withOper bit)
returns varchar (200)
with schemabinding
as
begin
  declare @ret varchar (200)
  set @ret = case when @Value is null then 'null' else cast (@Value as varchar (200)) end
  if @withOper = 1
    set @ret = case when @Value is null then ' is ' else ' = ' end + @ret
  return (@ret)
end
GO
exec sp_vw_sys_upd 'FN', 'dbo', 'fn_SQLIntValueForString'
GO
COMMIT
GO
