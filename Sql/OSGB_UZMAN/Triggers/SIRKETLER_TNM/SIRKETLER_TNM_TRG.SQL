BEGIN TRAN
GO
-- [CMPTR] - [24.10.2017 11:09:07]
ALTER  --  ALTER
 TRIGGER [dbo].[SIRKETLER_TNM_TRG]
   ON  [dbo].[SIRKETLER_TNM]
   AFTER DELETE,INSERT, UPDATE
AS 
BEGIN
  set nocount on
  --firma kartý insert olmuþsa ve þube tablosunda 00 kodlu yoksa ekler...
  if exists (select 1 from inserted)
  begin
    insert into SIRKET_SUBE_TNM (SirketKod, subeKod, subeTanim, SubeDoktor, BolgeMudurlukSicilNo)
    select SirketKod, '00' subeKod, 'MERKEZ' subeTanim, doktor, BolgeMudurlukSicilNo
    from inserted s
    where not exists (select 1 from SIRKET_SUBE_TNM sb where sb.sirketKod = s.SirketKod and sb.subeKod = '00')
  end
  -- firma kartý update olmuþsa ve bölge müdürlük sicil no deðiþmiþse ve herhangi bir þubenin bölge müdürlük sicil no deðeri ana firma kartýnýn eski sicil no deðeri ile ayný ise o þubelerin bölge müdürlük sicil numaralarýný 
  if exists (select 1 from inserted) and exists (select 1 from deleted)
  begin
    update Sube set sube.BolgeMudurlukSicilNo = ins.BolgeMudurlukSicilNo 
    from inserted ins
    inner join deleted del on del.SirketKod = ins.SirketKod
      and ISNULL (del.BolgeMudurlukSicilNo, '') <> IsNull (ins.BolgeMudurlukSicilNo, '')
    inner join SIRKET_SUBE_TNM sube on sube.sirketKod = del.SirketKod
      and ISNULL (sube.BolgeMudurlukSicilNo, '') = ISNULL (del.BolgeMudurlukSicilNo, '')
  end
  set nocount off
END
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'SIRKETLER_TNM_TRG'
GO
COMMIT
GO
