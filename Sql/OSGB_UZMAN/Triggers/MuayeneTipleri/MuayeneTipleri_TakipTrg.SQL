BEGIN TRAN
GO
ALTER -- create -- drop
 TRIGGER [dbo].[MuayeneTipleri_TakipTrg]
   ON  [dbo].[MuayeneTipleri]
   AFTER DELETE,INSERT, UPDATE
AS 
BEGIN
  set nocount on
  declare 
    @TableName varchar (200) = 'MuayeneTipleri',
    @KeyFields varchar (200) = 'Kod'

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLIntValueForString (Kod, 0), 'D', 0,
    'DELETE FROM dbo.MuayeneTipleri where Kod' + dbo.fn_SQLIntValueForString (Kod, 1) 
  from deleted d
  where not exists (select 1 from inserted i where d.Kod = i.Kod)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLIntValueForString (Kod, 0), 'I', 1,
    'IF NOT EXISTS (SELECT 1 from dbo.MuayeneTipleri where Kod' + dbo.fn_SQLIntValueForString (Kod, 1) +')'+char (13) + char (10) + 
    'insert into dbo.MuayeneTipleri (Kod, Tanimi, AnemnezEkranTipi)'+char (13) + char (10) + 
    'Select '+ dbo.fn_SQLIntValueForString (Kod, 0) +', ' + 
    dbo.fn_SQLStrValueForString (Tanimi, 0) +', ' + 
    dbo.fn_SQLIntValueForString (AnemnezEkranTipi, 0)
  from inserted i
  where not exists (select 1 from deleted d where d.Kod = i.Kod)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select @TableName, @KeyFields, dbo.fn_SQLIntValueForString (i.Kod, 0), 'U', 0,
    'Update MuayeneTipleri'+char (13) + char (10) +'  SET '+char (13) + char (10) + '    ' +
    REVERSE (SUBSTRING (REvERSE (case when dbo.fn_SQLStrValueForString (d.Tanimi, 0) <> dbo.fn_SQLStrValueForString (i.Tanimi, 0) then 'Tanimi = ' + dbo.fn_SQLStrValueForString (i.Tanimi, 0) + ',' else '' end +
    case when dbo.fn_SQLIntValueForString (d.AnemnezEkranTipi, 0) <> dbo.fn_SQLIntValueForString (i.AnemnezEkranTipi, 0) then 'AnemnezEkranTipi = ' + dbo.fn_SQLIntValueForString (i.AnemnezEkranTipi, 0) + ',' else '' end), 2, 8000)) +
    char (13) + char (10) + 'WHERE Kod' + dbo.fn_SQLIntValueForString (i.Kod, 1) 
  from inserted i
  inner join deleted d on d.Kod = i.Kod
  inner join 
    (SELECT Kod
     FROM
     (select Kod, Tanimi, AnemnezEkranTipi
      from
      (select -1 x, Kod, Tanimi, AnemnezEkranTipi
       from deleted
       union all
       select 1 x, Kod, Tanimi, AnemnezEkranTipi
       from inserted) U
      group by Kod, Tanimi, AnemnezEkranTipi
      having sum (x) <> 0)w
     group by Kod) u on u.Kod = i.Kod
  set nocount off
END
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'MuayeneTipleri_TakipTrg'
GO
COMMIT
GO
