BEGIN TRAN
GO
ALTER function dbo.fn_SQLDateValueForString (@Value datetime, @withOper bit, @withTypecast bit)
returns varchar (200)
with schemabinding
as
begin
  declare @ret varchar (200)
  set @ret = 
    case 
      when @Value is null then 'null' 
      else 
        case when @withTypecast = 1 then 'CAST (' else '' end + '''' + 
        convert (varchar, @Value, case when floor (cast (@value as decimal (28, 13))) = cast (@value as decimal (28, 13)) then 112 else 121 end) + '''' + 
        case when @withTypecast = 1 then ' as datetime)' else '' end end
  if @withOper = 1
    set @ret = case when @Value is null then ' is ' else ' = ' end + @ret
  return (@ret)
end
GO
exec sp_vw_sys_upd 'FN', 'dbo', 'fn_SQLDateValueForString'
GO
COMMIT
GO
