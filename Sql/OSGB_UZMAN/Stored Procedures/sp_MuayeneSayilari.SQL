BEGIN TRAN
GO
ALTER PROCEDURE [dbo].[sp_MuayeneSayilari] @tarih1 datetime,@tarih2 datetime 
AS
BEGIN
    select p.sirketKod,s.tanimi Sirket,d.tanimi doktor,
    count(*) MuayeneSayilarý,
    sum(case when mt.kod = 1 then 1 else 0 end) IseGiris,
    sum(case when mt.kod = 3 then 1 else 0 end) Normal,
    sum(case when mt.kod = 2 then 1 else 0 end) Peryodik,
    sum(case when not mt.kod in (1,2,3) then 1 else 0 end) Diger,
    sum(case when r.dosyaNo is not null then 1 else 0 end) Receteli,
    sum(case when r.dosyaNo is null then 1 else 0 end) Recetesiz,
    sum(case when isnull(g.SEVKBRANS,'') <> '' then 1 else 0 end) SevkEdilen

    from gelisler g
    join MuayeneTipleri mt on mt.Kod = g.TEDAVITURU
    join PersonelKart p on p.dosyaNo = g.dosyaNo
    join SIRKETLER_TNM s on s.sirketKod = p.sirketKod
    join doktorlarT d on d.kod = g.doktor
    left join recete r on r.dosyaNo = g.dosyaNO and r.gelisNO = g.gelisNo
    where g.bhdat between convert(varchar,@tarih1,112) and convert(varchar,@tarih2,112)
    group by p.sirketKod,s.tanimi,d.tanimi
END
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_MuayeneSayilari'
GO
COMMIT
GO
