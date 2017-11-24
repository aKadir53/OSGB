BEGIN TRAN
GO
ALTER PROCEDURE [dbo].[sp_HastaGelisleri]
@dosyaNo varchar(6)
AS
select GelisNo,cast(BHDAT as datetime)  as Tarih,
       SERVIS,TEDAVITURU,Doktor,kullanici,      
       PROTOKOLNO

from Gelisler g
--inner join doktorlar d on d.kod = g.doktor
where DOSYANO = @dosyano
order by GelisNo desc
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_HastaGelisleri'
GO
COMMIT
GO
