BEGIN TRAN
GO
-- [CMPTR2] - [02.10.2017 11:40:00]
alter PROCEDURE [dbo].[sp_frmPersonelIseGirisMuayene] @dosyaNo varchar(6) = ''
AS

if not exists(select * from PersoneliseGirisMuayene where PersonelKodu = @dosyaNo)
begin
	insert into PersoneliseGirisMuayene (PersonelKodu,grupKod,altgrupKod,SoruId)
	select @dosyaNo,grupKod,altGrupKod,id from IseGirisMuayeneSorulari
end



select MS.PersonelKodu, s.tanimi MuayeneSoru,MS.GrupKod,MS.altGrupKod,
       replicate('0',2-len(cast(MS.GrupKod as varchar)))+cast(MS.GrupKod as varchar) + ' - ' + MG.tanimi GrupTanimi,
	   replicate('0',2-len(cast(MS.altGrupKod as varchar)))+cast(MS.altGrupKod as varchar) +' - ' + MAG.tanimi altGrupTanimi,
	   MS.value,MS.tarih,MS.aciklama,
     V.tanimi valueObjevalues,valueTip,defaultValue,d.*
from PersoneliseGirisMuayene MS
join IseGirisMuayeneSorulari S on S.id = MS.SoruId
join IseGirisMuayeneGruplari MG on MG.kod = MS.grupKod
join IseGirisMuayeneAltGruplari MAG on MS.altGrupKod = MAG.Kod and MS.grupKod = MAG.grupKod
left join valueObjeValues V on V.kod = S.valueObjevalues
join gelisler g on g.dosyaNo = @dosyaNo and g.TEDAVITURU = '1'
join DoktorlarT d on d.kod = g.doktor
where PersonelKodu = @dosyaNo
order by MS.GrupKod,MS.altGrupKod
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_frmPersonelIseGirisMuayene'
GO
COMMIT
GO
