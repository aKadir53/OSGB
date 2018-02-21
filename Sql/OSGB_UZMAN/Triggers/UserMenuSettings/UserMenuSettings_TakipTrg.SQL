BEGIN TRAN
GO
ALTER -- create -- drop
 TRIGGER [dbo].[UserMenuSettings_TakipTrg]
   ON  [dbo].[UserMenuSettings]
   AFTER DELETE,INSERT, UPDATE
AS 
BEGIN
  set nocount on
  declare 
    @TableName varchar (200) = 'UserMenuSettings',
    @KeyFields varchar (200) = 'Kullanici,ID'

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLStrValueForString (Kullanici, 0) + ',' + dbo.fn_SQLIntValueForString (ID, 0), 'D', 
    'DELETE FROM dbo.UserMenuSettings where Kullanici' + dbo.fn_SQLStrValueForString (Kullanici, 1) + ' and ID' + dbo.fn_SQLIntValueForString (ID, 1) 
  from deleted d
  where not exists (select 1 from inserted i where d.Kullanici = i.Kullanici and d.ID = i.ID)
	and Kullanici = 'admin'
	and DB_NAME () = 'OSGB_UZMAN'

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLStrValueForString (Kullanici, 0) + ',' + dbo.fn_SQLIntValueForString (ID, 0), 'I',
    'IF NOT EXISTS (SELECT 1 from dbo.UserMenuSettings where Kullanici' + dbo.fn_SQLStrValueForString (Kullanici, 1) + ' and ID' + dbo.fn_SQLIntValueForString (ID, 1) +')'+char (13) + char (10) + 
    'insert into dbo.UserMenuSettings (Kullanici, Menu, ID, Izin)'+char (13) + char (10) + 
    'Select '+ dbo.fn_SQLStrValueForString (Kullanici, 0) +', ' + 
    dbo.fn_SQLStrValueForString (Menu, 0) +', ' + 
    dbo.fn_SQLIntValueForString (ID, 0) +', ' + 
    dbo.fn_SQLIntValueForString (Izin, 0)
  from inserted i
  where not exists (select 1 from deleted d where d.Kullanici = i.Kullanici and d.ID = i.ID)
	and Kullanici = 'admin'
	and DB_NAME () = 'OSGB_UZMAN'

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, Script)
  select @TableName, @KeyFields, dbo.fn_SQLStrValueForString (i.Kullanici, 0) + ',' + dbo.fn_SQLIntValueForString (i.ID, 0), 'U',
    'Update UserMenuSettings'+char (13) + char (10) +'  SET '+char (13) + char (10) + '    ' +
    REVERSE (SUBSTRING (REvERSE (case when dbo.fn_SQLStrValueForString (d.Menu, 0) <> dbo.fn_SQLStrValueForString (i.Menu, 0) then 'Menu = ' + dbo.fn_SQLStrValueForString (i.Menu, 0) + ',' else '' end +
    case when dbo.fn_SQLIntValueForString (d.Izin, 0) <> dbo.fn_SQLIntValueForString (i.Izin, 0) then 'Izin = ' + dbo.fn_SQLIntValueForString (i.Izin, 0) + ',' else '' end), 2, 8000)) +
    char (13) + char (10) + 'WHERE Kullanici' + dbo.fn_SQLStrValueForString (i.Kullanici, 1) + ' and ID' + dbo.fn_SQLIntValueForString (i.ID, 1) 
  from inserted i
  inner join deleted d on d.Kullanici = i.Kullanici and d.ID = i.ID
  inner join 
    (SELECT Kullanici,ID
     FROM
     (select Kullanici, Menu, ID, Izin
      from
      (select -1 x, Kullanici, Menu, ID, Izin
       from deleted
	   where Kullanici = 'admin'
	     and DB_NAME () = 'OSGB_UZMAN'
       union all
       select 1 x, Kullanici, Menu, ID, Izin
       from inserted
	   where Kullanici = 'admin'
	     and DB_NAME () = 'OSGB_UZMAN') U
      group by Kullanici, Menu, ID, Izin
      having sum (x) <> 0)w
     group by Kullanici,ID) u on u.Kullanici = i.Kullanici and u.ID = i.ID
  set nocount off
END
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'UserMenuSettings_TakipTrg'
GO
COMMIT
GO
