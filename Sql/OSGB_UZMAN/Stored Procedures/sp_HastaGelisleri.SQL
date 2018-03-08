BEGIN TRAN
GO
ALTER PROCEDURE [dbo].[sp_HastaGelisleri]
@dosyaNo varchar(6)
AS
select GelisNo,cast(BHDAT as datetime)  as Tarih,
       SERVIS,Mt.Tanim TEDAVITURU,Doktor,kullanici,      
       PROTOKOLNO,SIRANO, g.TEDAVITURU TEDAVITURUX, mt.AnemnezEkranTipi

from Gelisler g
left join VW_MuayeneTipleri Mt on Mt.Kod = g.TEDAVITURU
--inner join doktorlar d on d.kod = g.doktor
where DOSYANO = @dosyano
order by GelisNo desc
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_HastaGelisleri'
GO
COMMIT
GO
