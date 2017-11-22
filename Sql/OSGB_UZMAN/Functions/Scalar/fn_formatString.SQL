BEGIN TRAN
GO
ALTER function dbo.fn_formatString (@s varchar(MAX), 
                @params varchar(MAX), @separator char(1) = ',')
returns varchar(MAX)
as
begin
declare @p varchar(MAX)
declare @paramlen int

set @params = @params + @separator
set @paramlen = len(@params)
while not @params = ''
begin
    set @p = left(@params+@separator, charindex(@separator, @params)-1)
    set @s = STUFF(@s, charindex('%s', @s), 2, @p)
    set @params = substring(@params, len(@p)+2, @paramlen)
end
return @s
end
GO
exec sp_vw_sys_upd 'FN', 'dbo', 'fn_formatString'
GO
COMMIT
GO
