BEGIN TRAN
GO
ALTER FUNCTION [dbo].[fn_KLINIK_KALITE_BILGISI_table] (@tarih1 VARCHAR(10) , @tarih2 VARCHAR(10))
RETURNS @t TABLE (sayi int,Adi varchar(500),kodu int)
AS
BEGIN

    insert @t (sayi,Adi,kodu)	
	
	select * from 
	(
	select
	(
	select count(*) from hareketler h
	join  SKRS_GUN_SONU_OZET_VERISI V on V.KODU = VV.KODU
	where TARIH between @tarih1 and @tarih2 and 
	(case when V.KODU = 25 then gd else 0 end between (case when V.KODU = 25 then 0.1 else 0 end) and (case when V.KODU = 25 then 6.999 else 0 end)) and
	(case when V.KODU = 26 then gd else 0 end between (case when V.KODU = 26 then 7 else 0 end) and (case when V.KODU = 26 then 9 else 0 end)) and
	case when V.KODU = 27 then gd else 0 end > (case when V.KODU = 27 then 9 else -1 end) and 
	case when V.KODU = 29 then gd else 0 end > (case when V.KODU = 29 then 0.1 else -1 end) and 
	(case when V.KODU = 31 then gd else 0 end between (case when V.KODU = 31 then 0.1 else 0 end) and (case when V.KODU = 31 then 100 else 0 end)) and
	case when V.KODU = 41 then onay else 0 end = (case when V.KODU = 41 then 1 else 0 end) and 	
	case when V.KODU = 46 then onay else 0 end = (case when V.KODU = 46 then 1 else 0 end) and 
	case when V.KODU = 53 then gd else 0 end > (case when V.KODU = 53 then 0.1 else -1 end) and
	case when V.KODU = 52 then onay else 0 end = (case when V.KODU = 52 then 1 else 0 end) and 	 
	case when V.KODU = 28 then onay else 0 end = (case when V.KODU = 28 then 1 else 0 end) and 	
	case when V.KODU = 24 then onay else 0 end = (case when V.KODU = 24 then 1 else 0 end) and 	
	case when V.KODU = 23 then onay else 0 end = (case when V.KODU = 23 then 1 else 0 end) and 	
	case when V.KODU = 30 then onay else 0 end = (case when V.KODU = 30 then 1 else 0 end) and
	case when V.KODU = 35 then onay else 0 end = (case when V.KODU = 35 then 1 else 0 end) and 
	case when V.KODU = 36 then onay else 0 end = (case when V.KODU = 36 then 1 else 0 end) and 		 							
	code in (
	select REFERANS_KOD from SKRS_GUN_SONU_OZET_VERISI OV
	join SKRS_GUN_SONU_OZET_REFERANS R on R.GUNSONU_ID = OV.KODU
	where GUNSONU_ID = VV.KODU)
	) as KLINIK_KALITE_SAYI , VV.ADI,VV.KODU
	from SKRS_GUN_SONU_OZET_VERISI VV
	) tmp 
	where KODU not in(16,17,19,20,22,54,55,56,66,63) --KLINIK_KALITE_SAYI > 0
	--SELECT * FROM @table


    union all

	select COUNT(*),'Reçete sayýsý',54 
	from gelisler g
	join Recete I on I.dosyaNo = g.dosyaNo and I.gelisNo = g.gelisNo
	where BHDAT between @tarih1 and @tarih2

    union all

	select COUNT(*),'Reçete ilaç sayýsý',55 
	from gelisler g
	join Recete I on I.dosyaNo = g.dosyaNo and I.gelisNo = g.gelisNo
	join ReceteDetay rd on rd.ReceteID = I.id
	where BHDAT between @tarih1 and @tarih2
	
	union all

	select count(*),'Günübirlik sayýsý',19
	from gelisler 
	where BHDAT between @tarih1 and @tarih2 and TEDAVITURU = 'G'

	return

end
GO
exec sp_vw_sys_upd 'TF', 'dbo', 'fn_KLINIK_KALITE_BILGISI_table'
GO
COMMIT
GO
