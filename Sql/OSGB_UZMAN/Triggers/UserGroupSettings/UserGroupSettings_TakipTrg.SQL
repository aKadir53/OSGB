BEGIN TRAN
GO
ALTER -- create -- drop
 TRIGGER [dbo].[UserGroupSettings_TakipTrg]
   ON  [dbo].[UserGroupSettings]
   AFTER DELETE,INSERT, UPDATE
AS 
BEGIN
  set nocount on
  declare 
    @TableName varchar (200) = 'UserGroupSettings',
    @KeyFields varchar (200) = 'Kullanici,Modul,Islem'

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLIntValueForString (Kullanici, 0) + ',' + dbo.fn_SQLStrValueForString (Modul, 0) + ',' + dbo.fn_SQLStrValueForString (Islem, 0), 'D', 
    'DELETE FROM dbo.UserGroupSettings where Kullanici' + dbo.fn_SQLIntValueForString (Kullanici, 1) + ' and Modul' + dbo.fn_SQLStrValueForString (Modul, 1) + ' and Islem' + dbo.fn_SQLStrValueForString (Islem, 1) 
  from deleted d
  where not exists (select 1 from inserted i where d.Kullanici = i.Kullanici and d.Modul = i.Modul and d.Islem = i.Islem)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLIntValueForString (Kullanici, 0) + ',' + dbo.fn_SQLStrValueForString (Modul, 0) + ',' + dbo.fn_SQLStrValueForString (Islem, 0), 'I',
    'IF NOT EXISTS (SELECT 1 from dbo.UserGroupSettings where Kullanici' + dbo.fn_SQLIntValueForString (Kullanici, 1) + ' and Modul' + dbo.fn_SQLStrValueForString (Modul, 1) + ' and Islem' + dbo.fn_SQLStrValueForString (Islem, 1) +')'+char (13) + char (10) + 
    'insert into dbo.UserGroupSettings (Kullanici, Modul, Islem, Izin)'+char (13) + char (10) + 
    'Select '+ dbo.fn_SQLIntValueForString (Kullanici, 0) +', ' + 
    dbo.fn_SQLStrValueForString (Modul, 0) +', ' + 
    dbo.fn_SQLStrValueForString (Islem, 0) +', ' + 
    dbo.fn_SQLIntValueForString (Izin, 0)
  from inserted i
  where not exists (select 1 from deleted d where d.Kullanici = i.Kullanici and d.Modul = i.Modul and d.Islem = i.Islem)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, Script)
  select @TableName, @KeyFields, dbo.fn_SQLIntValueForString (i.Kullanici, 0) + ',' + dbo.fn_SQLStrValueForString (i.Modul, 0) + ',' + dbo.fn_SQLStrValueForString (i.Islem, 0), 'U',
    'Update UserGroupSettings'+char (13) + char (10) +'  SET '+char (13) + char (10) + '    ' +
    REVERSE (SUBSTRING (REvERSE (case when dbo.fn_SQLIntValueForString (d.Izin, 0) <> dbo.fn_SQLIntValueForString (i.Izin, 0) then 'Izin = ' + dbo.fn_SQLIntValueForString (i.Izin, 0) + ',' else '' end), 2, 8000)) +
    char (13) + char (10) + 'WHERE Kullanici' + dbo.fn_SQLIntValueForString (i.Kullanici, 1) + ' and Modul' + dbo.fn_SQLStrValueForString (i.Modul, 1) + ' and Islem' + dbo.fn_SQLStrValueForString (i.Islem, 1) 
  from inserted i
  inner join deleted d on d.Kullanici = i.Kullanici and d.Modul = i.Modul and d.Islem = i.Islem
  inner join 
    (SELECT Kullanici,Modul,Islem
     FROM
     (select Kullanici, Modul, Islem, Izin
      from
      (select -1 x, Kullanici, Modul, Islem, Izin
       from deleted
       union all
       select 1 x, Kullanici, Modul, Islem, Izin
       from inserted) U
      group by Kullanici, Modul, Islem, Izin
      having sum (x) <> 0)w
     group by Kullanici,Modul,Islem) u on u.Kullanici = i.Kullanici and u.Modul = i.Modul and u.Islem = i.Islem
  set nocount off
END
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'UserGroupSettings_TakipTrg'
GO
COMMIT
GO
