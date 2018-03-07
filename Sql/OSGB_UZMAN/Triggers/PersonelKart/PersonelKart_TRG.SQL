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
  -- ilk grup kontrol, bir alanýn güncellenmesi diðerinin güncellenmemesi durumunda güncellenenden güncellenmeyeni hesaplýyor.
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
  -- insert olmuþsa insert listesinde olmasa bile ikisini de güncellenmiþ saydýðý için, 
  if not exists (select 1 from deleted)
  begin
    if Update (DOGUMTARIHI) and Update (DOGUMTARIHIdt)
      update pk SET pk.DOGUMTARIHIdt = cast (CASE WHEN LTRIM (RTRIM (ISNULL (pk.DOGUMTARIHI, '')))='' THEN NULL ELSE LTRIM (RTRIM (ISNULL (pk.DOGUMTARIHI, ''))) END as datetime)
      from  [dbo].[PersonelKart] pk
      inner join inserted i on i.SirketKod = pk.SirketKod
        and i.Sube = pk.Sube
        and i.DosyaNo = pk.DosyaNo
	  where PK.DOGUMTARIHIdt IS NULL
    if Update (BASLANGIC) and Update (BASLANGICdt)
      update pk SET pk.BASLANGICdt = cast (CASE WHEN LTRIM (RTRIM (ISNULL (pk.BASLANGIC, '')))='' THEN NULL ELSE LTRIM (RTRIM (ISNULL (pk.BASLANGIC, ''))) END as datetime)
      from  [dbo].[PersonelKart] pk
      inner join inserted i on i.SirketKod = pk.SirketKod
        and i.Sube = pk.Sube
        and i.DosyaNo = pk.DosyaNo
	  where PK.BASLANGICdt IS NULL
    if Update (DOGUMTARIHIdt) and Update (DOGUMTARIHI)
      update pk SET pk.DOGUMTARIHI = convert (varchar, pk.DOGUMTARIHIdt, 112)
      from  [dbo].[PersonelKart] pk
      inner join inserted i on i.SirketKod = pk.SirketKod
        and i.Sube = pk.Sube
        and i.DosyaNo = pk.DosyaNo
	  where PK.DOGUMTARIHI IS NULL
    if Update (BASLANGICdt) and Update (BASLANGIC)
      update pk SET pk.BASLANGIC = convert (varchar, pk.BASLANGICdt, 112)
      from  [dbo].[PersonelKart] pk
      inner join inserted i on i.SirketKod = pk.SirketKod
        and i.Sube = pk.Sube
        and i.DosyaNo = pk.DosyaNo
	  where PK.BASLANGIC IS NULL
  end
  -- personelin þirketi deðiþmiþse geliþler tablosundaki kayýtlarýndaki þirket kodunu da güncelle.
  update g 
    Set g.SirketKod = i.SirketKod
  from inserted i
  inner join deleted d on d.dosyaNo = i.DosyaNo
  inner join Gelisler g on g.DosyaNo = i.DosyaNo
  where i.SirketKod <> d.SirketKod
    and IsNull (g.SirketKod, '') <> IsNull (i.SirketKod, '')

  set nocount off
END
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'PersonelKart_TRG'
GO
COMMIT
GO
