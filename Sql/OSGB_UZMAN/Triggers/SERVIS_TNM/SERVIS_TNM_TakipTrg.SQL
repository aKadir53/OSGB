BEGIN TRAN
GO
ALTER -- create -- drop
 TRIGGER [dbo].[SERVIS_TNM_TakipTrg]
   ON  [dbo].[SERVIS_TNM]
   AFTER DELETE,INSERT, UPDATE
AS 
BEGIN
  set nocount on
  declare 
    @TableName varchar (200) = 'SERVIS_TNM',
    @KeyFields varchar (200) = 'kod'

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLStrValueForString (kod, 0), 'D', 0,
    'DELETE FROM dbo.SERVIS_TNM where kod' + dbo.fn_SQLStrValueForString (kod, 1) 
  from deleted d
  where not exists (select 1 from inserted i where d.kod = i.kod)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLStrValueForString (kod, 0), 'I', 0,
    'IF NOT EXISTS (SELECT 1 from dbo.SERVIS_TNM where kod' + dbo.fn_SQLStrValueForString (kod, 1) +')'+char (13) + char (10) + 
    'insert into dbo.SERVIS_TNM (kod, tanimi, skrs_kod)'+char (13) + char (10) + 
    'Select '+ dbo.fn_SQLStrValueForString (kod, 0) +', ' + 
    dbo.fn_SQLStrValueForString (tanimi, 0) +', ' + 
    dbo.fn_SQLStrValueForString (skrs_kod, 0)
  from inserted i
  where not exists (select 1 from deleted d where d.kod = i.kod)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select @TableName, @KeyFields, dbo.fn_SQLStrValueForString (i.kod, 0), 'U', 0,
    'Update SERVIS_TNM'+char (13) + char (10) +'  SET '+char (13) + char (10) + '    ' +
    REVERSE (SUBSTRING (REvERSE (case when dbo.fn_SQLStrValueForString (d.tanimi, 0) <> dbo.fn_SQLStrValueForString (i.tanimi, 0) then 'tanimi = ' + dbo.fn_SQLStrValueForString (i.tanimi, 0) + ',' else '' end +
    case when dbo.fn_SQLStrValueForString (d.skrs_kod, 0) <> dbo.fn_SQLStrValueForString (i.skrs_kod, 0) then 'skrs_kod = ' + dbo.fn_SQLStrValueForString (i.skrs_kod, 0) + ',' else '' end), 2, 8000)) +
    char (13) + char (10) + 'WHERE kod' + dbo.fn_SQLStrValueForString (i.kod, 1) 
  from inserted i
  inner join deleted d on d.kod = i.kod
  inner join 
    (SELECT kod
     FROM
     (select kod, tanimi, skrs_kod
      from
      (select -1 x, kod, tanimi, skrs_kod
       from deleted
       union all
       select 1 x, kod, tanimi, skrs_kod
       from inserted) U
      group by kod, tanimi, skrs_kod
      having sum (x) <> 0)w
     group by kod) u on u.kod = i.kod
  set nocount off
END
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'SERVIS_TNM_TakipTrg'
GO
COMMIT
GO
