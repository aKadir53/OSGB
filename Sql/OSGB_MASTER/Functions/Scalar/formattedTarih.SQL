BEGIN TRAN
GO
ALTER FUNCTION [dbo].[formattedTarih] (@tarih varchar(10))
RETURNS varchar(15)
AS
BEGIN
	declare @durum varchar(15)

	set @durum = substring(@tarih,7,2)+'.'+substring(@tarih,5,2)+'.'+substring(@tarih,1,4)


return(@durum)

end
GO
exec sp_vw_sys_upd 'FN', 'dbo', 'formattedTarih'
GO
COMMIT
GO
