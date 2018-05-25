BEGIN TRAN
GO
ALTER -- create -- drop
 TRIGGER [dbo].[DokumanGrup_TakipTrg]
   ON  [dbo].[DokumanGrup]
   AFTER DELETE,INSERT, UPDATE
AS 
BEGIN
  set nocount on
  declare 
    @TableName varchar (200) = 'DokumanGrup',
    @KeyFields varchar (200) = 'DokumanGrupID'

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLIntValueForString (DokumanGrupID, 0), 'D', 0,
    'DELETE FROM dbo.DokumanGrup where DokumanGrupID' + dbo.fn_SQLIntValueForString (DokumanGrupID, 1) 
  from deleted d
  where not exists (select 1 from inserted i where d.DokumanGrupID = i.DokumanGrupID)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLIntValueForString (DokumanGrupID, 0), 'I', 1,
    'IF NOT EXISTS (SELECT 1 from dbo.DokumanGrup where DokumanGrupID' + dbo.fn_SQLIntValueForString (DokumanGrupID, 1) +')'+char (13) + char (10) + 
    'insert into dbo.DokumanGrup (DokumanGrupID, Tanimi)'+char (13) + char (10) + 
    'Select '+ dbo.fn_SQLIntValueForString (DokumanGrupID, 0) +', ' + 
    dbo.fn_SQLStrValueForString (Tanimi, 0)
  from inserted i
  where not exists (select 1 from deleted d where d.DokumanGrupID = i.DokumanGrupID)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select @TableName, @KeyFields, dbo.fn_SQLIntValueForString (i.DokumanGrupID, 0), 'U', 0,
    'Update DokumanGrup'+char (13) + char (10) +'  SET '+char (13) + char (10) + '    ' +
    REVERSE (SUBSTRING (REvERSE (case when dbo.fn_SQLStrValueForString (d.Tanimi, 0) <> dbo.fn_SQLStrValueForString (i.Tanimi, 0) then 'Tanimi = ' + dbo.fn_SQLStrValueForString (i.Tanimi, 0) + ',' else '' end), 2, 8000)) +
    char (13) + char (10) + 'WHERE DokumanGrupID' + dbo.fn_SQLIntValueForString (i.DokumanGrupID, 1) 
  from inserted i
  inner join deleted d on d.DokumanGrupID = i.DokumanGrupID
  inner join 
    (SELECT DokumanGrupID
     FROM
     (select DokumanGrupID, Tanimi
      from
      (select -1 x, DokumanGrupID, Tanimi
       from deleted
       union all
       select 1 x, DokumanGrupID, Tanimi
       from inserted) U
      group by DokumanGrupID, Tanimi
      having sum (x) <> 0)w
     group by DokumanGrupID) u on u.DokumanGrupID = i.DokumanGrupID
  set nocount off
END
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'DokumanGrup_TakipTrg'
GO
COMMIT
GO
