BEGIN TRAN
GO
--sp_frmPersonelListesi
ALTER PROCEDURE [dbo].[sp_frmPersonelListesi] @firma varchar(10) = '',@ap int = 1,@TCKimlikNo varchar(11) = '',@sube varchar(500) = ''
AS
begin
if @sube = ''
begin
  select @sube = @sube + ',' + subeKod from SIRKET_SUBE_TNM where sirketKod = @firma
end

if @sube <> ''
begin
    select h.dosyaNo, h.SirketKod, h.CINSIYETI, h.MEDENI, h.HASTAADI, h.HASTASOYADI, h.TCKIMLIKNO, h.BASLANGIC, 
    h.MuayenePeryot, 
    (case when isnull(diger,'') = '' then '0' else '1' end) ozeldurum , 
    (case when (Substring (h.GELHAST, 5, 1) = '1' OR SUBSTRING (h.GELHAST, 7, 1) = '1') THEN '1' ELSE '' END) Diabet,
    (case when isnull(AntiHbs,'') = '' THEN '0' ELSE AntiHbs END) 'AntiHbs',
    IK.ADI il,ILCK.ADI ilce,MK.ADI mahalle,dbo.fn_yasTarih(h.doGUMTARIHI,getdate()) yas,
    h.DOGUMTARIHIdt DTARIHI ,
    (select max(cast(BHDAT as datetime)) from gelisler where dosyaNo = h.dosyaNo and TEDAVITURU in ('1','2')) EnsonkiPeryodikMuayeneTarihi,
    isnull(h.MuayenePeryot,0) + (select max(cast(BHDAT as datetime)) from gelisler where dosyaNo = h.dosyaNo and TEDAVITURU in ('1','2')) SonrakiPeryodikMuayeneTarihi,
    isnull(h.MuayenePeryot,0) - 
    isnull(DATEDIFF(D,(select max(cast(BHDAT as datetime)) from gelisler where dosyaNo = h.dosyaNo and TEDAVITURU in ('1','2')),getdate()),0) MuayeneKalanGun,
    h.HASTAADI+ ' '+h.HASTASOYADI ADI , s.tanimi,BASLANGICdt iseBaslama,
    h.sube Sube,sb.subeTanim subeTanim,sb.subeDoktor doktorKod,d.tanimi doktor,b.tanimi birim,blm.tanimi bolum,h.tetkikIstemGrupSablon
    from Personelkart h
    left join SIRKETLER_TNM s on s.SirketKod = h.SirketKod
    left join SIRKET_SUBE_TNM sb on sb.sirketKod = h.SirketKod and sb.subeKod = h.Sube
     left join Kurumlar k on k.kurum = h.kurum
     left join SKRS_IL_KODLARI IK on Ik.KODU = h.EV_SEHIR
     left join SKRS_ILCE_KODLARI ILCK on ILCK.KODU = H.EV_ILCE
     left join SKRS_MAHALLE_KODLARI MK on MK.KODU = H.EV_MAHALLE
     left join DoktorlarT d on d.kod = sb.subeDoktor
     left join Birimler b on b.kod = h.Birim
     left join Bolumler blm on blm.kod = h.Bolum
    where h.aktif = cast (@ap as varchar (1)) and
    h.sirketKod like  '%' + @firma + '%'  and
    sb.subeKod in (select datavalue from dbo.strtotable(@sube,',')) and 
    (TCKIMLIKNO  = @TCKimlikNo or IsNull (@TCKimlikNo, '') = '')
    --isnull(h.MuayenePeryot,0) - isnull((select DATEDIFF(D,cast(BHDAT as datetime),getdate()) from gelisler where dosyaNo = h.dosyaNo and TEDAVITURU = '2'),0) <= @gun 
    order by h.SirketKod,sb.subeKod,h.HASTAADI,h.HASTASOYADI
end


if (@sube = '') or (@firma = '')
begin
    select h.dosyaNo, h.SirketKod, h.CINSIYETI, h.MEDENI, h.HASTAADI, h.HASTASOYADI, h.TCKIMLIKNO, h.BASLANGIC, 
    h.MuayenePeryot, 
    (case when isnull(diger,'') = '' then '0' else '1' end) ozeldurum , 
    (case when (Substring (h.GELHAST, 5, 1) = '1' OR SUBSTRING (h.GELHAST, 7, 1) = '1') THEN '1' ELSE '' END) Diabet,
    (case when isnull(AntiHbs,'') = '' THEN '0' ELSE AntiHbs END) 'AntiHbs',
    IK.ADI il,ILCK.ADI ilce,MK.ADI mahalle,dbo.fn_yasTarih(h.doGUMTARIHI,getdate()) yas,
    h.DOGUMTARIHIdt DTARIHI ,
    (select max(cast(BHDAT as datetime)) from gelisler where dosyaNo = h.dosyaNo and TEDAVITURU in ('1','2')) EnsonkiPeryodikMuayeneTarihi,
    isnull(h.MuayenePeryot,0) + (select max(cast(BHDAT as datetime)) from gelisler where dosyaNo = h.dosyaNo and TEDAVITURU in ('1','2')) SonrakiPeryodikMuayeneTarihi,
    isnull(h.MuayenePeryot,0) - 
    isnull(DATEDIFF(D,(select max(cast(BHDAT as datetime)) from gelisler where dosyaNo = h.dosyaNo and TEDAVITURU in ('1','2')),getdate()),0) MuayeneKalanGun,
    h.HASTAADI+ ' '+h.HASTASOYADI ADI , s.tanimi,BASLANGICdt iseBaslama,
    h.sube Sube,sb.subeTanim subeTanim,sb.subeDoktor doktorKod,d.tanimi doktor,b.tanimi birim,blm.tanimi bolum,h.tetkikIstemGrupSablon
    from Personelkart h
    left join SIRKETLER_TNM s on s.SirketKod = h.SirketKod
    left join SIRKET_SUBE_TNM sb on sb.sirketKod = h.SirketKod and sb.subeKod = h.Sube
     left join Kurumlar k on k.kurum = h.kurum
     left join SKRS_IL_KODLARI IK on Ik.KODU = h.EV_SEHIR
     left join SKRS_ILCE_KODLARI ILCK on ILCK.KODU = H.EV_ILCE
     left join SKRS_MAHALLE_KODLARI MK on MK.KODU = H.EV_MAHALLE
     left join DoktorlarT d on d.kod = sb.subeDoktor
     left join Birimler b on b.kod = h.Birim
     left join Bolumler blm on blm.kod = h.Bolum
    where h.aktif = cast (@ap as varchar (1)) and
--    h.sirketKod like  '%' + @firma + '%' and
    (TCKIMLIKNO  = @TCKimlikNo or IsNull (@TCKimlikNo, '') = '')
    --isnull(h.MuayenePeryot,0) - isnull((select DATEDIFF(D,cast(BHDAT as datetime),getdate()) from gelisler where dosyaNo = h.dosyaNo and TEDAVITURU = '2'),0) <= @gun 
    order by h.SirketKod,sb.subeKod,h.HASTAADI,h.HASTASOYADI
end


end
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_frmPersonelListesi'
GO
COMMIT
GO
