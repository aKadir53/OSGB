BEGIN TRAN
GO
ALTER -- create -- drop
 TRIGGER [dbo].[SKRS_KAN_GRUBU_TakipTrg]
   ON  [dbo].[SKRS_KAN_GRUBU]
   AFTER DELETE,INSERT, UPDATE
AS 
BEGIN
  set nocount on
  declare 
    @TableName varchar (200) = 'SKRS_KAN_GRUBU',
    @KeyFields varchar (200) = 'KODU'

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLStrValueForString (KODU, 0), 'D', 0,
    'DELETE FROM dbo.SKRS_KAN_GRUBU where KODU' + dbo.fn_SQLStrValueForString (KODU, 1) 
  from deleted d
  where not exists (select 1 from inserted i where d.KODU = i.KODU)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLStrValueForString (KODU, 0), 'I', 0,
    'IF NOT EXISTS (SELECT 1 from dbo.SKRS_KAN_GRUBU where KODU' + dbo.fn_SQLStrValueForString (KODU, 1) +')'+char (13) + char (10) + 
    'insert into dbo.SKRS_KAN_GRUBU (id, KODTIPIADI, AKTIF, ADI, KODU, OLUSTURULMATARIHI, GUNCELLENMETARIHI, EntegrasyonKodu)'+char (13) + char (10) + 
    'Select '+ dbo.fn_SQLIntValueForString (id, 0) +', ' + 
    dbo.fn_SQLStrValueForString (KODTIPIADI, 0) +', ' + 
    dbo.fn_SQLIntValueForString (AKTIF, 0) +', ' + 
    dbo.fn_SQLStrValueForString (ADI, 0) +', ' + 
    dbo.fn_SQLStrValueForString (KODU, 0) +', ' + 
    dbo.fn_SQLDateValueForString (OLUSTURULMATARIHI, 0, 1) +', ' + 
    dbo.fn_SQLDateValueForString (GUNCELLENMETARIHI, 0, 1) +', ' + 
    dbo.fn_SQLStrValueForString (EntegrasyonKodu, 0)
  from inserted i
  where not exists (select 1 from deleted d where d.KODU = i.KODU)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select @TableName, @KeyFields, dbo.fn_SQLStrValueForString (i.KODU, 0), 'U', 0,
    'Update SKRS_KAN_GRUBU'+char (13) + char (10) +'  SET '+char (13) + char (10) + '    ' +
    REVERSE (SUBSTRING (REvERSE (case when dbo.fn_SQLIntValueForString (d.id, 0) <> dbo.fn_SQLIntValueForString (i.id, 0) then 'id = ' + dbo.fn_SQLIntValueForString (i.id, 0) + ',' else '' end +
    case when dbo.fn_SQLStrValueForString (d.KODTIPIADI, 0) <> dbo.fn_SQLStrValueForString (i.KODTIPIADI, 0) then 'KODTIPIADI = ' + dbo.fn_SQLStrValueForString (i.KODTIPIADI, 0) + ',' else '' end +
    case when dbo.fn_SQLIntValueForString (d.AKTIF, 0) <> dbo.fn_SQLIntValueForString (i.AKTIF, 0) then 'AKTIF = ' + dbo.fn_SQLIntValueForString (i.AKTIF, 0) + ',' else '' end +
    case when dbo.fn_SQLStrValueForString (d.ADI, 0) <> dbo.fn_SQLStrValueForString (i.ADI, 0) then 'ADI = ' + dbo.fn_SQLStrValueForString (i.ADI, 0) + ',' else '' end +
    case when dbo.fn_SQLDateValueForString (d.OLUSTURULMATARIHI, 0, 1) <> dbo.fn_SQLDateValueForString (i.OLUSTURULMATARIHI, 0, 1) then 'OLUSTURULMATARIHI = ' + dbo.fn_SQLDateValueForString (i.OLUSTURULMATARIHI, 0, 1) + ',' else '' end +
    case when dbo.fn_SQLDateValueForString (d.GUNCELLENMETARIHI, 0, 1) <> dbo.fn_SQLDateValueForString (i.GUNCELLENMETARIHI, 0, 1) then 'GUNCELLENMETARIHI = ' + dbo.fn_SQLDateValueForString (i.GUNCELLENMETARIHI, 0, 1) + ',' else '' end +
    case when dbo.fn_SQLStrValueForString (d.EntegrasyonKodu, 0) <> dbo.fn_SQLStrValueForString (i.EntegrasyonKodu, 0) then 'EntegrasyonKodu = ' + dbo.fn_SQLStrValueForString (i.EntegrasyonKodu, 0) + ',' else '' end), 2, 8000)) +
    char (13) + char (10) + 'WHERE KODU' + dbo.fn_SQLStrValueForString (i.KODU, 1) 
  from inserted i
  inner join deleted d on d.KODU = i.KODU
  inner join 
    (SELECT KODU
     FROM
     (select id, KODTIPIADI, AKTIF, ADI, KODU, OLUSTURULMATARIHI, GUNCELLENMETARIHI, EntegrasyonKodu
      from
      (select -1 x, id, KODTIPIADI, AKTIF, ADI, KODU, OLUSTURULMATARIHI, GUNCELLENMETARIHI, EntegrasyonKodu
       from deleted
       union all
       select 1 x, id, KODTIPIADI, AKTIF, ADI, KODU, OLUSTURULMATARIHI, GUNCELLENMETARIHI, EntegrasyonKodu
       from inserted) U
      group by id, KODTIPIADI, AKTIF, ADI, KODU, OLUSTURULMATARIHI, GUNCELLENMETARIHI, EntegrasyonKodu
      having sum (x) <> 0)w
     group by KODU) u on u.KODU = i.KODU
  set nocount off
END
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'SKRS_KAN_GRUBU_TakipTrg'
GO
COMMIT
GO
