BEGIN TRAN
GO
ALTER -- create -- drop
 TRIGGER [dbo].[egitim_Tnm_TakipTrg]
   ON  [dbo].[egitim_Tnm]
   AFTER DELETE,INSERT, UPDATE
AS 
BEGIN
  set nocount on
  declare 
    @TableName varchar (200) = 'egitim_Tnm',
    @KeyFields varchar (200) = 'Kod'

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLIntValueForString (Kod, 0), 'D', 0,
    'DELETE FROM dbo.egitim_Tnm where Kod' + dbo.fn_SQLIntValueForString (Kod, 1) 
  from deleted d
  where not exists (select 1 from inserted i where d.Kod = i.Kod)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLIntValueForString (Kod, 0), 'I', 1,
    'IF NOT EXISTS (SELECT 1 from dbo.egitim_Tnm where Kod' + dbo.fn_SQLIntValueForString (Kod, 1) +')'+char (13) + char (10) + 
    'insert into dbo.egitim_Tnm (tanimi, Kod, grup, EntagrasyonKodu)'+char (13) + char (10) + 
    'Select '+ dbo.fn_SQLStrValueForString (tanimi, 0) +', ' + 
    dbo.fn_SQLIntValueForString (Kod, 0) +', ' + 
    dbo.fn_SQLIntValueForString (grup, 0) +', ' + 
    dbo.fn_SQLStrValueForString (EntagrasyonKodu, 0)
  from inserted i
  where not exists (select 1 from deleted d where d.Kod = i.Kod)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select @TableName, @KeyFields, dbo.fn_SQLIntValueForString (i.Kod, 0), 'U', 0,
    'Update egitim_Tnm'+char (13) + char (10) +'  SET '+char (13) + char (10) + '    ' +
    REVERSE (SUBSTRING (REvERSE (case when dbo.fn_SQLStrValueForString (d.tanimi, 0) <> dbo.fn_SQLStrValueForString (i.tanimi, 0) then 'tanimi = ' + dbo.fn_SQLStrValueForString (i.tanimi, 0) + ',' else '' end +
    case when dbo.fn_SQLIntValueForString (d.grup, 0) <> dbo.fn_SQLIntValueForString (i.grup, 0) then 'grup = ' + dbo.fn_SQLIntValueForString (i.grup, 0) + ',' else '' end +
    case when dbo.fn_SQLStrValueForString (d.EntagrasyonKodu, 0) <> dbo.fn_SQLStrValueForString (i.EntagrasyonKodu, 0) then 'EntagrasyonKodu = ' + dbo.fn_SQLStrValueForString (i.EntagrasyonKodu, 0) + ',' else '' end), 2, 8000)) +
    char (13) + char (10) + 'WHERE Kod' + dbo.fn_SQLIntValueForString (i.Kod, 1) 
  from inserted i
  inner join deleted d on d.Kod = i.Kod
  inner join 
    (SELECT Kod
     FROM
     (select tanimi, Kod, grup, EntagrasyonKodu
      from
      (select -1 x, tanimi, Kod, grup, EntagrasyonKodu
       from deleted
       union all
       select 1 x, tanimi, Kod, grup, EntagrasyonKodu
       from inserted) U
      group by tanimi, Kod, grup, EntagrasyonKodu
      having sum (x) <> 0)w
     group by Kod) u on u.Kod = i.Kod
  set nocount off
END
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'egitim_Tnm_TakipTrg'
GO
COMMIT
GO
