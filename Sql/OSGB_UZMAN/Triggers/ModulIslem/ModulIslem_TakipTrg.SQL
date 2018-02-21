BEGIN TRAN
GO
ALTER -- create -- drop
 TRIGGER [dbo].[ModulIslem_TakipTrg]
   ON  [dbo].[ModulIslem]
   AFTER DELETE,INSERT, UPDATE
AS 
BEGIN
  set nocount on
  declare 
    @TableName varchar (200) = 'ModulIslem',
    @KeyFields varchar (200) = 'Modul,Islem'

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLStrValueForString (Modul, 0) + ',' + dbo.fn_SQLStrValueForString (Islem, 0), 'D', 
    'DELETE FROM dbo.ModulIslem where Modul' + dbo.fn_SQLStrValueForString (Modul, 1) + ' and Islem' + dbo.fn_SQLStrValueForString (Islem, 1) 
  from deleted d
  where not exists (select 1 from inserted i where d.Modul = i.Modul and d.Islem = i.Islem)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLStrValueForString (Modul, 0) + ',' + dbo.fn_SQLStrValueForString (Islem, 0), 'I',
    'IF NOT EXISTS (SELECT 1 from dbo.ModulIslem where Modul' + dbo.fn_SQLStrValueForString (Modul, 1) + ' and Islem' + dbo.fn_SQLStrValueForString (Islem, 1) +')'+char (13) + char (10) + 
    'insert into dbo.ModulIslem (Modul, Islem, Kapsam)'+char (13) + char (10) + 
    'Select '+ dbo.fn_SQLStrValueForString (Modul, 0) +', ' + 
    dbo.fn_SQLStrValueForString (Islem, 0) +', ' + 
    dbo.fn_SQLStrValueForString (Kapsam, 0)
  from inserted i
  where not exists (select 1 from deleted d where d.Modul = i.Modul and d.Islem = i.Islem)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, Script)
  select @TableName, @KeyFields, dbo.fn_SQLStrValueForString (i.Modul, 0) + ',' + dbo.fn_SQLStrValueForString (i.Islem, 0), 'U',
    'Update ModulIslem'+char (13) + char (10) +'  SET '+char (13) + char (10) + '    ' +
    REVERSE (SUBSTRING (REvERSE (case when dbo.fn_SQLStrValueForString (d.Kapsam, 0) <> dbo.fn_SQLStrValueForString (i.Kapsam, 0) then 'Kapsam = ' + dbo.fn_SQLStrValueForString (i.Kapsam, 0) + ',' else '' end), 2, 8000)) +
    char (13) + char (10) + 'WHERE Modul' + dbo.fn_SQLStrValueForString (i.Modul, 1) + ' and Islem' + dbo.fn_SQLStrValueForString (i.Islem, 1) 
  from inserted i
  inner join deleted d on d.Modul = i.Modul and d.Islem = i.Islem
  inner join 
    (SELECT Modul,Islem
     FROM
     (select Modul, Islem, Kapsam
      from
      (select -1 x, Modul, Islem, Kapsam
       from deleted
       union all
       select 1 x, Modul, Islem, Kapsam
       from inserted) U
      group by Modul, Islem, Kapsam
      having sum (x) <> 0)w
     group by Modul,Islem) u on u.Modul = i.Modul and u.Islem = i.Islem
  set nocount off
END
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'ModulIslem_TakipTrg'
GO
COMMIT
GO
