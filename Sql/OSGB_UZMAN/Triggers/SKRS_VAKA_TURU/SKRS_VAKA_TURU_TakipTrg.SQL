BEGIN TRAN
GO
ALTER -- create -- drop
 TRIGGER [dbo].[SKRS_VAKA_TURU_TakipTrg]
   ON  [dbo].[SKRS_VAKA_TURU]
   AFTER DELETE,INSERT, UPDATE
AS 
BEGIN
  set nocount on
  declare 
    @TableName varchar (200) = 'SKRS_VAKA_TURU',
    @KeyFields varchar (200) = 'KODU'

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLStrValueForString (KODU, 0), 'D', 0,
    'DELETE FROM dbo.SKRS_VAKA_TURU where KODU' + dbo.fn_SQLStrValueForString (KODU, 1) 
  from deleted d
  where not exists (select 1 from inserted i where d.KODU = i.KODU)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLStrValueForString (KODU, 0), 'I', 0,
    'IF NOT EXISTS (SELECT 1 from dbo.SKRS_VAKA_TURU where KODU' + dbo.fn_SQLStrValueForString (KODU, 1) +')'+char (13) + char (10) + 
    'insert into dbo.SKRS_VAKA_TURU (id, KODTIPIADI, AKTIF, ADI, KODU, OLUSTURULMATARIHI, GUNCELLENMETARIHI, MedulaKodu)'+char (13) + char (10) + 
    'Select '+ dbo.fn_SQLIntValueForString (id, 0) +', ' + 
    dbo.fn_SQLStrValueForString (KODTIPIADI, 0) +', ' + 
    dbo.fn_SQLStrValueForString (AKTIF, 0) +', ' + 
    dbo.fn_SQLStrValueForString (ADI, 0) +', ' + 
    dbo.fn_SQLStrValueForString (KODU, 0) +', ' + 
    dbo.fn_SQLStrValueForString (OLUSTURULMATARIHI, 0) +', ' + 
    dbo.fn_SQLStrValueForString (GUNCELLENMETARIHI, 0) +', ' + 
    dbo.fn_SQLStrValueForString (MedulaKodu, 0)
  from inserted i
  where not exists (select 1 from deleted d where d.KODU = i.KODU)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select @TableName, @KeyFields, dbo.fn_SQLStrValueForString (i.KODU, 0), 'U', 0,
    'Update SKRS_VAKA_TURU'+char (13) + char (10) +'  SET '+char (13) + char (10) + '    ' +
    REVERSE (SUBSTRING (REvERSE (case when dbo.fn_SQLIntValueForString (d.id, 0) <> dbo.fn_SQLIntValueForString (i.id, 0) then 'id = ' + dbo.fn_SQLIntValueForString (i.id, 0) + ',' else '' end +
    case when dbo.fn_SQLStrValueForString (d.KODTIPIADI, 0) <> dbo.fn_SQLStrValueForString (i.KODTIPIADI, 0) then 'KODTIPIADI = ' + dbo.fn_SQLStrValueForString (i.KODTIPIADI, 0) + ',' else '' end +
    case when dbo.fn_SQLStrValueForString (d.AKTIF, 0) <> dbo.fn_SQLStrValueForString (i.AKTIF, 0) then 'AKTIF = ' + dbo.fn_SQLStrValueForString (i.AKTIF, 0) + ',' else '' end +
    case when dbo.fn_SQLStrValueForString (d.ADI, 0) <> dbo.fn_SQLStrValueForString (i.ADI, 0) then 'ADI = ' + dbo.fn_SQLStrValueForString (i.ADI, 0) + ',' else '' end +
    case when dbo.fn_SQLStrValueForString (d.OLUSTURULMATARIHI, 0) <> dbo.fn_SQLStrValueForString (i.OLUSTURULMATARIHI, 0) then 'OLUSTURULMATARIHI = ' + dbo.fn_SQLStrValueForString (i.OLUSTURULMATARIHI, 0) + ',' else '' end +
    case when dbo.fn_SQLStrValueForString (d.GUNCELLENMETARIHI, 0) <> dbo.fn_SQLStrValueForString (i.GUNCELLENMETARIHI, 0) then 'GUNCELLENMETARIHI = ' + dbo.fn_SQLStrValueForString (i.GUNCELLENMETARIHI, 0) + ',' else '' end +
    case when dbo.fn_SQLStrValueForString (d.MedulaKodu, 0) <> dbo.fn_SQLStrValueForString (i.MedulaKodu, 0) then 'MedulaKodu = ' + dbo.fn_SQLStrValueForString (i.MedulaKodu, 0) + ',' else '' end), 2, 8000)) +
    char (13) + char (10) + 'WHERE KODU' + dbo.fn_SQLStrValueForString (i.KODU, 1) 
  from inserted i
  inner join deleted d on d.KODU = i.KODU
  inner join 
    (SELECT KODU
     FROM
     (select id, KODTIPIADI, AKTIF, ADI, KODU, OLUSTURULMATARIHI, GUNCELLENMETARIHI, MedulaKodu
      from
      (select -1 x, id, KODTIPIADI, AKTIF, ADI, KODU, OLUSTURULMATARIHI, GUNCELLENMETARIHI, MedulaKodu
       from deleted
       union all
       select 1 x, id, KODTIPIADI, AKTIF, ADI, KODU, OLUSTURULMATARIHI, GUNCELLENMETARIHI, MedulaKodu
       from inserted) U
      group by id, KODTIPIADI, AKTIF, ADI, KODU, OLUSTURULMATARIHI, GUNCELLENMETARIHI, MedulaKodu
      having sum (x) <> 0)w
     group by KODU) u on u.KODU = i.KODU
  set nocount off
END
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'SKRS_VAKA_TURU_TakipTrg'
GO
COMMIT
GO
