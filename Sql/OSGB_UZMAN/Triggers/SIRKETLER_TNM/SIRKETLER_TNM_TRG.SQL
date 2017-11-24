BEGIN TRAN
GO
-- [CMPTR] - [23.10.2017 18:39:57]
ALTER  --  ALTER
 TRIGGER [dbo].[SIRKETLER_TNM_TRG]
   ON  [dbo].[SIRKETLER_TNM]
   AFTER DELETE,INSERT
AS 
BEGIN
  set nocount on
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
