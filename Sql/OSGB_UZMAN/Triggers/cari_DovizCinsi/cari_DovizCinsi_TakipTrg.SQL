BEGIN TRAN
GO
ALTER -- create -- drop
 TRIGGER [dbo].[cari_DovizCinsi_TakipTrg]
   ON  [dbo].[cari_DovizCinsi]
   AFTER DELETE,INSERT, UPDATE
AS 
BEGIN
  set nocount on
  declare 
    @TableName varchar (200) = 'cari_DovizCinsi',
    @KeyFields varchar (200) = 'kod'

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLIntValueForString (kod, 0), 'D', 0,
    'DELETE FROM dbo.cari_DovizCinsi where kod' + dbo.fn_SQLIntValueForString (kod, 1) 
  from deleted d
  where not exists (select 1 from inserted i where d.kod = i.kod)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLIntValueForString (kod, 0), 'I', 1,
    'IF NOT EXISTS (SELECT 1 from dbo.cari_DovizCinsi where kod' + dbo.fn_SQLIntValueForString (kod, 1) +')'+char (13) + char (10) + 
    'insert into dbo.cari_DovizCinsi (kod, tanimi, GIBKodu, Sembol, UluslarArasiKodu, AltBirimKodu, AltBirimTanimi)'+char (13) + char (10) + 
    'Select '+ dbo.fn_SQLIntValueForString (kod, 0) +', ' + 
    dbo.fn_SQLStrValueForString (tanimi, 0) +', ' + 
    dbo.fn_SQLStrValueForString (GIBKodu, 0) +', ' + 
    dbo.fn_SQLStrValueForString (Sembol, 0) +', ' + 
    dbo.fn_SQLStrValueForString (UluslarArasiKodu, 0) +', ' + 
    dbo.fn_SQLStrValueForString (AltBirimKodu, 0) +', ' + 
    dbo.fn_SQLStrValueForString (AltBirimTanimi, 0)
  from inserted i
  where not exists (select 1 from deleted d where d.kod = i.kod)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select @TableName, @KeyFields, dbo.fn_SQLIntValueForString (i.kod, 0), 'U', 0,
    'Update cari_DovizCinsi'+char (13) + char (10) +'  SET '+char (13) + char (10) + '    ' +
    REVERSE (SUBSTRING (REvERSE (case when dbo.fn_SQLStrValueForString (d.tanimi, 0) <> dbo.fn_SQLStrValueForString (i.tanimi, 0) then 'tanimi = ' + dbo.fn_SQLStrValueForString (i.tanimi, 0) + ',' else '' end +
    case when dbo.fn_SQLStrValueForString (d.GIBKodu, 0) <> dbo.fn_SQLStrValueForString (i.GIBKodu, 0) then 'GIBKodu = ' + dbo.fn_SQLStrValueForString (i.GIBKodu, 0) + ',' else '' end +
    case when dbo.fn_SQLStrValueForString (d.Sembol, 0) <> dbo.fn_SQLStrValueForString (i.Sembol, 0) then 'Sembol = ' + dbo.fn_SQLStrValueForString (i.Sembol, 0) + ',' else '' end +
    case when dbo.fn_SQLStrValueForString (d.UluslarArasiKodu, 0) <> dbo.fn_SQLStrValueForString (i.UluslarArasiKodu, 0) then 'UluslarArasiKodu = ' + dbo.fn_SQLStrValueForString (i.UluslarArasiKodu, 0) + ',' else '' end +
    case when dbo.fn_SQLStrValueForString (d.AltBirimKodu, 0) <> dbo.fn_SQLStrValueForString (i.AltBirimKodu, 0) then 'AltBirimKodu = ' + dbo.fn_SQLStrValueForString (i.AltBirimKodu, 0) + ',' else '' end +
    case when dbo.fn_SQLStrValueForString (d.AltBirimTanimi, 0) <> dbo.fn_SQLStrValueForString (i.AltBirimTanimi, 0) then 'AltBirimTanimi = ' + dbo.fn_SQLStrValueForString (i.AltBirimTanimi, 0) + ',' else '' end), 2, 8000)) +
    char (13) + char (10) + 'WHERE kod' + dbo.fn_SQLIntValueForString (i.kod, 1) 
  from inserted i
  inner join deleted d on d.kod = i.kod
  inner join 
    (SELECT kod
     FROM
     (select kod, tanimi, GIBKodu, Sembol, UluslarArasiKodu, AltBirimKodu, AltBirimTanimi
      from
      (select -1 x, kod, tanimi, GIBKodu, Sembol, UluslarArasiKodu, AltBirimKodu, AltBirimTanimi
       from deleted
       union all
       select 1 x, kod, tanimi, GIBKodu, Sembol, UluslarArasiKodu, AltBirimKodu, AltBirimTanimi
       from inserted) U
      group by kod, tanimi, GIBKodu, Sembol, UluslarArasiKodu, AltBirimKodu, AltBirimTanimi
      having sum (x) <> 0)w
     group by kod) u on u.kod = i.kod
  set nocount off
END
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'cari_DovizCinsi_TakipTrg'
GO
ROLLBACK -- COMMIT
GO
