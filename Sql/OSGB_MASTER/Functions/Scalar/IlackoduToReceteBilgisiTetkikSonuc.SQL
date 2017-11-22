BEGIN TRAN
GO
ALTER FUNCTION [dbo].IlackoduToReceteBilgisiTetkikSonuc (@kod varchar(20) , @dosyaNo varchar(6) , @gelisNo int)
RETURNS varchar(500)
AS
BEGIN

declare @durum varchar(500)
set @durum = ''

SELECT @durum = @durum + '  ' + tmp.tanimi+':' +tmp.gd + ' - ' + convert(varchar,tmp.TARIH,103) FROM 

(

select L.tanimi , 
  (select top 1 (case when isnull(islemAciklamasi,'') ='' THEN cast(gd as varchar) ELSE islemAciklamasi END) 
   from hareketler 
   where (case when isnull(islemAciklamasi,'') = '' THEN (case when cast(gd as varchar)='0' THEN '' ELSE cast(gd as varchar) END) ELSE islemAciklamasi END) <> '' 
      and dosyaNo = @dosyaNO and code = tetkikKodu and onay = 1 AND isnull(KabulNo,'') = '' order by tarýh desc) + ' ' + L.Birim gd,
cast((select top 1 TARIH from hareketler where (case when isnull(islemAciklamasi,'') = '' THEN (case when cast(gd as varchar)='0' THEN '' ELSE cast(gd as varchar) END) ELSE islemAciklamasi END) <> '' 
      and dosyaNo = @dosyaNO and code = tetkikKodu and onay = 1 AND isnull(KabulNo,'') = '' order by tarýh desc) as datetime) TARIH

   from IlaclarReceteTetkikSonuc T
 --join hareketler h on h.code = T.tetkikkodu and h.dosyaNo = @dosyaNo-- and h.gelisNo = @gelisNo
  join Labtestler L on L.butkodu = T.tetkikkodu
where code = (select ETKENMADDE from ILACLAR where code = @kod)
and receteEklenir = 1

union All

select distinct 'KTV ' , (select top 1 cast(KT_v as varchar) from LabSonucDegerlendirme where dosyaNo = @dosyaNO and KT_v <> 0 order by gelisNo desc) 
,(select top 1 h.TARIH from LabSonucDegerlendirme l join hareketler h on h.dosyaNo = l.dosyaNo and h.gelisNo = l.gelisNo 
   where l.dosyaNo = @dosyaNO and l.gelisNo = @gelisNo and KT_v <> 0 order by l.gelisNo desc)

   from IlaclarReceteTetkikSonuc T
where code = (select ETKENMADDE from ILACLAR where code = @kod)
and receteEklenir = 1 and tetkikKodu = 'KTV'

union All

select distinct 'CaxP ' , (select top 1 cast(CaxP as varchar) from LabSonucDegerlendirme where dosyaNo = @dosyaNO and CaxP <> 0 order by gelisNo desc) 
,(select top 1 h.TARIH from LabSonucDegerlendirme l join hareketler h on h.dosyaNo = l.dosyaNo and h.gelisNo = l.gelisNo 
   where l.dosyaNo = @dosyaNO and l.gelisNo = @gelisNo and CaxP <> 0 order by l.gelisNo desc)

   from IlaclarReceteTetkikSonuc T
where code = (select ETKENMADDE from ILACLAR where code = @kod)
and receteEklenir = 1 and tetkikKodu = 'CaxP'

union All

select distinct 'Transferrin Sat. ' , (select top 1 cast(TS as varchar) from LabSonucDegerlendirme where dosyaNo = @dosyaNO and TS <> 0  order by gelisNo desc) 
,(select top 1 h.TARIH from LabSonucDegerlendirme l join hareketler h on h.dosyaNo = l.dosyaNo and h.gelisNo = l.gelisNo 
   where l.dosyaNo = @dosyaNO and l.gelisNo = @gelisNo and TS <> 0 order by l.gelisNo desc)
   from IlaclarReceteTetkikSonuc T
where code = (select ETKENMADDE from ILACLAR where code = @kod)
and receteEklenir = 1 and tetkikKodu = 'TS'

union All

select distinct 'DuzCa ' , (select top 1 cast(DuzCa as varchar) from LabSonucDegerlendirme where dosyaNo = @dosyaNO and DuzCa <> 0 order by gelisNo desc) 
,(select top 1 h.TARIH from LabSonucDegerlendirme l join hareketler h on h.dosyaNo = l.dosyaNo and h.gelisNo = l.gelisNo 
   where l.dosyaNo = @dosyaNO and l.gelisNo = @gelisNo and DuzCa <> 0 order by l.gelisNo desc)
   from IlaclarReceteTetkikSonuc T
where code = (select ETKENMADDE from ILACLAR where code = @kod)
and receteEklenir = 1 and tetkikKodu = 'DuzCa'

union all

select '' ,'[' + aciklama + ']' , '' 

from IlaclarReceteTetkikSonuc
where code = (select ETKENMADDE from ILACLAR where code = @kod)
and receteEklenir = 1 and tetkikKodu = 'Sabit'

) tmp


return(@durum)

END
GO
exec sp_vw_sys_upd 'FN', 'dbo', 'IlackoduToReceteBilgisiTetkikSonuc'
GO
COMMIT
GO
