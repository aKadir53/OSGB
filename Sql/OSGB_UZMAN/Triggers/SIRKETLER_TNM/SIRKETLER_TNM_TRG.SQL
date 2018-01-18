BEGIN TRAN
GO
ALTER  --  create
 TRIGGER [dbo].[SIRKETLER_TNM_TRG]
   ON  [dbo].[SIRKETLER_TNM]
   AFTER DELETE,INSERT, UPDATE
AS 
BEGIN
  set nocount on
  --firma kartý insert olmuþsa ve þube tablosunda 00 kodlu yoksa ekler...
  --firma kartý bilgileri güncellendiðinde ayný bilgi þubede merkezdeki ile ayný deðere sahipse onlarý da deðiþtirir.
  if exists (select 1 from inserted)
  begin
    insert into SIRKET_SUBE_TNM (SirketKod, subeKod, subeTanim, BolgeMudurlukSicilNo, subeSiciNo)
    select SirketKod, '00' subeKod, 'MERKEZ' subeTanim, BolgeMudurlukSicilNo, IsyeriSicilNo
    from inserted s
    where not exists (select 1 from SIRKET_SUBE_TNM sb where sb.sirketKod = s.SirketKod and sb.subeKod = '00')
  end
  -- ÜÖ 20171024 firma kartý update olmuþsa.... 
  if exists (select 1 from inserted) and exists (select 1 from deleted)
  begin
    -- ÜÖ 20171024 ve bölge müdürlük sicil no deðiþmiþse 
    --             ve herhangi bir þubenin bölge müdürlük sicil no deðeri ana firma kartýnýn eski sicil no deðeri ile ayný ise 
    --             o þubelerin bölge müdürlük sicil numaralarýný merkezinki ile birlikte deðiþtir
    update Sube set sube.BolgeMudurlukSicilNo = ins.BolgeMudurlukSicilNo 
    from inserted ins
    inner join deleted del on del.SirketKod = ins.SirketKod
      and ISNULL (del.BolgeMudurlukSicilNo, '') <> IsNull (ins.BolgeMudurlukSicilNo, '')
    inner join SIRKET_SUBE_TNM sube on sube.sirketKod = del.SirketKod
      and ISNULL (sube.BolgeMudurlukSicilNo, '') = ISNULL (del.BolgeMudurlukSicilNo, '')

    -- ÜÖ 20171024 ve iþyeri sicili deðiþmiþse 
    --             ve herhangi bir þubenin iþyeri sicili deðeri ana firma kartýnýn eski iþyeri sicili deðeri ile ayný ise 
    --             o þubelerin iþyeri sicililerini merkezinki ile birlikte deðiþtir
    update Sube set sube.subeSiciNo = ins.IsyeriSicilNo 
    from inserted ins
    inner join deleted del on del.SirketKod = ins.SirketKod
      and ISNULL (del.IsyeriSicilNo, '') <> IsNull (ins.IsyeriSicilNo, '')
    inner join SIRKET_SUBE_TNM sube on sube.sirketKod = del.SirketKod
      and ISNULL (sube.subeSiciNo, '') = ISNULL (del.IsyeriSicilNo, '')
  end
  set nocount off
END
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'SIRKETLER_TNM_TRG'
GO
COMMIT
GO
