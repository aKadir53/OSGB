BEGIN TRAN
GO
ALTER -- create -- drop
 TRIGGER [dbo].[RDS_SKOR_TakipTrg]
   ON  [dbo].[RDS_SKOR]
   AFTER DELETE,INSERT, UPDATE
AS 
BEGIN
  set nocount on
  declare 
    @TableName varchar (200) = 'RDS_SKOR',
    @KeyFields varchar (200) = 'Metod,Kod'

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLIntValueForString (Metod, 0) + ',' + dbo.fn_SQLIntValueForString (Kod, 0), 'D', 0,
    'DELETE FROM dbo.RDS_SKOR where Metod' + dbo.fn_SQLIntValueForString (Metod, 1) + ' and Kod' + dbo.fn_SQLIntValueForString (Kod, 1) 
  from deleted d
  where not exists (select 1 from inserted i where d.Metod = i.Metod and d.Kod = i.Kod)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLIntValueForString (Metod, 0) + ',' + dbo.fn_SQLIntValueForString (Kod, 0), 'I', 0,
    'IF NOT EXISTS (SELECT 1 from dbo.RDS_SKOR where Metod' + dbo.fn_SQLIntValueForString (Metod, 1) + ' and Kod' + dbo.fn_SQLIntValueForString (Kod, 1) +')'+char (13) + char (10) + 
    'insert into dbo.RDS_SKOR (tanimi, altDeger, ustDeger, Renk, Metod, Kod)'+char (13) + char (10) + 
    'Select '+ dbo.fn_SQLStrValueForString (tanimi, 0) +', ' + 
    dbo.fn_SQLDecValueForString (altDeger, 0) +', ' + 
    dbo.fn_SQLDecValueForString (ustDeger, 0) +', ' + 
    dbo.fn_SQLIntValueForString (Renk, 0) +', ' + 
    dbo.fn_SQLIntValueForString (Metod, 0) +', ' + 
    dbo.fn_SQLIntValueForString (Kod, 0)
  from inserted i
  where not exists (select 1 from deleted d where d.Metod = i.Metod and d.Kod = i.Kod)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select @TableName, @KeyFields, dbo.fn_SQLIntValueForString (i.Metod, 0) + ',' + dbo.fn_SQLIntValueForString (i.Kod, 0), 'U', 0,
    'Update RDS_SKOR'+char (13) + char (10) +'  SET '+char (13) + char (10) + '    ' +
    REVERSE (SUBSTRING (REvERSE (case when dbo.fn_SQLStrValueForString (d.tanimi, 0) <> dbo.fn_SQLStrValueForString (i.tanimi, 0) then 'tanimi = ' + dbo.fn_SQLStrValueForString (i.tanimi, 0) + ',' else '' end +
    case when dbo.fn_SQLDecValueForString (d.altDeger, 0) <> dbo.fn_SQLDecValueForString (i.altDeger, 0) then 'altDeger = ' + dbo.fn_SQLDecValueForString (i.altDeger, 0) + ',' else '' end +
    case when dbo.fn_SQLDecValueForString (d.ustDeger, 0) <> dbo.fn_SQLDecValueForString (i.ustDeger, 0) then 'ustDeger = ' + dbo.fn_SQLDecValueForString (i.ustDeger, 0) + ',' else '' end +
    case when dbo.fn_SQLIntValueForString (d.Renk, 0) <> dbo.fn_SQLIntValueForString (i.Renk, 0) then 'Renk = ' + dbo.fn_SQLIntValueForString (i.Renk, 0) + ',' else '' end), 2, 8000)) +
    char (13) + char (10) + 'WHERE Metod' + dbo.fn_SQLIntValueForString (i.Metod, 1) + ' and Kod' + dbo.fn_SQLIntValueForString (i.Kod, 1) 
  from inserted i
  inner join deleted d on d.Metod = i.Metod and d.Kod = i.Kod
  inner join 
    (SELECT Metod,Kod
     FROM
     (select tanimi, altDeger, ustDeger, Renk, Metod, Kod
      from
      (select -1 x, tanimi, altDeger, ustDeger, Renk, Metod, Kod
       from deleted
       union all
       select 1 x, tanimi, altDeger, ustDeger, Renk, Metod, Kod
       from inserted) U
      group by tanimi, altDeger, ustDeger, Renk, Metod, Kod
      having sum (x) <> 0)w
     group by Metod,Kod) u on u.Metod = i.Metod and u.Kod = i.Kod
  set nocount off
END
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'RDS_SKOR_TakipTrg'
GO
COMMIT
GO
