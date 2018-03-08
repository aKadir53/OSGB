BEGIN TRAN
GO
ALTER PROCEDURE [dbo].[sp_frmPersonelIseGirisMuayene] @dosyaNo varchar(6) = '',@gelisNo int,@grup varchar(20) = ''
AS
begin
if not exists(select * from PersoneliseGirisMuayene where PersonelKodu = @dosyaNo and gelisNo = @gelisNo)
begin
  insert into PersoneliseGirisMuayene (PersonelKodu,gelisNo,grupKod,altgrupKod,SoruId)
  select @dosyaNo,@gelisNo,grupKod,altGrupKod,id 
  from IseGirisMuayeneSorulari ms
  inner join Gelisler g on g.dosyaNo = @dosyaNo
    and g.gelisNo = @gelisNo
  inner join MuayeneTipleri mt on mt.Kod = g.TEDAVITURU
	and mt.AnemnezEkranTipi = 1
end


if @grup = 'TA12'
begin
select
  
MS.PersonelKodu, s.tanimi MuayeneSoru,MG.tanimi grupTanim, MAG.tanimi altGrupTanim, MS.GrupKod,MS.altGrupKod,Ms.value,MS.aciklama,
(case when MS.value = 'Evet' then 'X' else '' end) Evet,
(case when MS.value = 'Hayýr' then 'X' else '' end) Hayir
from PersoneliseGirisMuayene MS
join IseGirisMuayeneSorulari S on S.id = MS.SoruId
join IseGirisMuayeneGruplari MG on MG.kod = MS.grupKod
join IseGirisMuayeneAltGruplari MAG on MS.altGrupKod = MAG.Kod and MS.grupKod = MAG.grupKod
left join valueObjeValues V on V.kod = S.valueObjevalues
join gelisler g on g.dosyaNo = @dosyaNo and g.gelisNo = ms.GelisNo
join DoktorlarT d on d.kod = g.doktor
where PersonelKodu = @dosyaNo and MS.gelisNo = @gelisNo and MS.grupKod = 1 and MS.altGrupKod in (1,2)

order by MS.GrupKod,MS.altGrupKod
end

if @grup = 'PK'
begin
  select P.*,S.*,br.tanimi birimAdi,b.tanimi bolumAdi from PersonelKart P
  join SIRKETLER_TNM S on S.sirketKod = P.sirketKod
  left join Bolumler b on b.kod = P.Bolum
  left join Birimler br on br.kod = P.Birim
  where dosyano = @dosyaNo 
end


if @grup = 'TA345678'
begin
select   
  MS.PersonelKodu, s.tanimi MuayeneSoru,MG.tanimi grupTanim, MAG.tanimi altGrupTanim,MS.GrupKod,MS.altGrupKod,Ms.value,MS.aciklama,
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
  join gelisler g on g.dosyaNo = @dosyaNo and g.gelisNo = ms.GelisNo
  join DoktorlarT d on d.kod = g.doktor
  where PersonelKodu = @dosyaNo and MS.gelisNo = @gelisNo and MS.grupKod = 1 and MS.altGrupKod in (3,4,5,6,7,8)
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
(select value from PersoneliseGirisMuayene where PersonelKodu = MS.PersonelKodu and gelisNo = Ms.gelisNo and soruId = 32) Birakmisiseayyilonce,
(select value from PersoneliseGirisMuayene where PersonelKodu = MS.PersonelKodu and gelisNo = Ms.gelisNo and soruId = 33) Ayyilicmis,
(select value from PersoneliseGirisMuayene where PersonelKodu = MS.PersonelKodu and gelisNo = Ms.gelisNo and soruId = 34) Adetgunicmis,
(select value from PersoneliseGirisMuayene where PersonelKodu = MS.PersonelKodu and gelisNo = Ms.gelisNo and soruId = 30) yildir,
(select value from PersoneliseGirisMuayene where PersonelKodu = MS.PersonelKodu and gelisNo = Ms.gelisNo and soruId = 31) adetGun
from PersoneliseGirisMuayene MS
join IseGirisMuayeneSorulari S on S.id = MS.SoruId
join IseGirisMuayeneGruplari MG on MG.kod = MS.grupKod
join IseGirisMuayeneAltGruplari MAG on MS.altGrupKod = MAG.Kod and MS.grupKod = MAG.grupKod
left join valueObjeValues V on V.kod = S.valueObjevalues
join gelisler g on g.dosyaNo = @DosyaNo and g.gelisNo = ms.GelisNo
join DoktorlarT d on d.kod = g.doktor
where PersonelKodu = @DosyaNo and MS.gelisNo = @gelisNo and MS.grupKod = 1 and MS.altGrupKod in (9) and S.tanimi = 'Cevap'
order by MS.GrupKod,MS.altGrupKod
end


