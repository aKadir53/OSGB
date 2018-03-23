BEGIN TRAN
GO
ALTER -- create -- drop
 TRIGGER [dbo].[UyumSoftFaturaDurumKodlari_TakipTrg]
   ON  [dbo].[UyumSoftFaturaDurumKodlari]
   AFTER DELETE,INSERT, UPDATE
AS 
BEGIN
  set nocount on
  declare 
    @TableName varchar (200) = 'UyumSoftFaturaDurumKodlari',
    @KeyFields varchar (200) = 'kod'

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLIntValueForString (kod, 0), 'D', 0,
    'DELETE FROM dbo.UyumSoftFaturaDurumKodlari where kod' + dbo.fn_SQLIntValueForString (kod, 1) 
  from deleted d
  where not exists (select 1 from inserted i where d.kod = i.kod)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLIntValueForString (kod, 0), 'I', 0,
    'IF NOT EXISTS (SELECT 1 from dbo.UyumSoftFaturaDurumKodlari where kod' + dbo.fn_SQLIntValueForString (kod, 1) +')'+char (13) + char (10) + 
    'insert into dbo.UyumSoftFaturaDurumKodlari (enumDegeri, aciklama, kod)'+char (13) + char (10) + 
    'Select '+ dbo.fn_SQLStrValueForString (enumDegeri, 0) +', ' + 
    dbo.fn_SQLStrValueForString (aciklama, 0) +', ' + 
    dbo.fn_SQLIntValueForString (kod, 0)
  from inserted i
  where not exists (select 1 from deleted d where d.kod = i.kod)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select @TableName, @KeyFields, dbo.fn_SQLIntValueForString (i.kod, 0), 'U', 0,
    'Update UyumSoftFaturaDurumKodlari'+char (13) + char (10) +'  SET '+char (13) + char (10) + '    ' +
    REVERSE (SUBSTRING (REvERSE (case when dbo.fn_SQLStrValueForString (d.enumDegeri, 0) <> dbo.fn_SQLStrValueForString (i.enumDegeri, 0) then 'enumDegeri = ' + dbo.fn_SQLStrValueForString (i.enumDegeri, 0) + ',' else '' end +
    case when dbo.fn_SQLStrValueForString (d.aciklama, 0) <> dbo.fn_SQLStrValueForString (i.aciklama, 0) then 'aciklama = ' + dbo.fn_SQLStrValueForString (i.aciklama, 0) + ',' else '' end), 2, 8000)) +
    char (13) + char (10) + 'WHERE kod' + dbo.fn_SQLIntValueForString (i.kod, 1) 
  from inserted i
  inner join deleted d on d.kod = i.kod
  inner join 
    (SELECT kod
     FROM
     (select enumDegeri, aciklama, kod
      from
      (select -1 x, enumDegeri, aciklama, kod
       from deleted
       union all
       select 1 x, enumDegeri, aciklama, kod
       from inserted) U
      group by enumDegeri, aciklama, kod
      having sum (x) <> 0)w
     group by kod) u on u.kod = i.kod
  set nocount off
END
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'UyumSoftFaturaDurumKodlari_TakipTrg'
GO
COMMIT
GO
