BEGIN TRAN
GO
ALTER -- create -- drop
 TRIGGER [dbo].[egitimGrup_Tnm_TakipTrg]
   ON  [dbo].[egitimGrup_Tnm]
   AFTER DELETE,INSERT, UPDATE
AS 
BEGIN
  set nocount on
  declare 
    @TableName varchar (200) = 'egitimGrup_Tnm',
    @KeyFields varchar (200) = 'kod'

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLIntValueForString (kod, 0), 'D', 0,
    'DELETE FROM dbo.egitimGrup_Tnm where kod' + dbo.fn_SQLIntValueForString (kod, 1) 
  from deleted d
  where not exists (select 1 from inserted i where d.kod = i.kod)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLIntValueForString (kod, 0), 'I', 1,
    'IF NOT EXISTS (SELECT 1 from dbo.egitimGrup_Tnm where kod' + dbo.fn_SQLIntValueForString (kod, 1) +')'+char (13) + char (10) + 
    'insert into dbo.egitimGrup_Tnm (kod, tanimi, EntagrasyonKodu)'+char (13) + char (10) + 
    'Select '+ dbo.fn_SQLIntValueForString (kod, 0) +', ' + 
    dbo.fn_SQLStrValueForString (tanimi, 0) +', ' + 
    dbo.fn_SQLIntValueForString (EntagrasyonKodu, 0)
  from inserted i
  where not exists (select 1 from deleted d where d.kod = i.kod)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select @TableName, @KeyFields, dbo.fn_SQLIntValueForString (i.kod, 0), 'U', 0,
    'Update egitimGrup_Tnm'+char (13) + char (10) +'  SET '+char (13) + char (10) + '    ' +
    REVERSE (SUBSTRING (REvERSE (case when dbo.fn_SQLStrValueForString (d.tanimi, 0) <> dbo.fn_SQLStrValueForString (i.tanimi, 0) then 'tanimi = ' + dbo.fn_SQLStrValueForString (i.tanimi, 0) + ',' else '' end +
    case when dbo.fn_SQLIntValueForString (d.EntagrasyonKodu, 0) <> dbo.fn_SQLIntValueForString (i.EntagrasyonKodu, 0) then 'EntagrasyonKodu = ' + dbo.fn_SQLIntValueForString (i.EntagrasyonKodu, 0) + ',' else '' end), 2, 8000)) +
    char (13) + char (10) + 'WHERE kod' + dbo.fn_SQLIntValueForString (i.kod, 1) 
  from inserted i
  inner join deleted d on d.kod = i.kod
  inner join 
    (SELECT kod
     FROM
     (select kod, tanimi, EntagrasyonKodu
      from
      (select -1 x, kod, tanimi, EntagrasyonKodu
       from deleted
       union all
       select 1 x, kod, tanimi, EntagrasyonKodu
       from inserted) U
      group by kod, tanimi, EntagrasyonKodu
      having sum (x) <> 0)w
     group by kod) u on u.kod = i.kod
  set nocount off
END
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'egitimGrup_Tnm_TakipTrg'
GO
COMMIT
GO
