BEGIN TRAN
GO
-- [CMPTR2] - [28.10.2017 12:10:53]
ALTER PROCEDURE [dbo].[sp_frmPersonelIseGirisMuayene] @dosyaNo varchar(6) = '',@gelisNo int,@grup varchar(20) = ''
AS

if not exists(select * from PersoneliseGirisMuayene where PersonelKodu = @dosyaNo)
begin
	insert into PersoneliseGirisMuayene (PersonelKodu,gelisNo,grupKod,altgrupKod,SoruId)
	select @dosyaNo,@gelisNo,grupKod,altGrupKod,id from IseGirisMuayeneSorulari
end


if @grup = 'TA12'
begin
select 
  
MS.PersonelKodu, s.tanimi MuayeneSoru,MS.GrupKod,MS.altGrupKod,Ms.value,MS.aciklama,
--(case when MS.value = 'Evet' then 'X' else '' end) Evet,
(case when MS.value = 'Hayýr' then 'X' else '' end) Hayir,
(case  MS.altGrupKod
when 3 then 'Evet ise taný' 
when 4 then 'Evet ise neden' 
when 5 then 'Evet ise ne oldu' 
when 6 then 'Evet ise sonuç' 
when 7 then 'Evet ise nedir ve oraný' 
when 8 then 'Evet ise nedir' 	   
end) EvetBaslik
from PersoneliseGirisMuayene MS
join IseGirisMuayeneSorulari S on S.id = MS.SoruId
join IseGirisMuayeneGruplari MG on MG.kod = MS.grupKod
join IseGirisMuayeneAltGruplari MAG on MS.altGrupKod = MAG.Kod and MS.grupKod = MAG.grupKod
left join valueObjeValues V on V.kod = S.valueObjevalues
join gelisler g on g.dosyaNo = @dosyaNo and g.TEDAVITURU = '1'
join DoktorlarT d on d.kod = g.doktor
where PersonelKodu = @dosyaNo and MS.gelisNo = 1 and MS.grupKod = 1 and MS.altGrupKod in (1,2)
order by MS.GrupKod,MS.altGrupKod
end

if @grup = 'TA345678'
begin
select   
	MS.PersonelKodu, s.tanimi MuayeneSoru,MS.GrupKod,MS.altGrupKod,Ms.value,MS.aciklama,
	--(case when MS.value = 'Evet' then 'X' else '' end) Evet,
	(case when MS.value = 'Hayýr' then 'X' else '' end) Hayir,
	(case  MS.altGrupKod
	when 3 then 'Evet ise taný' 
	when 4 then 'Evet ise neden' 
	when 5 then 'Evet ise ne oldu' 
	when 6 then 'Evet ise sonuç' 
	when 7 then 'Evet ise nedir ve oraný' 
	when 8 then 'Evet ise nedir' 	   
	end) EvetBaslik
	from PersoneliseGirisMuayene MS
	join IseGirisMuayeneSorulari S on S.id = MS.SoruId
	join IseGirisMuayeneGruplari MG on MG.kod = MS.grupKod
	join IseGirisMuayeneAltGruplari MAG on MS.altGrupKod = MAG.Kod and MS.grupKod = MAG.grupKod
	left join valueObjeValues V on V.kod = S.valueObjevalues
	join gelisler g on g.dosyaNo = @dosyaNo and g.TEDAVITURU = '1'
	join DoktorlarT d on d.kod = g.doktor
	where PersonelKodu = @dosyaNo and MS.gelisNo = 1 and MS.grupKod = 1 and MS.altGrupKod in (3,4,5,6,7,8)
	order by MS.GrupKod,MS.altGrupKod
end


if @grup = 'TA9'
begin
select
'Sigara içiyor musunuz?' soru ,
MS.PersonelKodu, s.tanimi MuayeneSoru,MS.GrupKod,MS.altGrupKod,Ms.value,MS.aciklama,
(case when MS.value = 'Evet' then 'X' else '' end) Evet,
(case when MS.value = 'Hayýr' then 'X' else '' end) Hayir,
(case when MS.value = 'Býrakmýþ' then 'X' else '' end) Birakmis,

(case  when (MS.altGrupKod = 9 and MS.value = 'Býrakmýþ' and S.id = 32) then MS.value else '' end) Birakmisiseayyýlonce,
(case  when (MS.altGrupKod = 9 and MS.value = 'Býrakmýþ' and S.id = 33) then MS.value else '' end) Ayyilicmis,
(case  when (MS.altGrupKod = 9 and MS.value = 'Býrakmýþ' and S.id = 34) then MS.value else '' end) Adetguniçmis	,
(case  when (MS.altGrupKod = 9 and MS.value = 'Evet' and S.id = 30) then MS.value else '' end) yildir,
(case  when (MS.altGrupKod = 9 and MS.value = 'Evet' and S.id = 31) then MS.value else '' end) adetGun   

from PersoneliseGirisMuayene MS
join IseGirisMuayeneSorulari S on S.id = MS.SoruId
join IseGirisMuayeneGruplari MG on MG.kod = MS.grupKod
join IseGirisMuayeneAltGruplari MAG on MS.altGrupKod = MAG.Kod and MS.grupKod = MAG.grupKod
left join valueObjeValues V on V.kod = S.valueObjevalues
join gelisler g on g.dosyaNo = '015098' and g.TEDAVITURU = '1'
join DoktorlarT d on d.kod = g.doktor
where PersonelKodu = '015098' and MS.gelisNo = 1 and MS.grupKod = 1 and MS.altGrupKod in (9) and S.tanimi = 'Cevap'
order by MS.GrupKod,MS.altGrupKod
end


select MS.PersonelKodu, s.tanimi MuayeneSoru,MS.GrupKod,MS.altGrupKod,
       replicate('0',2-len(cast(MS.GrupKod as varchar)))+cast(MS.GrupKod as varchar) + ' - ' + MG.tanimi GrupTanimi,
	   replicate('0',2-len(cast(MS.altGrupKod as varchar)))+cast(MS.altGrupKod as varchar) +' - ' + MAG.tanimi altGrupTanimi,
	   MS.value,MS.tarih,MS.aciklama,
     V.tanimi valueObjevalues,valueTip,defaultValue,MS.gelisNo,d.*
from PersoneliseGirisMuayene MS
join IseGirisMuayeneSorulari S on S.id = MS.SoruId
join IseGirisMuayeneGruplari MG on MG.kod = MS.grupKod
join IseGirisMuayeneAltGruplari MAG on MS.altGrupKod = MAG.Kod and MS.grupKod = MAG.grupKod
left join valueObjeValues V on V.kod = S.valueObjevalues
join gelisler g on g.dosyaNo = @dosyaNo and g.TEDAVITURU = '1'
join DoktorlarT d on d.kod = g.doktor
where PersonelKodu = @dosyaNo and MS.gelisNo = @gelisNo
order by MS.GrupKod,MS.altGrupKod
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_frmPersonelIseGirisMuayene'
GO
COMMIT
GO
