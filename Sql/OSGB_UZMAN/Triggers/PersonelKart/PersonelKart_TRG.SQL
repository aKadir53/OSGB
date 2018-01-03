BEGIN TRAN
GO
ALTER -- Create
 TRIGGER [dbo].[PersonelKart_TRG]
   ON  [dbo].[PersonelKart]
   AFTER DELETE,INSERT, UPDATE
AS 
BEGIN
  set nocount on
  -- ÜÖ 20180102 veritabanýna yazýlan varchar tarihleri tarih saat tipinde çevirip klon alana yazmaya çalýþarak bir nevi bozuk tarih kontrolü / engellemesi yapýyoruz.
  if Update (DOGUMTARIHI) and not Update (DOGUMTARIHIdt)
    update pk SET pk.DOGUMTARIHIdt = cast (CASE WHEN LTRIM (RTRIM (ISNULL (pk.DOGUMTARIHI, '')))='' THEN NULL ELSE LTRIM (RTRIM (ISNULL (pk.DOGUMTARIHI, ''))) END as datetime)
	from  [dbo].[PersonelKart] pk
	inner join inserted i on i.SirketKod = pk.SirketKod
	  and i.Sube = pk.Sube
	  and i.DosyaNo = pk.DosyaNo
  if Update (BASLANGIC) and not Update (BASLANGICdt)
    update pk SET pk.BASLANGICdt = cast (CASE WHEN LTRIM (RTRIM (ISNULL (pk.BASLANGIC, '')))='' THEN NULL ELSE LTRIM (RTRIM (ISNULL (pk.BASLANGIC, ''))) END as datetime)
	from  [dbo].[PersonelKart] pk
	inner join inserted i on i.SirketKod = pk.SirketKod
	  and i.Sube = pk.Sube
	  and i.DosyaNo = pk.DosyaNo
  if Update (DOGUMTARIHIdt) and not Update (DOGUMTARIHI)
    update pk SET pk.DOGUMTARIHI = convert (varchar, pk.DOGUMTARIHIdt, 112)
	from  [dbo].[PersonelKart] pk
	inner join inserted i on i.SirketKod = pk.SirketKod
	  and i.Sube = pk.Sube
	  and i.DosyaNo = pk.DosyaNo
  if Update (BASLANGICdt) and not Update (BASLANGIC)
    update pk SET pk.BASLANGIC = convert (varchar, pk.BASLANGICdt, 112)
	from  [dbo].[PersonelKart] pk
	inner join inserted i on i.SirketKod = pk.SirketKod
	  and i.Sube = pk.Sube
	  and i.DosyaNo = pk.DosyaNo
  set nocount off
END
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'PersonelKart_TRG'
GO
COMMIT
GO
