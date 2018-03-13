BEGIN TRAN
GO
ALTER -- create -- drop
 TRIGGER [dbo].[SahaGozlemSoruAltGrup_TakipTrg]
   ON  [dbo].[SahaGozlemSoruAltGrup]
   AFTER DELETE,INSERT, UPDATE
AS 
BEGIN
  set nocount on
  declare 
    @TableName varchar (200) = 'SahaGozlemSoruAltGrup',
    @KeyFields varchar (200) = 'GozlemAltGrup,GozlemGrup'

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLIntValueForString (GozlemAltGrup, 0) + ',' + dbo.fn_SQLIntValueForString (GozlemGrup, 0), 'D', 0,
    'DELETE FROM dbo.SahaGozlemSoruAltGrup where GozlemAltGrup' + dbo.fn_SQLIntValueForString (GozlemAltGrup, 1) + ' and GozlemGrup' + dbo.fn_SQLIntValueForString (GozlemGrup, 1) 
  from deleted d
  where not exists (select 1 from inserted i where ISNULL (d.GozlemAltGrup, 0) = ISNULL (i.GozlemAltGrup, 0) and ISNULL (d.GozlemGrup, 0) = ISNULL (i.GozlemGrup, 0))

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLIntValueForString (GozlemAltGrup, 0) + ',' + dbo.fn_SQLIntValueForString (GozlemGrup, 0), 'I', 0,
    'IF NOT EXISTS (SELECT 1 from dbo.SahaGozlemSoruAltGrup where GozlemAltGrup' + dbo.fn_SQLIntValueForString (GozlemAltGrup, 1) + ' and GozlemGrup' + dbo.fn_SQLIntValueForString (GozlemGrup, 1) +')'+char (13) + char (10) + 
    'insert into dbo.SahaGozlemSoruAltGrup (GozlemAltGrup, GozlemGrup, Tanimi, Sira)'+char (13) + char (10) + 
    'Select '+ dbo.fn_SQLIntValueForString (GozlemAltGrup, 0) +', ' + 
    dbo.fn_SQLIntValueForString (GozlemGrup, 0) +', ' + 
    dbo.fn_SQLStrValueForString (Tanimi, 0) +', ' + 
    dbo.fn_SQLIntValueForString (Sira, 0)
  from inserted i
  where not exists (select 1 from deleted d where ISNULL (d.GozlemAltGrup, 0) = ISNULL (i.GozlemAltGrup, 0) and ISNULL (d.GozlemGrup, 0) = ISNULL (i.GozlemGrup, 0))

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select @TableName, @KeyFields, dbo.fn_SQLIntValueForString (i.GozlemAltGrup, 0) + ',' + dbo.fn_SQLIntValueForString (i.GozlemGrup, 0), 'U', 0,
    'Update SahaGozlemSoruAltGrup'+char (13) + char (10) +'  SET '+char (13) + char (10) + '    ' +
    REVERSE (SUBSTRING (REvERSE (case when dbo.fn_SQLStrValueForString (d.Tanimi, 0) <> dbo.fn_SQLStrValueForString (i.Tanimi, 0) then 'Tanimi = ' + dbo.fn_SQLStrValueForString (i.Tanimi, 0) + ',' else '' end +
    case when dbo.fn_SQLIntValueForString (d.Sira, 0) <> dbo.fn_SQLIntValueForString (i.Sira, 0) then 'Sira = ' + dbo.fn_SQLIntValueForString (i.Sira, 0) + ',' else '' end), 2, 8000)) +
    char (13) + char (10) + 'WHERE GozlemAltGrup' + dbo.fn_SQLIntValueForString (i.GozlemAltGrup, 1) + ' and GozlemGrup' + dbo.fn_SQLIntValueForString (i.GozlemGrup, 1) 
  from inserted i
  inner join deleted d on ISNULL (d.GozlemAltGrup, 0) = ISNULL (i.GozlemAltGrup, 0) and ISNULL (d.GozlemGrup, 0) = ISNULL (i.GozlemGrup, 0)
  inner join 
    (SELECT GozlemAltGrup,GozlemGrup
     FROM
     (select GozlemAltGrup, GozlemGrup, Tanimi, Sira
      from
      (select -1 x, GozlemAltGrup, GozlemGrup, Tanimi, Sira
       from deleted
       union all
       select 1 x, GozlemAltGrup, GozlemGrup, Tanimi, Sira
       from inserted) U
      group by GozlemAltGrup, GozlemGrup, Tanimi, Sira
      having sum (x) <> 0)w
     group by GozlemAltGrup,GozlemGrup) u on ISNULL (u.GozlemAltGrup, 0) = ISNULL (i.GozlemAltGrup, 0) and ISNULL (u.GozlemGrup, 0) = ISNULL (i.GozlemGrup, 0)
  set nocount off
END
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'SahaGozlemSoruAltGrup_TakipTrg'
GO
COMMIT
GO
