BEGIN TRAN
GO
ALTER FUNCTION [dbo].[fn_haftalikSeansGunleri] (@seansGunleri varchar(7))
RETURNS VARCHAR(50)
AS
BEGIN
	declare @durum VARCHAR(50)

 set  @durum =  isnull(case when substring(@seansGunleri,1,1) = '1' THEN '1' ELSE NULL end ,'') +
                isnull(','+case when substring(@seansGunleri,2,1) = '1' THEN '2' ELSE NULL END,'') +
				isnull(','+case when substring(@seansGunleri,3,1) = '1' THEN '3' ELSE NULL END,'') +
				isnull(','+case when substring(@seansGunleri,4,1) = '1' THEN '4' ELSE NULL end,'') +
				isnull(','+case when substring(@seansGunleri,5,1) = '1' THEN '5' ELSE NULL end,'') +
				isnull(','+case when substring(@seansGunleri,6,1) = '1' THEN '6' ELSE NULL end,'') +
				isnull(','+case when substring(@seansGunleri,7,1) = '1' THEN '7' ELSE NULL END,'') 


return(@durum)

end
GO
exec sp_vw_sys_upd 'FN', 'dbo', 'fn_haftalikSeansGunleri'
GO
COMMIT
GO
