BEGIN TRAN
GO
ALTER -- create -- drop
 TRIGGER [dbo].[DokumanTip_TakipTrg]
   ON  [dbo].[DokumanTip]
   AFTER DELETE,INSERT, UPDATE
AS 
BEGIN
  set nocount on
  declare 
    @TableName varchar (200) = 'DokumanTip',
    @KeyFields varchar (200) = 'DokumanTipID'

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLIntValueForString (DokumanTipID, 0), 'D', 0,
    'DELETE FROM dbo.DokumanTip where DokumanTipID' + dbo.fn_SQLIntValueForString (DokumanTipID, 1) 
  from deleted d
  where not exists (select 1 from inserted i where d.DokumanTipID = i.DokumanTipID)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLIntValueForString (DokumanTipID, 0), 'I', 1,
    'IF NOT EXISTS (SELECT 1 from dbo.DokumanTip where DokumanTipID' + dbo.fn_SQLIntValueForString (DokumanTipID, 1) +')'+char (13) + char (10) + 
    'insert into dbo.DokumanTip (DokumanTipID, Tanimi)'+char (13) + char (10) + 
    'Select '+ dbo.fn_SQLIntValueForString (DokumanTipID, 0) +', ' + 
    dbo.fn_SQLStrValueForString (Tanimi, 0)
  from inserted i
  where not exists (select 1 from deleted d where d.DokumanTipID = i.DokumanTipID)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select @TableName, @KeyFields, dbo.fn_SQLIntValueForString (i.DokumanTipID, 0), 'U', 0,
    'Update DokumanTip'+char (13) + char (10) +'  SET '+char (13) + char (10) + '    ' +
    REVERSE (SUBSTRING (REvERSE (case when dbo.fn_SQLStrValueForString (d.Tanimi, 0) <> dbo.fn_SQLStrValueForString (i.Tanimi, 0) then 'Tanimi = ' + dbo.fn_SQLStrValueForString (i.Tanimi, 0) + ',' else '' end), 2, 8000)) +
    char (13) + char (10) + 'WHERE DokumanTipID' + dbo.fn_SQLIntValueForString (i.DokumanTipID, 1) 
  from inserted i
  inner join deleted d on d.DokumanTipID = i.DokumanTipID
  inner join 
    (SELECT DokumanTipID
     FROM
     (select DokumanTipID, Tanimi
      from
      (select -1 x, DokumanTipID, Tanimi
       from deleted
       union all
       select 1 x, DokumanTipID, Tanimi
       from inserted) U
      group by DokumanTipID, Tanimi
      having sum (x) <> 0)w
     group by DokumanTipID) u on u.DokumanTipID = i.DokumanTipID
  set nocount off
END
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'DokumanTip_TakipTrg'
GO
COMMIT
GO
