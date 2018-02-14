BEGIN TRAN
GO
ALTER PROCEDURE [dbo].[sp_MuayeneListesi] @tarih1 datetime,@tarih2 datetime 
AS
BEGIN
    select p.sirketKod,s.tanimi SirletAdi,p.HASTAADI HastaAdi,p.HASTASOYADI Soyadi, g.dosyaNo,g.BHDAT Tarih,g.ISTIRAHATGUN Istirahat,
    g.SEVKBRANS SevkEdilenBrans, d.tanimi doktor,mt.tanimi MuayeneTuru,g.PROTOKOLNO,SIKAYETLERI,g.MUAYENEBULGULARI,MUAYENESONUC, 
    (select case when count(*) > 0 then 'Var' else 'Yok' end from recete where dosyano = g.dosyano and gelisno = g.gelisNo) Recete
    from gelisler g
    join MuayeneTipleri mt on mt.Kod = g.TEDAVITURU
    join PersonelKart p on p.dosyaNo = g.dosyaNo
    join SIRKETLER_TNM s on s.sirketKod = p.sirketKod
    join doktorlarT d on d.kod = g.doktor
    where g.bhdat between convert(varchar,@tarih1,112) and convert(varchar,@tarih2,112)

END
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_MuayeneListesi'
GO
COMMIT
GO
