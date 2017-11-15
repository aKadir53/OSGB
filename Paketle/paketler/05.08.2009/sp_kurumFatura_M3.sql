ALTER PROCEDURE [dbo].[sp_kurumFatura_M3]
@kurumtipi varchar(10),@kurum varchar(10),@tarih1 varchar(10),@tarih2 varchar(10),@dosyaNo varchar(6),@islemTip varchar(1)
 AS
declare @kurumlar varchar(10)

if @kurumTipi = 1
begin
   set @kurumlar = '1,2,3,4,5'
end
else set @kurumlar = @kurumTipi




if @islemTip = '0'
begin
select  convert(varchar,cast(islemtarihi as datetime),104) as Tarih,
kf.*, isnull(k.KURUMTIPI,''),H.HASTAADI+' ' +H.HASTASOYADI AS HASTA,'704230' as ButKodu ,K.ADI1,k.IlIlce,H.TCKIMLIKNO,KARNENO,SicilNo,
@tarih1 as ilkTarih,@tarih2 as bitisTarih,kf.basvuruNo as basvuru 
from kurumFatura kf
      left join HastaKart H on H.dosyaNo = kf.dosyaNo
      left join Kurumlar K on K.Kurum = Kf.kurum
where --kf.kurum like @kurum+'%'
--and isnull(k.KURUMTIPI,'') in (select datavalue from strtotable(@kurumlar,','))
--and 
kf.FaturaTarihi between @tarih1 and @tarih2
and kf.DosyaNo like @dosyaNo+'%'
--and (kf.faturaNo <> ''  and  kf.faturaNo is not null 
and kf.GSSFaturaTeslimno <> '' and kf.GSSFaturaTeslimNo is not Null

order by H.HASTAADI
end


if @islemTip = '1'
begin
select convert(varchar,cast(islemtarihi as datetime),104) as Tarih,
kf.*, isnull(k.KURUMTIPI,''),H.HASTAADI+' ' +H.HASTASOYADI AS HASTA,'704230' as ButKodu ,K.ADI1,k.IlIlce,H.TCKIMLIKNO,KARNENO,SicilNo,
@tarih1 as ilkTarih,@tarih2 as bitisTarih,kf.basvuruNo as basvuru  
from kurumFatura kf
      left join HastaKart H on H.dosyaNo = kf.dosyaNo
      left join Kurumlar K on K.Kurum = Kf.kurum
where kf.kurum like @kurum+'%'
and isnull(k.KURUMTIPI,'') in (select datavalue from strtotable(@kurumlar,','))
and kf.islemTarihi between @tarih1 and @tarih2
and kf.DosyaNo like @dosyaNo+'%'
and (kf.faturaNo = '' or kf.faturaNo is null) or (kf.GSSFaturaTeslimno = '' or kf.GSSFaturaTeslimNo is  Null)
order by kf.islemTarihi
end


if @islemTip = '4'
begin
select convert(varchar,cast(islemtarihi as datetime),104) as Tarih,
kf.*, isnull(k.KURUMTIPI,''),H.HASTAADI+' ' +H.HASTASOYADI AS HASTA,'704230' as ButKodu ,K.ADI1,k.IlIlce,H.TCKIMLIKNO,KARNENO,SicilNo,
@tarih1 as ilkTarih,@tarih2 as bitisTarih,dbo.paraoku(kf.faturaTutar) as FaturaTutarYaziile,k.*  
from kurumFatura kf
      left join HastaKart H on H.dosyaNo = kf.dosyaNo
      left join Kurumlar K on K.Kurum = Kf.kurum
where kf.kurum like @kurum+'%'
and isnull(k.KURUMTIPI,'') in (select datavalue from strtotable(@kurumlar,','))
and kf.islemTarihi between @tarih1 and @tarih2
and kf.DosyaNo like @dosyaNo+'%'
--and (kf.faturaNo = '' or kf.faturaNo is null)
order by kf.islemTarihi
end

if @islemTip = '3'
begin
	select sum(adet) as SeansAdet ,
           sum(kf.Tutar) as tutar,
           sum(kf.kdvTutar) as kdvTutar,
           sum(kf.faturaTutar) as FaturaTutar ,
           dbo.paraoku(sum(kf.faturaTutar)) as FaturaTutarYaziile,
           138 as birimfiyat

    --sum(kf.faturaTutar)
	from kurumFatura kf
		  left join Kurumlar K on K.Kurum = Kf.kurum
	where kf.kurum like @kurum+'%'
	and isnull(k.KURUMTIPI,'') in (select datavalue from strtotable(@kurumlar,','))
	and kf.islemTarihi between @tarih1 and @tarih2
	and kf.DosyaNo like @dosyaNo+'%'
	and (kf.faturaNo <> ''  and  kf.faturaNo is not null and kf.GSSFaturaTeslimno <> '' and kf.GSSFaturaTeslimNo is not Null)

end



