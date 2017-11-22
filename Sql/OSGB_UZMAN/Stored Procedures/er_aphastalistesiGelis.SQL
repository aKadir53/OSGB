BEGIN TRAN
GO
ALTER PROCEDURE [dbo].[er_aphastalistesiGelis] @tip varchar(1),@tarih1 varchar(10) = '',@tarih2 varchar(10) = '',@seans varchar(1) = '',@htip VARCHAR(1) = 'H'
 AS

declare @brans varchar(4)
select @brans = SLXX from parametreler where SLK = '33' and SLB = 'BRANS'

select h.dosyaNo,g.TakýpNo SIGORTANO,h.BABAADI,h.EV_TEL1,h.TCKIMLIKNO,g.BasvuruNo KarneNo,h.IS_TEL1,h.Seans,
h.DOGUMTARIHI dtar,
convert(varchar,convert(datetime, h.RaporTarihi),101)drapor,
(case when h.RaporGecerlik <> '' then convert(varchar,convert(datetime, h.RaporGecerlik),101)
else '' end)
drapgec ,

((h.HASTAADI+(' ')+h.HASTASOYADI))ADSOYAD,

(case h.CINSIYETI
  WHEN '1' THEN 'KADIN'
  WHEN '0' THEN 'ERKEK'
END)CINS,


(case h.KurumTip
  WHEN '1' THEN 'SSK'
  WHEN '2' THEN 'Baðkur'
  WHEN '3' THEN 'Emekli Sandýðý'
  WHEN '4' THEN 'Yeþil Kart'
  WHEN '5' THEN '18 Y.A. ve S.G.O.'
  WHEN '6' THEN 'Muhasebat(Ça.Dv.Memur)'
  WHEN '7' THEN 'Diðer'
  WHEN '8' THEN 'Özel'
END)Kurum,h.KurumTip,

(case h.Durum
  WHEN '1' THEN 'Çalýþan'
  WHEN '2' THEN 'Emekli'
  WHEN '3' THEN 'SSK Kurum Per'
  WHEN '4' THEN 'Diðer'
  WHEN '5' THEN 'Özel'
END)DurumS,h.Durum,



(case h.KANGRUBU
  WHEN 0 THEN 'A Rh(+)'
  WHEN 1 THEN 'A Rh(-)'
  WHEN 2 THEN 'AB Rh(+)'
  WHEN 3 THEN 'AB Rh(-)'
  WHEN 4 THEN 'B Rh(+)'
  WHEN 5 THEN 'B Rh(-)'
  WHEN 6 THEN '0 Rh(+)'
  WHEN 7 THEN '0 Rh(-)'

END)KANG,



(case when h.aktif =1 then

(case when substring(h.SeansGunleri,2,1) = '1' then '(Pazartesi)' else '' end) + '' +
(case when substring(h.SeansGunleri,3,1) = '1' then '(Salý)' else '' end) + '' +
(case when substring(h.SeansGunleri,4,1) = '1' then '(Çarþamba)' else '' end) + '' +
(case when substring(h.SeansGunleri,5,1) = '1' then '(Perþembe)' else '' end) + '' +
(case when substring(h.SeansGunleri,6,1) = '1' then '(Cuma)' else '' end) + '' +
(case when substring(h.SeansGunleri,7,1) = '1' then '(Cumartesi)' else '' end) + '' +
(case when substring(h.SeansGunleri,1,1) = '1' then '(Pazar)' else '' end)
else '' end) Gunler,h.SeansGunleri,H.YAKINLIK,

(h.SeansGunleri+' Günleri '+h.seans+'.Seans Gelmektedir.') as yaz3, 
@brans as BRANS,
g.gelisNo Gno,
(select max(isnull(gelisno,0)) from Gelisler where dosyaNo = h.dosyaNo ) sonGelisno,
g.ornekNo,g.CikisOrnekNO,g.doktor , dbo.provizyonTarihi(h.dosyaNo,@tarih1) provizyonTarihi , h.makinaNo , h.Seans,r.bitisTarihi,r.seanssayi,
h.EV_ADRES


from hastakart h

left join gelisler g on g.dosyaNo = h.dosyaNo --and g.gelisNO = (select max(isnull(gelisno,0)) from Gelisler where dosyaNo = h.dosyaNo)-- and bhdat between @tarih and @tarih+30)
left join raporlar r on r.dosyano = g.dosyano and r.aktif = 1

where  bhdat between @tarih1 and @tarih2 and @seans like '%'+@seans AND h.Tip = @htip

order by dbo.provizyonTarihi(h.dosyaNo,@tarih1),h.HASTAADI,h.HASTASOYADI
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'er_aphastalistesiGelis'
GO
COMMIT
GO
