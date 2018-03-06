BEGIN TRAN
GO
ALTER -- create -- drop
 TRIGGER [dbo].[IseGirisMuayeneAltGruplari_TakipTrg]
   ON  [dbo].[IseGirisMuayeneAltGruplari]
   AFTER DELETE,INSERT, UPDATE
AS 
BEGIN
  set nocount on
  declare 
    @TableName varchar (200) = 'IseGirisMuayeneAltGruplari',
    @KeyFields varchar (200) = 'kod,grupKod'

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLIntValueForString (kod, 0) + ',' + dbo.fn_SQLIntValueForString (grupKod, 0), 'D', 0,
    'DELETE FROM dbo.IseGirisMuayeneAltGruplari where kod' + dbo.fn_SQLIntValueForString (kod, 1) + ' and grupKod' + dbo.fn_SQLIntValueForString (grupKod, 1) 
  from deleted d
  where not exists (select 1 from inserted i where d.kod = i.kod and d.grupKod = i.grupKod)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLIntValueForString (kod, 0) + ',' + dbo.fn_SQLIntValueForString (grupKod, 0), 'I', 0,
    'IF NOT EXISTS (SELECT 1 from dbo.IseGirisMuayeneAltGruplari where kod' + dbo.fn_SQLIntValueForString (kod, 1) + ' and grupKod' + dbo.fn_SQLIntValueForString (grupKod, 1) +')'+char (13) + char (10) + 
    'insert into dbo.IseGirisMuayeneAltGruplari (kod, grupKod, tanimi)'+char (13) + char (10) + 
    'Select '+ dbo.fn_SQLIntValueForString (kod, 0) +', ' + 
    dbo.fn_SQLIntValueForString (grupKod, 0) +', ' + 
    dbo.fn_SQLStrValueForString (tanimi, 0)
  from inserted i
  where not exists (select 1 from deleted d where d.kod = i.kod and d.grupKod = i.grupKod)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select @TableName, @KeyFields, dbo.fn_SQLIntValueForString (i.kod, 0) + ',' + dbo.fn_SQLIntValueForString (i.grupKod, 0), 'U', 0,
    'Update IseGirisMuayeneAltGruplari'+char (13) + char (10) +'  SET '+char (13) + char (10) + '    ' +
    REVERSE (SUBSTRING (REvERSE (case when dbo.fn_SQLStrValueForString (d.tanimi, 0) <> dbo.fn_SQLStrValueForString (i.tanimi, 0) then 'tanimi = ' + dbo.fn_SQLStrValueForString (i.tanimi, 0) + ',' else '' end), 2, 8000)) +
    char (13) + char (10) + 'WHERE kod' + dbo.fn_SQLIntValueForString (i.kod, 1) + ' and grupKod' + dbo.fn_SQLIntValueForString (i.grupKod, 1) 
  from inserted i
  inner join deleted d on d.kod = i.kod and d.grupKod = i.grupKod
  inner join 
    (SELECT kod,grupKod
     FROM
     (select kod, grupKod, tanimi
      from
      (select -1 x, kod, grupKod, tanimi
       from deleted
       union all
       select 1 x, kod, grupKod, tanimi
       from inserted) U
      group by kod, grupKod, tanimi
      having sum (x) <> 0)w
     group by kod,grupKod) u on u.kod = i.kod and u.grupKod = i.grupKod
  set nocount off
END
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'IseGirisMuayeneAltGruplari_TakipTrg'
GO
COMMIT
GO
