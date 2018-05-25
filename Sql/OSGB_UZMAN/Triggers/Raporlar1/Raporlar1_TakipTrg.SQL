BEGIN TRAN
GO
ALTER -- create -- drop
 TRIGGER [dbo].[Raporlar1_TakipTrg]
   ON  [dbo].[Raporlar1]
   AFTER DELETE,INSERT, UPDATE
AS 
BEGIN
  set nocount on
  declare 
    @TableName varchar (200) = 'Raporlar1',
    @KeyFields varchar (200) = 'raporKodu'

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLStrValueForString (raporKodu, 0), 'D', 0,
    'DELETE FROM dbo.Raporlar1 where raporKodu' + dbo.fn_SQLStrValueForString (raporKodu, 1) 
  from deleted d
  where not exists (select 1 from inserted i where d.raporKodu = i.raporKodu)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLStrValueForString (i.raporKodu, 0), 'I', 0,
    'IF NOT EXISTS (SELECT 1 from dbo.Raporlar1 where raporKodu' + dbo.fn_SQLStrValueForString (i.raporKodu, 1) +')'+char (13) + char (10) + 
    'insert into dbo.Raporlar1 (raporKodu, raporAdi, sp, rapor, EklenmeTarihi, Aciklama)'+char (13) + char (10) + 
    'Select '+ dbo.fn_SQLStrValueForString (i.raporKodu, 0) +', ' + 
    dbo.fn_SQLStrValueForString (i.raporAdi, 0) +', ' + 
    dbo.fn_SQLStrValueForString (i.sp, 0) +', ' + 
    dbo.fn_SQLStrValueForString (rr.rapor, 0) +', ' + 
    dbo.fn_SQLDateValueForString (i.EklenmeTarihi, 0, 1) +', ' + 
    dbo.fn_SQLStrValueForString (i.Aciklama, 0)
  from inserted i
  inner join  dbo.Raporlar1 rr on rr.RaporKodu = i.RaporKodu
  where not exists (select 1 from deleted d where d.raporKodu = i.raporKodu)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select @TableName, @KeyFields, dbo.fn_SQLStrValueForString (i.raporKodu, 0), 'U', 0,
    'Update Raporlar1'+char (13) + char (10) +'  SET '+char (13) + char (10) + '    ' +
    REVERSE (SUBSTRING (REvERSE (case when dbo.fn_SQLStrValueForString (d.raporAdi, 0) <> dbo.fn_SQLStrValueForString (i.raporAdi, 0) then 'raporAdi = ' + dbo.fn_SQLStrValueForString (i.raporAdi, 0) + ',' else '' end +
    case when dbo.fn_SQLStrValueForString (d.sp, 0) <> dbo.fn_SQLStrValueForString (i.sp, 0) then 'sp = ' + dbo.fn_SQLStrValueForString (i.sp, 0) + ',' else '' end +
    case when UPDATE (Rapor) then 'rapor = ' + dbo.fn_SQLStrValueForString (rr.rapor, 0) + ',' else '' end +
    case when dbo.fn_SQLDateValueForString (d.EklenmeTarihi, 0, 1) <> dbo.fn_SQLDateValueForString (i.EklenmeTarihi, 0, 1) then 'EklenmeTarihi = ' + dbo.fn_SQLDateValueForString (i.EklenmeTarihi, 0, 1) + ',' else '' end +
    case when dbo.fn_SQLStrValueForString (d.Aciklama, 0) <> dbo.fn_SQLStrValueForString (i.Aciklama, 0) then 'Aciklama = ' + dbo.fn_SQLStrValueForString (i.Aciklama, 0) + ',' else '' end), 2, 8000)) +
    char (13) + char (10) + 'WHERE raporKodu' + dbo.fn_SQLStrValueForString (i.raporKodu, 1) 
  from inserted i
  inner join deleted d on d.raporKodu = i.raporKodu
  inner join 
    (SELECT raporKodu
     FROM
     (select raporKodu, raporAdi, sp, rapor, EklenmeTarihi, Aciklama
      from
      (select -1 x, raporKodu, raporAdi, sp, case when update (rapor) then 'Eski' else '' end rapor, EklenmeTarihi, Aciklama
       from deleted
       union all
       select 1 x, raporKodu, raporAdi, sp, case when update (rapor) then 'Yeni' else '' end rapor, EklenmeTarihi, Aciklama
       from inserted) U
      group by raporKodu, raporAdi, sp, rapor, EklenmeTarihi, Aciklama
      having sum (x) <> 0)w
     group by raporKodu) u on u.raporKodu = i.raporKodu
  inner join dbo.Raporlar1 rr on rr.RaporKodu = i.RaporKodu
  set nocount off
END
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'Raporlar1_TakipTrg'
GO
COMMIT
GO
