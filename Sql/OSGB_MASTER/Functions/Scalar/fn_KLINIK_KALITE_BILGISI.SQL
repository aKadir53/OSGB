BEGIN TRAN
GO
-- [CMPTR2] - [09.08.2017 23:03:25]
ALTER FUNCTION [dbo].[fn_KLINIK_KALITE_BILGISI] (@tarih1 varchar(10) , @tarih2 varchar(10))
RETURNS varchar(max)
AS
BEGIN
declare @s varchar(max)

SET @s = ''
					
	 SELECT @s = @s +
        '<KLINIK_KALITE_BILGISI>'+
            '<KLINIK_KALITE_TANIM version="1" codeSystemGuid="4fa9b630-c081-44e1-8b8c-0ef0f967c17d" code="'+cast(kodu as varchar)+'" value="'+ADi+'" />'+
            '<KLINIK_KALITE_SAYI value="'+cast(sayi as varchar)+'" />'+
        '</KLINIK_KALITE_BILGISI>'+char(13)					 
	 from dbo.fn_KLINIK_KALITE_BILGISI_table(@tarih1,@tarih2) tmp
	 where sayi > 0	 



return(@s)

end
GO
exec sp_vw_sys_upd 'FN', 'dbo', 'fn_KLINIK_KALITE_BILGISI'
GO
COMMIT
GO
