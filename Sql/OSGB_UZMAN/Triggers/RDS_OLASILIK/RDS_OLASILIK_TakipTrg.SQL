BEGIN TRAN
GO
ALTER -- create -- drop
 TRIGGER [dbo].[RDS_OLASILIK_TakipTrg]
   ON  [dbo].[RDS_OLASILIK]
   AFTER DELETE,INSERT, UPDATE
AS 
BEGIN
  set nocount on
  declare 
    @TableName varchar (200) = 'RDS_OLASILIK',
    @KeyFields varchar (200) = 'kod'

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLIntValueForString (kod, 0), 'D', 0,
    'DELETE FROM dbo.RDS_OLASILIK where kod' + dbo.fn_SQLIntValueForString (kod, 1) 
  from deleted d
  where not exists (select 1 from inserted i where d.kod = i.kod)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLIntValueForString (kod, 0), 'I', 1,
    'IF NOT EXISTS (SELECT 1 from dbo.RDS_OLASILIK where kod' + dbo.fn_SQLIntValueForString (kod, 1) +')'+char (13) + char (10) + 
    'insert into dbo.RDS_OLASILIK (kod, tanimi, Metod, degeri)'+char (13) + char (10) + 
    'Select '+ dbo.fn_SQLIntValueForString (kod, 0) +', ' + 
    dbo.fn_SQLStrValueForString (tanimi, 0) +', ' + 
    dbo.fn_SQLIntValueForString (Metod, 0) +', ' + 
    dbo.fn_SQLDecValueForString (degeri, 0)
  from inserted i
  where not exists (select 1 from deleted d where d.kod = i.kod)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select @TableName, @KeyFields, dbo.fn_SQLIntValueForString (i.kod, 0), 'U', 0,
    'Update RDS_OLASILIK'+char (13) + char (10) +'  SET '+char (13) + char (10) + '    ' +
    REVERSE (SUBSTRING (REvERSE (case when dbo.fn_SQLStrValueForString (d.tanimi, 0) <> dbo.fn_SQLStrValueForString (i.tanimi, 0) then 'tanimi = ' + dbo.fn_SQLStrValueForString (i.tanimi, 0) + ',' else '' end +
    case when dbo.fn_SQLIntValueForString (d.Metod, 0) <> dbo.fn_SQLIntValueForString (i.Metod, 0) then 'Metod = ' + dbo.fn_SQLIntValueForString (i.Metod, 0) + ',' else '' end +
    case when dbo.fn_SQLDecValueForString (d.degeri, 0) <> dbo.fn_SQLDecValueForString (i.degeri, 0) then 'degeri = ' + dbo.fn_SQLDecValueForString (i.degeri, 0) + ',' else '' end), 2, 8000)) +
    char (13) + char (10) + 'WHERE kod' + dbo.fn_SQLIntValueForString (i.kod, 1) 
  from inserted i
  inner join deleted d on d.kod = i.kod
  inner join 
    (SELECT kod
     FROM
     (select kod, tanimi, Metod, degeri
      from
      (select -1 x, kod, tanimi, Metod, degeri
       from deleted
       union all
       select 1 x, kod, tanimi, Metod, degeri
       from inserted) U
      group by kod, tanimi, Metod, degeri
      having sum (x) <> 0)w
     group by kod) u on u.kod = i.kod
  set nocount off
END
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'RDS_OLASILIK_TakipTrg'
GO
COMMIT
GO
