BEGIN TRAN
GO
ALTER FUNCTION [dbo].[RaporSeansGun_GirilenSeansKontrol] (@dosyaNo varchar(6),@gelisNo int,@tarih datetime)
RETURNS int
AS
BEGIN
declare @durum int

select @durum = case when count(*) > 0 then 1 else 0 end 
--(case when uyari = 0 then 'Eksik Seans ' + cast(hafta as varchar)+ '.Hafta : ' + cast(seans as varchar) 
--   + ' Seans, Rapor Haftada ' + cast(raporSeansGun as varchar) + ' Seans' else 'ok' end)  
from
(
	select  
	 sum((case when (durum = 0 and len(sebeb) > 0) then 1 else 0 end)) sebebli,
	 sum((case when durum = 1 then 1 else 0 end)) gelinen,
	 count(*) seans,
	 datepart(wk,rtarih) hafta,
	 (select seansSayi from raporlar where dosyaNo = gelisdetay.dosyano and aktif = 1) raporSeansGun,
	 (case when (select seansSayi from raporlar where dosyaNo = gelisdetay.dosyano and aktif = 1) =
	 sum(case when (durum = 0 and len(sebeb) > 0) then 1 else 0 end)+sum(case when durum = 1 then 1 else 0 end) then 1 else 0 end) uyari 
	from gelisdetay
	where dosyano = @dosyaNo and datepart(wk,rtarih) = datepart(wk,@tarih) and datepart(yy,rtarih) = datepart(yy,@tarih)
	group by datepart(wk,rtarih),gelisdetay.dosyano
) tmp where uyari = 0


return(@durum)

end
GO
exec sp_vw_sys_upd 'FN', 'dbo', 'RaporSeansGun_GirilenSeansKontrol'
GO
COMMIT
GO
