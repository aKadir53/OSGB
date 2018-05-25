BEGIN TRAN
GO
ALTER -- create -- drop
 TRIGGER [dbo].[Sistemsorgulari_TakipTrg]
   ON  [dbo].[Sistemsorgulari]
   AFTER DELETE,INSERT, UPDATE
AS 
BEGIN
  set nocount on
  declare 
    @TableName varchar (200) = 'Sistemsorgulari',
    @KeyFields varchar (200) = 'kod'

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLIntValueForString (kod, 0), 'D', 0,
    'DELETE FROM dbo.Sistemsorgulari where kod' + dbo.fn_SQLIntValueForString (kod, 1) 
  from deleted d
  where not exists (select 1 from inserted i where d.kod = i.kod)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLIntValueForString (kod, 0), 'I', 0,
    'IF NOT EXISTS (SELECT 1 from dbo.Sistemsorgulari where kod' + dbo.fn_SQLIntValueForString (kod, 1) +')'+char (13) + char (10) + 
    'insert into dbo.Sistemsorgulari (kod, tanim)'+char (13) + char (10) + 
    'Select '+ dbo.fn_SQLIntValueForString (kod, 0) +', ' + 
    dbo.fn_SQLStrValueForString (tanim, 0)
  from inserted i
  where not exists (select 1 from deleted d where d.kod = i.kod)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select @TableName, @KeyFields, dbo.fn_SQLIntValueForString (i.kod, 0), 'U', 0,
    'Update Sistemsorgulari'+char (13) + char (10) +'  SET '+char (13) + char (10) + '    ' +
    REVERSE (SUBSTRING (REvERSE (case when dbo.fn_SQLStrValueForString (d.tanim, 0) <> dbo.fn_SQLStrValueForString (i.tanim, 0) then 'tanim = ' + dbo.fn_SQLStrValueForString (i.tanim, 0) + ',' else '' end), 2, 8000)) +
    char (13) + char (10) + 'WHERE kod' + dbo.fn_SQLIntValueForString (i.kod, 1) 
  from inserted i
  inner join deleted d on d.kod = i.kod
  inner join 
    (SELECT kod
     FROM
     (select kod, tanim
      from
      (select -1 x, kod, tanim
       from deleted
       union all
       select 1 x, kod, tanim
       from inserted) U
      group by kod, tanim
      having sum (x) <> 0)w
     group by kod) u on u.kod = i.kod
  set nocount off
END
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'Sistemsorgulari_TakipTrg'
GO
COMMIT
GO