if @grup = 'TA10'
begin
select
'Alkol alýyor musunuz?' soru,
MS.PersonelKodu, s.tanimi MuayeneSoru,s.id,MS.GrupKod,MS.altGrupKod,Ms.value,MS.aciklama,
(case when MS.value = 'Evet' then 'X' else '' end) Evet,
(case when MS.value = 'Hayýr' then 'X' else '' end) Hayir,
(case when MS.value = 'Býrakmýþ' then 'X' else '' end) Birakmis,
(select value from PersoneliseGirisMuayene where PersonelKodu = MS.PersonelKodu and gelisNo = Ms.gelisNo and soruId = 47) Birakmisiseayyilonce,
(select value from PersoneliseGirisMuayene where PersonelKodu = MS.PersonelKodu and gelisNo = Ms.gelisNo and soruId = 48) Ayyilicmis,
(select value from PersoneliseGirisMuayene where PersonelKodu = MS.PersonelKodu and gelisNo = Ms.gelisNo and soruId = 49) Adetgunicmis,
(select value from PersoneliseGirisMuayene where PersonelKodu = MS.PersonelKodu and gelisNo = Ms.gelisNo and soruId = 45) yildir,
(select value from PersoneliseGirisMuayene where PersonelKodu = MS.PersonelKodu and gelisNo = Ms.gelisNo and soruId = 46) adetGun
from PersoneliseGirisMuayene MS
join IseGirisMuayeneSorulari S on S.id = MS.SoruId
join IseGirisMuayeneGruplari MG on MG.kod = MS.grupKod
join IseGirisMuayeneAltGruplari MAG on MS.altGrupKod = MAG.Kod and MS.grupKod = MAG.grupKod
left join valueObjeValues V on V.kod = S.valueObjevalues
join gelisler g on g.dosyaNo = @dosyaNo and g.gelisNo = ms.GelisNo
join DoktorlarT d on d.kod = g.doktor
where PersonelKodu = @dosyaNo and MS.gelisNo = @gelisNo and MS.grupKod = 1 and MS.altGrupKod in (10) and S.tanimi = 'Cevap'
order by MS.GrupKod,MS.altGrupKod
end

if @grup = 'FM1-8'
begin
select
    MS.PersonelKodu, 
    case when not MS.altGrupKod in (1,9) then MAG.tanimi else s.tanimi end MuayeneSoru,
    MG.tanimi grupTanim, 
    MAG.tanimi altGrupTanim, 
    MS.GrupKod,
    MS.altGrupKod,
    Ms.value,
    MS.aciklama
from PersoneliseGirisMuayene MS
join IseGirisMuayeneSorulari S on S.id = MS.SoruId
join IseGirisMuayeneGruplari MG on MG.kod = MS.grupKod
join IseGirisMuayeneAltGruplari MAG on MS.altGrupKod = MAG.Kod and MS.grupKod = MAG.grupKod
left join valueObjeValues V on V.kod = S.valueObjevalues
join gelisler g on g.dosyaNo = @dosyaNo and g.gelisNo = ms.GelisNo
join DoktorlarT d on d.kod = g.doktor
where PersonelKodu = @dosyaNo and MS.gelisNo = @gelisNo and MS.grupKod = 2 and not MS.altGrupKod in (9)

order by MS.GrupKod,MS.altGrupKod
end

if @grup = 'FM9'
begin
select
  MAG.tanimi altGrupTanim,
  MS.PersonelKodu,MS.aciklama,
  (select value from PersoneliseGirisMuayene where PersonelKodu = MS.PersonelKodu and gelisNo = Ms.gelisNo and soruId = 74) TA_Deger,
  (select value from PersoneliseGirisMuayene where PersonelKodu = MS.PersonelKodu and gelisNo = Ms.gelisNo and soruId = 75) NB_Deger,
  (select value from PersoneliseGirisMuayene where PersonelKodu = MS.PersonelKodu and gelisNo = Ms.gelisNo and soruId = 76) Boy_Deger,
  (select value from PersoneliseGirisMuayene where PersonelKodu = MS.PersonelKodu and gelisNo = Ms.gelisNo and soruId = 77) Kilo_Deger,
  (select value from PersoneliseGirisMuayene where PersonelKodu = MS.PersonelKodu and gelisNo = Ms.gelisNo and soruId = 78) VucutKitle_Deger,
  (select IGG.Tanimi from IseGirisMuayeneSorulari IGG where IGG.id = 74) TA_Tanim,
  (select IGG.Tanimi from IseGirisMuayeneSorulari IGG where IGG.id = 75) Nb_Tanim,
  (select IGG.Tanimi from IseGirisMuayeneSorulari IGG where IGG.id = 76) Boy_Tanim,
  (select IGG.Tanimi from IseGirisMuayeneSorulari IGG where IGG.id = 77) Kilo_Tanim,
  (select IGG.Tanimi from IseGirisMuayeneSorulari IGG where IGG.id = 78) VucutKitle_Tanim
