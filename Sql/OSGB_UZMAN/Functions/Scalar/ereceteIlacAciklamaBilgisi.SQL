BEGIN TRAN
GO
-- [CMPTR2] - [06.10.2017 10:56:23]
ALTER FUNCTION [dbo].[ereceteIlacAciklamaBilgisi] (@receteDetayId int)
RETURNS varchar(500)
AS
BEGIN
declare @ilacAck varchar(500)
	set @ilacAck = ''

	select @ilacAck = @ilacAck +				  
	'<ereceteIlacAciklamaBilgisi>'+
	'<aciklama>'+ ia.aciklama + '</aciklama>'+
	'<aciklamaTuru>'+ ia.aciklamaTip +'</aciklamaTuru>'+
	'</ereceteIlacAciklamaBilgisi>'				  
	from ReceteIlacAciklama ia			  
	where ia.receteDetayId = @receteDetayId


return(@ilacAck)

end
GO
exec sp_vw_sys_upd 'FN', 'dbo', 'ereceteIlacAciklamaBilgisi'
GO
COMMIT
GO
