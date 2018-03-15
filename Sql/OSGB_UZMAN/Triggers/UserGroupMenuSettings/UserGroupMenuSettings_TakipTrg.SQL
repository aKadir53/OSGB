BEGIN TRAN
GO
ALTER -- create -- drop
 TRIGGER [dbo].[UserGroupMenuSettings_TakipTrg]
   ON  [dbo].[UserGroupMenuSettings]
   AFTER DELETE,INSERT, UPDATE
AS 
BEGIN
  set nocount on
  declare 
    @TableName varchar (200) = 'UserGroupMenuSettings',
    @KeyFields varchar (200) = 'kullanici,ID'

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLIntValueForString (kullanici, 0) + ',' + dbo.fn_SQLIntValueForString (ID, 0), 'D', 0,
    'DELETE FROM dbo.UserGroupMenuSettings where kullanici' + dbo.fn_SQLIntValueForString (kullanici, 1) + ' and ID' + dbo.fn_SQLIntValueForString (ID, 1) 
  from deleted d
  where not exists (select 1 from inserted i where d.kullanici = i.kullanici and d.ID = i.ID)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLIntValueForString (kullanici, 0) + ',' + dbo.fn_SQLIntValueForString (ID, 0), 'I', 0,
    'IF NOT EXISTS (SELECT 1 from dbo.UserGroupMenuSettings where kullanici' + dbo.fn_SQLIntValueForString (kullanici, 1) + ' and ID' + dbo.fn_SQLIntValueForString (ID, 1) +')'+char (13) + char (10) + 
    'insert into dbo.UserGroupMenuSettings (kullanici, Menu, ID, Izin)'+char (13) + char (10) + 
    'Select '+ dbo.fn_SQLIntValueForString (kullanici, 0) +', ' + 
    dbo.fn_SQLStrValueForString (Menu, 0) +', ' + 
    dbo.fn_SQLIntValueForString (ID, 0) +', ' + 
    dbo.fn_SQLIntValueForString (Izin, 0)
  from inserted i
  where not exists (select 1 from deleted d where d.kullanici = i.kullanici and d.ID = i.ID)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select @TableName, @KeyFields, dbo.fn_SQLIntValueForString (i.kullanici, 0) + ',' + dbo.fn_SQLIntValueForString (i.ID, 0), 'U', 0,
    'Update UserGroupMenuSettings'+char (13) + char (10) +'  SET '+char (13) + char (10) + '    ' +
    REVERSE (SUBSTRING (REvERSE (case when dbo.fn_SQLStrValueForString (d.Menu, 0) <> dbo.fn_SQLStrValueForString (i.Menu, 0) then 'Menu = ' + dbo.fn_SQLStrValueForString (i.Menu, 0) + ',' else '' end +
    case when dbo.fn_SQLIntValueForString (d.Izin, 0) <> dbo.fn_SQLIntValueForString (i.Izin, 0) then 'Izin = ' + dbo.fn_SQLIntValueForString (i.Izin, 0) + ',' else '' end), 2, 8000)) +
    char (13) + char (10) + 'WHERE kullanici' + dbo.fn_SQLIntValueForString (i.kullanici, 1) + ' and ID' + dbo.fn_SQLIntValueForString (i.ID, 1) 
  from inserted i
  inner join deleted d on d.kullanici = i.kullanici and d.ID = i.ID
  inner join 
    (SELECT kullanici,ID
     FROM
     (select kullanici, Menu, ID, Izin
      from
      (select -1 x, kullanici, Menu, ID, Izin
       from deleted
       union all
       select 1 x, kullanici, Menu, ID, Izin
       from inserted) U
      group by kullanici, Menu, ID, Izin
      having sum (x) <> 0)w
     group by kullanici,ID) u on u.kullanici = i.kullanici and u.ID = i.ID
  set nocount off
END
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'UserGroupMenuSettings_TakipTrg'
GO
COMMIT
GO
