BEGIN TRAN
GO
ALTER -- create -- drop
 TRIGGER [dbo].[UserGroups_TakipTrg]
   ON  [dbo].[UserGroups]
   AFTER DELETE,INSERT, UPDATE
AS 
BEGIN
  set nocount on
  declare 
    @TableName varchar (200) = 'UserGroups',
    @KeyFields varchar (200) = 'KODU'

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLIntValueForString (KODU, 0), 'D', 0,
    'DELETE FROM dbo.UserGroups where KODU' + dbo.fn_SQLIntValueForString (KODU, 1) 
  from deleted d
  where not exists (select 1 from inserted i where d.KODU = i.KODU)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLIntValueForString (KODU, 0), 'I', 1,
    'IF NOT EXISTS (SELECT 1 from dbo.UserGroups where KODU' + dbo.fn_SQLIntValueForString (KODU, 1) +')'+char (13) + char (10) + 
    'insert into dbo.UserGroups (KODU, ADI, SifreDegistirmePeryod)'+char (13) + char (10) + 
    'Select '+ dbo.fn_SQLIntValueForString (KODU, 0) +', ' + 
    dbo.fn_SQLStrValueForString (ADI, 0) +', ' + 
    dbo.fn_SQLIntValueForString (SifreDegistirmePeryod, 0)
  from inserted i
  where not exists (select 1 from deleted d where d.KODU = i.KODU)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select @TableName, @KeyFields, dbo.fn_SQLIntValueForString (i.KODU, 0), 'U', 0,
    'Update UserGroups'+char (13) + char (10) +'  SET '+char (13) + char (10) + '    ' +
    REVERSE (SUBSTRING (REvERSE (case when dbo.fn_SQLStrValueForString (d.ADI, 0) <> dbo.fn_SQLStrValueForString (i.ADI, 0) then 'ADI = ' + dbo.fn_SQLStrValueForString (i.ADI, 0) + ',' else '' end +
    case when dbo.fn_SQLIntValueForString (d.SifreDegistirmePeryod, 0) <> dbo.fn_SQLIntValueForString (i.SifreDegistirmePeryod, 0) then 'SifreDegistirmePeryod = ' + dbo.fn_SQLIntValueForString (i.SifreDegistirmePeryod, 0) + ',' else '' end), 2, 8000)) +
    char (13) + char (10) + 'WHERE KODU' + dbo.fn_SQLIntValueForString (i.KODU, 1) 
  from inserted i
  inner join deleted d on d.KODU = i.KODU
  inner join 
    (SELECT KODU
     FROM
     (select KODU, ADI, SifreDegistirmePeryod
      from
      (select -1 x, KODU, ADI, SifreDegistirmePeryod
       from deleted
       union all
       select 1 x, KODU, ADI, SifreDegistirmePeryod
       from inserted) U
      group by KODU, ADI, SifreDegistirmePeryod
      having sum (x) <> 0)w
     group by KODU) u on u.KODU = i.KODU
  set nocount off
END
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'UserGroups_TakipTrg'
GO
COMMIT
GO
