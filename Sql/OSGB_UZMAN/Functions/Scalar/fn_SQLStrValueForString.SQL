BEGIN TRAN
GO
ALTER function dbo.fn_SQLStrValueForString (@Value varchar (max), @withOper bit)
returns varchar (max)
with schemabinding
as
begin
  declare @ret varchar (max)
  set @ret = case when @Value is null then 'null' else '''' + replace (Replace(@Value, '''', ''''''), char (13) + char (10), ''' + char (13) + char (10) + ' + char (13) + char (10) + '''') + '''' end
  if @withOper = 1
    set @ret = case when @Value is null then ' is ' else ' = ' end + @ret
  return (@ret)
end
GO
exec sp_vw_sys_upd 'FN', 'dbo', 'fn_SQLStrValueForString'
GO
COMMIT
GO