from PersoneliseGirisMuayene MS
join IseGirisMuayeneSorulari S on S.id = MS.SoruId
join IseGirisMuayeneGruplari MG on MG.kod = MS.grupKod
join IseGirisMuayeneAltGruplari MAG on MS.altGrupKod = MAG.Kod and MS.grupKod = MAG.grupKod
left join valueObjeValues V on V.kod = S.valueObjevalues
join gelisler g on g.dosyaNo = @DosyaNo and g.gelisNo = ms.GelisNo
join DoktorlarT d on d.kod = g.doktor
where PersonelKodu = @DosyaNo and MS.gelisNo = @gelisNo and MS.grupKod = 2 and MS.altGrupKod in (9) and s.id = 74
order by MS.GrupKod,MS.altGrupKod
end

if @grup = 'LB'
begin
select count (*) over (PARTITION BY MS.AltGrupKod) CalcCalc,
    MS.PersonelKodu,
	s.Tanimi MuayeneSoru,
    case when count (*) over (PARTITION BY MS.AltGrupKod) = 1 and s.Tanimi = 'Sonuç' then MAG.tanimi else s.tanimi end MuayeneSoruCalc,
    MG.tanimi grupTanim, 
    MAG.tanimi altGrupTanim, 
    MS.GrupKod,
    MS.altGrupKod,
    Ms.value,
    MS.aciklama
from PersoneliseGirisMuayene MS
join IseGirisMuayeneSorulari S on S.id = MS.SoruId
join IseGirisMuayeneGruplari MG on MG.kod = MS.grupKod
join IseGirisMuayeneAltGruplari MAG on MS.altGrupKod = MAG.Kod and MS.grupKod = MAG.grupKod
left join valueObjeValues V on V.kod = S.valueObjevalues
join gelisler g on g.dosyaNo = @dosyaNo and g.gelisNo = ms.GelisNo
join DoktorlarT d on d.kod = g.doktor
where PersonelKodu = @dosyaNo and MS.gelisNo = @gelisNo and MS.grupKod = 3 --and not MS.altGrupKod in (9)

order by MS.GrupKod,MS.altGrupKod, s.id
end

if @grup = 'KS'
begin
select count (*) over (PARTITION BY MS.AltGrupKod) CalcCalc, ROW_NUMBER() over (order BY MS.AltGrupKod,MS.id) sira, 
    MS.PersonelKodu,
	s.Tanimi MuayeneSoru,
    case when count (*) over (PARTITION BY MS.AltGrupKod) = 1 and s.Tanimi = 'Sonuç' then MAG.tanimi else s.tanimi end MuayeneSoruCalc,
    MG.tanimi grupTanim, 
    MAG.tanimi altGrupTanim, 
    MS.GrupKod,
    MS.altGrupKod,
    Ms.value,
    MS.aciklama
from PersoneliseGirisMuayene MS
join IseGirisMuayeneSorulari S on S.id = MS.SoruId
join IseGirisMuayeneGruplari MG on MG.kod = MS.grupKod
join IseGirisMuayeneAltGruplari MAG on MS.altGrupKod = MAG.Kod and MS.grupKod = MAG.grupKod
left join valueObjeValues V on V.kod = S.valueObjevalues
join gelisler g on g.dosyaNo = @dosyaNo and g.gelisNo = ms.GelisNo
join DoktorlarT d on d.kod = g.doktor
where PersonelKodu = @dosyaNo and MS.gelisNo = @gelisNo and MS.grupKod = 4 --and not MS.altGrupKod in (9)

order by MS.GrupKod,MS.altGrupKod, s.id
end

if @grup = '0' or @grup = ''
begin
select MS.PersonelKodu, s.tanimi MuayeneSoru,MS.GrupKod,MS.altGrupKod,
       replicate('0',2-len(cast(MS.GrupKod as varchar)))+cast(MS.GrupKod as varchar) + ' - ' + MG.tanimi GrupTanimi,
     replicate('0',2-len(cast(MS.altGrupKod as varchar)))+cast(MS.altGrupKod as varchar) +' - ' + MAG.tanimi altGrupTanimi,
     MS.value,MS.tarih,MS.aciklama,
     V.tanimi valueObjevalues,valueTip,defaultValue,MS.gelisNo, g.gelisNo,d.*
from PersoneliseGirisMuayene MS
join IseGirisMuayeneSorulari S on S.id = MS.SoruId
join IseGirisMuayeneGruplari MG on MG.kod = MS.grupKod
join IseGirisMuayeneAltGruplari MAG on MS.altGrupKod = MAG.Kod and MS.grupKod = MAG.grupKod
left join valueObjeValues V on V.kod = S.valueObjevalues
join gelisler g on g.dosyaNo = @dosyaNo and g.gelisNo = ms.GelisNo
left join DoktorlarT d on d.kod = g.doktor
where PersonelKodu = @dosyaNo and ms.gelisNo = @gelisNo
order by MS.GrupKod,MS.altGrupKod
end

--2/1 duyu organlarý gibi diðer grubu eklenecek
end
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_frmPersonelIseGirisMuayene'
GO
COMMIT
GO
