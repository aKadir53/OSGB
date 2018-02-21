BEGIN TRAN
GO
ALTER -- create -- drop
 TRIGGER [dbo].[ilacListesi_TakipTrg]
   ON  [dbo].[ilacListesi]
   AFTER DELETE,INSERT, UPDATE
AS 
BEGIN
  set nocount on
  declare 
    @TableName varchar (200) = 'ilacListesi',
    @KeyFields varchar (200) = 'barkod,ReceteTip'

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLStrValueForString (barkod, 0) + ',' + dbo.fn_SQLStrValueForString (ReceteTip, 0), 'D', 
    'DELETE FROM dbo.ilacListesi where barkod' + dbo.fn_SQLStrValueForString (barkod, 1) + ' and ReceteTip' + dbo.fn_SQLStrValueForString (ReceteTip, 1) 
  from deleted d
  where not exists (select 1 from inserted i where d.barkod = i.barkod and d.ReceteTip = i.ReceteTip)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLStrValueForString (barkod, 0) + ',' + dbo.fn_SQLStrValueForString (ReceteTip, 0), 'I',
    'IF NOT EXISTS (SELECT 1 from dbo.ilacListesi where barkod' + dbo.fn_SQLStrValueForString (barkod, 1) + ' and ReceteTip' + dbo.fn_SQLStrValueForString (ReceteTip, 1) +')'+char (13) + char (10) + 
    'insert into dbo.ilacListesi (barkod, ilacAdi, sgkilacKodu, ambalajMiktar, tekDozMiktar, aktif, Sikkullan, ReceteTip, ICD, doz, adet, kulYol, Aciklama)'+char (13) + char (10) + 
    'Select '+ dbo.fn_SQLStrValueForString (barkod, 0) +', ' + 
    dbo.fn_SQLStrValueForString (ilacAdi, 0) +', ' + 
    dbo.fn_SQLIntValueForString (sgkilacKodu, 0) +', ' + 
    dbo.fn_SQLDecValueForString (ambalajMiktar, 0) +', ' + 
    dbo.fn_SQLDecValueForString (tekDozMiktar, 0) +', ' + 
    dbo.fn_SQLIntValueForString (aktif, 0) +', ' + 
    dbo.fn_SQLIntValueForString (Sikkullan, 0) +', ' + 
    dbo.fn_SQLStrValueForString (ReceteTip, 0) +', ' + 
    dbo.fn_SQLStrValueForString (ICD, 0) +', ' + 
    dbo.fn_SQLStrValueForString (doz, 0) +', ' + 
    dbo.fn_SQLIntValueForString (adet, 0) +', ' + 
    dbo.fn_SQLIntValueForString (kulYol, 0) +', ' + 
    dbo.fn_SQLStrValueForString (Aciklama, 0)
  from inserted i
  where not exists (select 1 from deleted d where d.barkod = i.barkod and d.ReceteTip = i.ReceteTip)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, Script)
  select @TableName, @KeyFields, dbo.fn_SQLStrValueForString (i.barkod, 0) + ',' + dbo.fn_SQLStrValueForString (i.ReceteTip, 0), 'U',
    'Update ilacListesi'+char (13) + char (10) +'  SET '+char (13) + char (10) + '    ' +
    REVERSE (SUBSTRING (REvERSE (case when dbo.fn_SQLStrValueForString (d.ilacAdi, 0) <> dbo.fn_SQLStrValueForString (i.ilacAdi, 0) then 'ilacAdi = ' + dbo.fn_SQLStrValueForString (i.ilacAdi, 0) + ',' else '' end +
    case when dbo.fn_SQLIntValueForString (d.sgkilacKodu, 0) <> dbo.fn_SQLIntValueForString (i.sgkilacKodu, 0) then 'sgkilacKodu = ' + dbo.fn_SQLIntValueForString (i.sgkilacKodu, 0) + ',' else '' end +
    case when dbo.fn_SQLDecValueForString (d.ambalajMiktar, 0) <> dbo.fn_SQLDecValueForString (i.ambalajMiktar, 0) then 'ambalajMiktar = ' + dbo.fn_SQLDecValueForString (i.ambalajMiktar, 0) + ',' else '' end +
    case when dbo.fn_SQLDecValueForString (d.tekDozMiktar, 0) <> dbo.fn_SQLDecValueForString (i.tekDozMiktar, 0) then 'tekDozMiktar = ' + dbo.fn_SQLDecValueForString (i.tekDozMiktar, 0) + ',' else '' end +
    case when dbo.fn_SQLIntValueForString (d.aktif, 0) <> dbo.fn_SQLIntValueForString (i.aktif, 0) then 'aktif = ' + dbo.fn_SQLIntValueForString (i.aktif, 0) + ',' else '' end +
    case when dbo.fn_SQLIntValueForString (d.Sikkullan, 0) <> dbo.fn_SQLIntValueForString (i.Sikkullan, 0) then 'Sikkullan = ' + dbo.fn_SQLIntValueForString (i.Sikkullan, 0) + ',' else '' end +
    case when dbo.fn_SQLStrValueForString (d.ICD, 0) <> dbo.fn_SQLStrValueForString (i.ICD, 0) then 'ICD = ' + dbo.fn_SQLStrValueForString (i.ICD, 0) + ',' else '' end +
    case when dbo.fn_SQLStrValueForString (d.doz, 0) <> dbo.fn_SQLStrValueForString (i.doz, 0) then 'doz = ' + dbo.fn_SQLStrValueForString (i.doz, 0) + ',' else '' end +
    case when dbo.fn_SQLIntValueForString (d.adet, 0) <> dbo.fn_SQLIntValueForString (i.adet, 0) then 'adet = ' + dbo.fn_SQLIntValueForString (i.adet, 0) + ',' else '' end +
    case when dbo.fn_SQLIntValueForString (d.kulYol, 0) <> dbo.fn_SQLIntValueForString (i.kulYol, 0) then 'kulYol = ' + dbo.fn_SQLIntValueForString (i.kulYol, 0) + ',' else '' end +
    case when dbo.fn_SQLStrValueForString (d.Aciklama, 0) <> dbo.fn_SQLStrValueForString (i.Aciklama, 0) then 'Aciklama = ' + dbo.fn_SQLStrValueForString (i.Aciklama, 0) + ',' else '' end), 2, 8000)) +
    char (13) + char (10) + 'WHERE barkod' + dbo.fn_SQLStrValueForString (i.barkod, 1) + ' and ReceteTip' + dbo.fn_SQLStrValueForString (i.ReceteTip, 1) 
  from inserted i
  inner join deleted d on d.barkod = i.barkod and d.ReceteTip = i.ReceteTip
  inner join 
    (SELECT barkod,ReceteTip
     FROM
     (select barkod, ilacAdi, sgkilacKodu, ambalajMiktar, tekDozMiktar, aktif, Sikkullan, ReceteTip, ICD, doz, adet, kulYol, Aciklama
      from
      (select -1 x, barkod, ilacAdi, sgkilacKodu, ambalajMiktar, tekDozMiktar, aktif, Sikkullan, ReceteTip, IsNull (ICD, '') ICD, doz, adet, kulYol, Aciklama
       from deleted
       union all
       select 1 x, barkod, ilacAdi, sgkilacKodu, ambalajMiktar, tekDozMiktar, aktif, Sikkullan, ReceteTip, IsNull (ICD, '') ICD, doz, adet, kulYol, Aciklama
       from inserted) U
      group by barkod, ilacAdi, sgkilacKodu, ambalajMiktar, tekDozMiktar, aktif, Sikkullan, ReceteTip, ICD, doz, adet, kulYol, Aciklama
      having sum (x) <> 0)w
     group by barkod,ReceteTip) u on u.barkod = i.barkod and u.ReceteTip = i.ReceteTip
  set nocount off
END
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'ilacListesi_TakipTrg'
GO
COMMIT
GO
