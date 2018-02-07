BEGIN TRAN
GO
-- sp_labHastaKabul ALTER proc 
ALTER PROCEDURE [dbo].[sp_labHastaKabul] @tarih varchar(30), @hasta varchar(20),@tip varchar(1) = ''
as

if @tip = ''
Begin
	select k.dosyaNo as DosyaNo,k.gelisNo as GelisNo,
		   k.code as TestKodu,dbo.formattedTarih(k.kabulTarihi) as KabulTarihi,k.barkodNo as KabulNo,
		   k.hizmetAdi as TestAdý,k.hastaAdi as HastaAdý,
		   k.yas as yas,       
		   k.cinsiyet as Cinsiyet,
		   k.sec,k.sira,k.hareketlerSira,k.yazdirildi,k.aciklama,'' raporText,
		   0 SATISF,
		   0,
		   '',k.OZELKOD,(case when isnull(T.id,'') = '' then 'H' else 'E' end) as TahsilatYapildimi,k.sonuc ,k.date_create
         --Hk.DOGUMTARIHI
           
           ,(case when (select count(*) from laboratuvar_sonuc where hareketsira = k.hareketlerSira and ikaz = 'F') > 0 then 1 else 0 end) ikaz , disLabbarkodNo,disLabSonucOk,disLabKabul
 
	from LaboratuvarKabul k
       left join Tahsilat T on t.hareketlerSira  = k.hareketlerSira 
	   --inner join hýzmet h on h.code = k.ýcode
	   --inner join hastakart hk on hk.dosyaNo = k.dosyaNo
	   left join hareketler hrk on hrk.code = k.code and hrk.dosyaNo = k.dosyaNo and hrk.gelisNo = k.gelisNo 
       and hrk.SIRANO=k.HareketlerSira 
	where k.kabulTarihi >= @tarih and k.dosyaNo = @hasta
	order by k.kabulTarihi
End


if @tip = '1'
Begin
	select distinct k.dosyaNo as DosyaNo,k.gelisNo as GelisNo,
		   k.hastaAdi as HastaAdý,
		   k.yas as yas,       
		   k.cinsiyet as Cinsiyet, (select count(*) from LaboratuvarKabul where dosyaNo = k.DosyaNo and gelisNo = k.GelisNo and isnull(disLabbarkodNo,'') = '' ) Gonder
--,k.OZELKOD
		,(select count(*) from Laboratuvar_Sonuc where dosyaNo = k.DosyaNo and gelisNo = k.GelisNo AND isnull(sonuc1,'') = '') Run 
		
	from LaboratuvarKabul k
	   --inner join hýzmet h on h.code = k.ýcode
	   --inner join hastakart hk on hk.dosyaNo = k.dosyaNo
	   --left join hareketler hrk on hrk.ýcode = k.ýcode and hrk.dosyaNo = k.dosyaNo and hrk.gelisNo = k.gelisNo and k.detayNo = hrk.gelisDetayNo 
	where k.kabulTarihi >= @tarih
	
End


if @tip = '3'
Begin
	select distinct k.dosyaNo as DosyaNo,k.gelisNo as GelisNo,
		   k.hastaAdi as HastaAdý,
		   k.yas as yas,       
		   k.cinsiyet as Cinsiyet, (select count(*) from LaboratuvarKabul where dosyaNo = k.DosyaNo and gelisNo = k.GelisNo and isnull(disLabbarkodNo,'') = '' ) Gonder
           --,k.OZELKOD
		,(select count(*) from Laboratuvar_Sonuc where dosyaNo = k.DosyaNo and gelisNo = k.GelisNo AND isnull(sonuc1,'') = '') Run 
	from LaboratuvarKabul k
	   --inner join hýzmet h on h.code = k.ýcode
	   --inner join hastakart hk on hk.dosyaNo = k.dosyaNo
	   --left join hareketler hrk on hrk.ýcode = k.ýcode and hrk.dosyaNo = k.dosyaNo and hrk.gelisNo = k.gelisNo and k.detayNo = hrk.gelisDetayNo 
	where k.kabulTarihi = @tarih
	
End
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_labHastaKabul'
GO
COMMIT
GO
