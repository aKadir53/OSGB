BEGIN TRAN
GO
ALTER -- create -- drop
 TRIGGER [dbo].[SahaGozlemSoruGrup_TakipTrg]
   ON  [dbo].[SahaGozlemSoruGrup]
   AFTER DELETE,INSERT, UPDATE
AS 
BEGIN
  set nocount on
  declare 
    @TableName varchar (200) = 'SahaGozlemSoruGrup',
    @KeyFields varchar (200) = 'GozlemGrup'

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLIntValueForString (GozlemGrup, 0), 'D', 0,
    'DELETE FROM dbo.SahaGozlemSoruGrup where GozlemGrup' + dbo.fn_SQLIntValueForString (GozlemGrup, 1) 
  from deleted d
  where not exists (select 1 from inserted i where d.GozlemGrup = i.GozlemGrup)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLIntValueForString (GozlemGrup, 0), 'I', 0,
    'IF NOT EXISTS (SELECT 1 from dbo.SahaGozlemSoruGrup where GozlemGrup' + dbo.fn_SQLIntValueForString (GozlemGrup, 1) +')'+char (13) + char (10) + 
    'insert into dbo.SahaGozlemSoruGrup (GozlemGrup, Tanimi)'+char (13) + char (10) + 
    'Select '+ dbo.fn_SQLIntValueForString (GozlemGrup, 0) +', ' + 
    dbo.fn_SQLStrValueForString (Tanimi, 0)
  from inserted i
  where not exists (select 1 from deleted d where d.GozlemGrup = i.GozlemGrup)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select @TableName, @KeyFields, dbo.fn_SQLIntValueForString (i.GozlemGrup, 0), 'U', 0,
    'Update SahaGozlemSoruGrup'+char (13) + char (10) +'  SET '+char (13) + char (10) + '    ' +
    REVERSE (SUBSTRING (REvERSE (case when dbo.fn_SQLStrValueForString (d.Tanimi, 0) <> dbo.fn_SQLStrValueForString (i.Tanimi, 0) then 'Tanimi = ' + dbo.fn_SQLStrValueForString (i.Tanimi, 0) + ',' else '' end), 2, 8000)) +
    char (13) + char (10) + 'WHERE GozlemGrup' + dbo.fn_SQLIntValueForString (i.GozlemGrup, 1) 
  from inserted i
  inner join deleted d on d.GozlemGrup = i.GozlemGrup
  inner join 
    (SELECT GozlemGrup
     FROM
     (select GozlemGrup, Tanimi
      from
      (select -1 x, GozlemGrup, Tanimi
       from deleted
       union all
       select 1 x, GozlemGrup, Tanimi
       from inserted) U
      group by GozlemGrup, Tanimi
      having sum (x) <> 0)w
     group by GozlemGrup) u on u.GozlemGrup = i.GozlemGrup
  set nocount off
END
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'SahaGozlemSoruGrup_TakipTrg'
GO
COMMIT
GO
