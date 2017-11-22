BEGIN TRAN
GO
ALTER FUNCTION [dbo].[branskoduToAdi] (@kod varchar(4))
RETURNS varchar(50)
AS
BEGIN
declare @durum varchar(50)

select @durum = bransAdi from SERVISLER
where kodu = @kod


return(@durum)

end
GO
exec sp_vw_sys_upd 'FN', 'dbo', 'branskoduToAdi'
GO
COMMIT
GO
