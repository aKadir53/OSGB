BEGIN TRAN
GO
-- [CMPTR] - [24.10.2017 10:47:42]
ALTER  --  ALTER
 TRIGGER [dbo].[SIRKETLER_TNM_TRG]
   ON  [dbo].[SIRKETLER_TNM]
   AFTER DELETE,INSERT, UPDATE
AS 
BEGIN
  set nocount on
  --firma kartý insert olmuþsa ve þube tablosunda 00 kodlu yoksa ekler...
  insert into SIRKET_SUBE_TNM (SirketKod, subeKod, subeTanim, SubeDoktor, BolgeMudurlukSicilNo)
  select SirketKod, '00' subeKod, 'MERKEZ' subeTanim, doktor, BolgeMudurlukSicilNo
  from inserted s
  where not exists (select 1 from SIRKET_SUBE_TNM sb where sb.sirketKod = s.SirketKod and sb.subeKod = '00')
  set nocount off
END
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'SIRKETLER_TNM_TRG'
GO
COMMIT
GO
