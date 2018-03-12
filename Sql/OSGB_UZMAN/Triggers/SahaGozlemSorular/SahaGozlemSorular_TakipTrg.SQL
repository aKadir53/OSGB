BEGIN TRAN
GO
ALTER -- create -- drop
 TRIGGER [dbo].[SahaGozlemSorular_TakipTrg]
   ON  [dbo].[SahaGozlemSorular]
   AFTER DELETE,INSERT, UPDATE
AS 
BEGIN
  set nocount on
  declare 
    @TableName varchar (200) = 'SahaGozlemSorular',
    @KeyFields varchar (200) = 'Konu,GozlemGrup,GozlemAltGrup'

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLStrValueForString (Konu, 0) + ',' + dbo.fn_SQLIntValueForString (GozlemGrup, 0) + ',' + dbo.fn_SQLIntValueForString (GozlemAltGrup, 0), 'D', 0,
    'DELETE FROM dbo.SahaGozlemSorular where Konu' + dbo.fn_SQLStrValueForString (Konu, 1) + ' and GozlemGrup' + dbo.fn_SQLIntValueForString (GozlemGrup, 1) + ' and GozlemAltGrup' + dbo.fn_SQLIntValueForString (GozlemAltGrup, 1) 
  from deleted d
  where not exists (select 1 from inserted i where ISNULL (d.Konu, '') = ISNULL (i.Konu, '') and d.GozlemGrup = i.GozlemGrup and ISNULL (d.GozlemAltGrup, 0) = ISNULL (i.GozlemAltGrup, 0))

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLStrValueForString (Konu, 0) + ',' + dbo.fn_SQLIntValueForString (GozlemGrup, 0) + ',' + dbo.fn_SQLIntValueForString (GozlemAltGrup, 0), 'I', 0,
    'IF NOT EXISTS (SELECT 1 from dbo.SahaGozlemSorular where Konu' + dbo.fn_SQLStrValueForString (Konu, 1) + ' and GozlemGrup' + dbo.fn_SQLIntValueForString (GozlemGrup, 1) + ' and GozlemAltGrup' + dbo.fn_SQLIntValueForString (GozlemAltGrup, 1) +')'+char (13) + char (10) + 
    'insert into dbo.SahaGozlemSorular (Konu, GozlemGrup, GozlemAltGrup, Sira)'+char (13) + char (10) + 
    'Select '+ dbo.fn_SQLStrValueForString (Konu, 0) +', ' + 
    dbo.fn_SQLIntValueForString (GozlemGrup, 0) +', ' + 
    dbo.fn_SQLIntValueForString (GozlemAltGrup, 0) +', ' + 
    dbo.fn_SQLIntValueForString (Sira, 0)
  from inserted i
  where not exists (select 1 from deleted d where ISNULL (d.Konu, '') = ISNULL (i.Konu, '') and d.GozlemGrup = i.GozlemGrup and ISNULL (d.GozlemAltGrup, 0) = ISNULL (i.GozlemAltGrup, 0))

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select @TableName, @KeyFields, dbo.fn_SQLStrValueForString (i.Konu, 0) + ',' + dbo.fn_SQLIntValueForString (i.GozlemGrup, 0) + ',' + dbo.fn_SQLIntValueForString (i.GozlemAltGrup, 0), 'U', 0,
    'Update SahaGozlemSorular'+char (13) + char (10) +'  SET '+char (13) + char (10) + '    ' +
    REVERSE (SUBSTRING (REvERSE (case when dbo.fn_SQLIntValueForString (d.Sira, 0) <> dbo.fn_SQLIntValueForString (i.Sira, 0) then 'Sira = ' + dbo.fn_SQLIntValueForString (i.Sira, 0) + ',' else '' end), 2, 8000)) +
    char (13) + char (10) + 'WHERE Konu' + dbo.fn_SQLStrValueForString (i.Konu, 1) + ' and GozlemGrup' + dbo.fn_SQLIntValueForString (i.GozlemGrup, 1) + ' and GozlemAltGrup' + dbo.fn_SQLIntValueForString (i.GozlemAltGrup, 1) 
  from inserted i
  inner join deleted d on ISNULL (d.Konu, '') = ISNULL (i.Konu, '') and d.GozlemGrup = i.GozlemGrup and ISNULL (d.GozlemAltGrup, 0) = ISNULL (i.GozlemAltGrup, 0)
  inner join 
    (SELECT Konu,GozlemGrup,GozlemAltGrup
     FROM
     (select Konu, GozlemGrup, GozlemAltGrup, Sira
      from
      (select -1 x, Konu, GozlemGrup, GozlemAltGrup, Sira
       from deleted
       union all
       select 1 x, Konu, GozlemGrup, GozlemAltGrup, Sira
       from inserted) U
      group by Konu, GozlemGrup, GozlemAltGrup, Sira
      having sum (x) <> 0)w
     group by Konu,GozlemGrup,GozlemAltGrup) u on ISNULL (u.Konu, '') = ISNULL (i.Konu, '') and u.GozlemGrup = i.GozlemGrup and ISNULL (u.GozlemAltGrup, 0) = ISNULL (i.GozlemAltGrup, 0)
  set nocount off
END
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'SahaGozlemSorular_TakipTrg'
GO
COMMIT
GO
