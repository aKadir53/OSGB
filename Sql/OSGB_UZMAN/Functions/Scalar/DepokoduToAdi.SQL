BEGIN TRAN
GO
ALTER FUNCTION [dbo].[DepokoduToAdi] (@kod varchar(2))
RETURNS varchar(50)
AS
BEGIN
declare @durum varchar(50)

select @durum = SLT from depolar
where SLB = @kod


return(@durum)

end
GO
exec sp_vw_sys_upd 'FN', 'dbo', 'DepokoduToAdi'
GO
COMMIT
GO
