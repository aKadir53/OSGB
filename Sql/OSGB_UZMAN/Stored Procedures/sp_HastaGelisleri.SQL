BEGIN TRAN
GO
-- [CMPTR2] - [06.06.2017 10:39:53]
ALTER PROCEDURE [dbo].[sp_HastaGelisleri]
@dosyaNo varchar(6)
AS
select GelisNo,TakIpNo,cast(BHDAT as datetime)  as Tarih,
       SERVIS,TEDAVITURU,Doktor,kullanici,
       AcilmisSeans,GelinenSeans,SeanDurum,cast(CIKTAR as datetime) CikisTarih,taburcu,BasvuruNo,ilkTakipNo,TaniIslemSiraNo,
       PROTOKOLNO,SNProtokolNo,isnull(g.KanAlinanSeans,0) KanAlinanSeans , 
       case diyalizTedaviYontemi
         when '0' then 'H'
         when '1' then 'P'
         When '2' then 'A'
         else diyalizTedaviYontemi end diyalizTedaviYontemi
       
       ,
       yupass
from Gelisler g
--inner join doktorlar d on d.kod = g.doktor
where DOSYANO = @dosyano
order by GelisNo desc
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_HastaGelisleri'
GO
COMMIT
GO
