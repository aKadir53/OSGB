BEGIN TRAN
GO
ALTER FUNCTION [dbo].[fn_haftalikSeanssayisi] (@seansGunleri varchar(7))
RETURNS int
AS
BEGIN
	declare @durum int

 set  @durum =  cast(substring(@seansGunleri,1,1) as int) +
                cast(substring(@seansGunleri,2,1) as int) +
                cast(substring(@seansGunleri,3,1) as int) +
cast(substring(@seansGunleri,4,1) as int) +
cast(substring(@seansGunleri,5,1) as int) + 
cast(substring(@seansGunleri,6,1) as int) +
cast(substring(@seansGunleri,7,1) as int) 


return(@durum)

end
GO
exec sp_vw_sys_upd 'FN', 'dbo', 'fn_haftalikSeanssayisi'
GO
COMMIT
GO
