BEGIN TRAN
GO
ALTER -- create -- drop
 TRIGGER [dbo].[Hizmet_Gruplari_TakipTrg]
   ON  [dbo].[Hizmet_Gruplari]
   AFTER DELETE,INSERT, UPDATE
AS 
BEGIN
  set nocount on
  declare 
    @TableName varchar (200) = 'Hizmet_Gruplari',
    @KeyFields varchar (200) = 'kod'

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLStrValueForString (kod, 0), 'D', 
    'DELETE FROM dbo.Hizmet_Gruplari where kod' + dbo.fn_SQLStrValueForString (kod, 1) 
  from deleted d
  where not exists (select 1 from inserted i where d.kod = i.kod)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLStrValueForString (kod, 0), 'I',
    'IF NOT EXISTS (SELECT 1 from dbo.Hizmet_Gruplari where kod' + dbo.fn_SQLStrValueForString (kod, 1) +')'+char (13) + char (10) + 
    'insert into dbo.Hizmet_Gruplari (kod, Tanimi)'+char (13) + char (10) + 
    'Select '+ dbo.fn_SQLStrValueForString (kod, 0) +', ' + 
    dbo.fn_SQLStrValueForString (Tanimi, 0)
  from inserted i
  where not exists (select 1 from deleted d where d.kod = i.kod)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, Script)
  select @TableName, @KeyFields, dbo.fn_SQLStrValueForString (i.kod, 0), 'U',
    'Update Hizmet_Gruplari'+char (13) + char (10) +'  SET '+char (13) + char (10) + '    ' +
    REVERSE (SUBSTRING (REvERSE (case when dbo.fn_SQLStrValueForString (d.Tanimi, 0) <> dbo.fn_SQLStrValueForString (i.Tanimi, 0) then 'Tanimi = ' + dbo.fn_SQLStrValueForString (i.Tanimi, 0) + ',' else '' end), 2, 8000)) +
    char (13) + char (10) + 'WHERE kod' + dbo.fn_SQLStrValueForString (i.kod, 1) 
  from inserted i
  inner join deleted d on d.kod = i.kod
  inner join 
    (SELECT kod
     FROM
     (select kod, Tanimi
      from
      (select -1 x, kod, Tanimi
       from deleted
       union all
       select 1 x, kod, Tanimi
       from inserted) U
      group by kod, Tanimi
      having sum (x) <> 0)w
     group by kod) u on u.kod = i.kod
  set nocount off
END
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'Hizmet_Gruplari_TakipTrg'
GO
COMMIT
GO
