BEGIN TRAN
GO
ALTER -- create -- drop
 TRIGGER [dbo].[CihazBilgileri_TakipTrg]
   ON  [dbo].[CihazBilgileri]
   AFTER DELETE,INSERT, UPDATE
AS 
BEGIN
  set nocount on
  declare 
    @TableName varchar (200) = 'CihazBilgileri',
    @KeyFields varchar (200) = 'kod'

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLIntValueForString (kod, 0), 'D', 0,
    'DELETE FROM dbo.CihazBilgileri where kod' + dbo.fn_SQLIntValueForString (kod, 1) 
  from deleted d
  where not exists (select 1 from inserted i where d.kod = i.kod)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLIntValueForString (kod, 0), 'I', 1,
    'IF NOT EXISTS (SELECT 1 from dbo.CihazBilgileri where kod' + dbo.fn_SQLIntValueForString (kod, 1) +')'+char (13) + char (10) + 
    'insert into dbo.CihazBilgileri (kod, cihazTurKod, Ozellik, sira)'+char (13) + char (10) + 
    'Select '+ dbo.fn_SQLIntValueForString (kod, 0) +', ' + 
    dbo.fn_SQLIntValueForString (cihazTurKod, 0) +', ' + 
    dbo.fn_SQLStrValueForString (Ozellik, 0) +', ' + 
    dbo.fn_SQLIntValueForString (sira, 0)
  from inserted i
  where not exists (select 1 from deleted d where d.kod = i.kod)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select @TableName, @KeyFields, dbo.fn_SQLIntValueForString (i.kod, 0), 'U', 0,
    'Update CihazBilgileri'+char (13) + char (10) +'  SET '+char (13) + char (10) + '    ' +
    REVERSE (SUBSTRING (REvERSE (case when dbo.fn_SQLIntValueForString (d.cihazTurKod, 0) <> dbo.fn_SQLIntValueForString (i.cihazTurKod, 0) then 'cihazTurKod = ' + dbo.fn_SQLIntValueForString (i.cihazTurKod, 0) + ',' else '' end +
    case when dbo.fn_SQLStrValueForString (d.Ozellik, 0) <> dbo.fn_SQLStrValueForString (i.Ozellik, 0) then 'Ozellik = ' + dbo.fn_SQLStrValueForString (i.Ozellik, 0) + ',' else '' end +
    case when dbo.fn_SQLIntValueForString (d.sira, 0) <> dbo.fn_SQLIntValueForString (i.sira, 0) then 'sira = ' + dbo.fn_SQLIntValueForString (i.sira, 0) + ',' else '' end), 2, 8000)) +
    char (13) + char (10) + 'WHERE kod' + dbo.fn_SQLIntValueForString (i.kod, 1) 
  from inserted i
  inner join deleted d on d.kod = i.kod
  inner join 
    (SELECT kod
     FROM
     (select kod, cihazTurKod, Ozellik, sira
      from
      (select -1 x, kod, cihazTurKod, Ozellik, sira
       from deleted
       union all
       select 1 x, kod, cihazTurKod, Ozellik, sira
       from inserted) U
      group by kod, cihazTurKod, Ozellik, sira
      having sum (x) <> 0)w
     group by kod) u on u.kod = i.kod
  set nocount off
END
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'CihazBilgileri_TakipTrg'
GO
COMMIT
GO
