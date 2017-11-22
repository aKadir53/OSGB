BEGIN TRAN
GO
ALTER FUNCTION [dbo].[provizyonTarihi] (@dosyaNo varchar(6) , @tarih1 varchar(10))
RETURNS datetime
AS
BEGIN
declare @parovizyonTarihi datetime


select @parovizyonTarihi = (case when substring(seansGunleri,datepart(dw,cast(@tarih1 as datetime)),1) = '1' then cast(@tarih1 as datetime) 
        else 
       (case when substring(seansGunleri,datepart(dw,cast(@tarih1 as datetime)+1),1) = '1' then cast(@tarih1 as datetime)+1
        else
       (case when substring(seansGunleri,datepart(dw,cast(@tarih1 as datetime)+2),1) = '1' then cast(@tarih1 as datetime)+2
        else
       (case when substring(seansGunleri,datepart(dw,cast(@tarih1 as datetime)+3),1) = '1' then cast(@tarih1 as datetime)+3
        else
       (case when substring(seansGunleri,datepart(dw,cast(@tarih1 as datetime)+4),1) = '1' then cast(@tarih1 as datetime)+4    
        else
       (case when substring(seansGunleri,datepart(dw,cast(@tarih1 as datetime)+5),1) = '1' then cast(@tarih1 as datetime)+5
        else
        cast(@tarih1 as datetime)+6 end) end) end) end) end) end)
from hastakart 
where dosyano = @dosyaNo


return(@parovizyonTarihi)

end
GO
exec sp_vw_sys_upd 'FN', 'dbo', 'provizyonTarihi'
GO
COMMIT
GO
