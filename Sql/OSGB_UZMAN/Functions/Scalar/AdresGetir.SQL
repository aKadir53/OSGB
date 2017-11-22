BEGIN TRAN
GO
ALTER FUNCTION [dbo].[AdresGetir] (@dosyaNo varchar(6))
RETURNS varchar(500)
AS
BEGIN
declare @Adres varchar(500)
set @Adres = ''

select @Adres = il.ADI+' Ýli '+ilce.ADI +' Ýlçesi '+bucak.ADI+' Bucaðý '+koy.ADI+' Köyü '+mh.ADI + ' Mh.'+ 
       isnull(EV_SOKAK,'')+' '+isnull(EV_ADRES,'') 
from hastakart h
left join SKRS_IL_KODLARI il on il.KODU = EV_SEHIR
left join SKRS_ILCE_KODLARI ilce on ilce.KODU = EV_ILCE
left join SKRS_BUCAK_KODLARI bucak on bucak.KODU = EV_BUCAK
left join SKRS_KOY_KODLARI koy on koy.KODU = EV_KOY
left join SKRS_MAHALLE_KODLARI mh on mh.KODU = EV_MAHALLE
where dosyaNo = @dosyaNo

Return @Adres

END
GO
exec sp_vw_sys_upd 'FN', 'dbo', 'AdresGetir'
GO
COMMIT
GO
