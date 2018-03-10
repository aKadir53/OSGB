BEGIN TRAN
GO
ALTER -- create -- drop
 TRIGGER [dbo].[FormCaption_TakipTrg]
   ON  [dbo].[FormCaption]
   AFTER DELETE,INSERT, UPDATE
AS 
BEGIN
  set nocount on
  declare 
    @TableName varchar (200) = 'FormCaption',
    @KeyFields varchar (200) = 'formTag'

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLIntValueForString (formTag, 0), 'D', 0,
    'DELETE FROM dbo.FormCaption where formTag' + dbo.fn_SQLIntValueForString (formTag, 1) 
  from deleted d
  where not exists (select 1 from inserted i where d.formTag = i.formTag)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLIntValueForString (formTag, 0), 'I', 0,
    'IF NOT EXISTS (SELECT 1 from dbo.FormCaption where formTag' + dbo.fn_SQLIntValueForString (formTag, 1) +')'+char (13) + char (10) + 
    'insert into dbo.FormCaption (formTag, formCaption, formAltCaption, UserGroup)'+char (13) + char (10) + 
    'Select '+ dbo.fn_SQLIntValueForString (formTag, 0) +', ' + 
    dbo.fn_SQLStrValueForString (formCaption, 0) +', ' + 
    dbo.fn_SQLStrValueForString (formAltCaption, 0) +', ' + 
    dbo.fn_SQLIntValueForString (UserGroup, 0)
  from inserted i
  where not exists (select 1 from deleted d where d.formTag = i.formTag)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select @TableName, @KeyFields, dbo.fn_SQLIntValueForString (i.formTag, 0), 'U', 0,
    'Update FormCaption'+char (13) + char (10) +'  SET '+char (13) + char (10) + '    ' +
    REVERSE (SUBSTRING (REvERSE (case when dbo.fn_SQLStrValueForString (d.formCaption, 0) <> dbo.fn_SQLStrValueForString (i.formCaption, 0) then 'formCaption = ' + dbo.fn_SQLStrValueForString (i.formCaption, 0) + ',' else '' end +
    case when dbo.fn_SQLStrValueForString (d.formAltCaption, 0) <> dbo.fn_SQLStrValueForString (i.formAltCaption, 0) then 'formAltCaption = ' + dbo.fn_SQLStrValueForString (i.formAltCaption, 0) + ',' else '' end +
    case when dbo.fn_SQLIntValueForString (d.UserGroup, 0) <> dbo.fn_SQLIntValueForString (i.UserGroup, 0) then 'UserGroup = ' + dbo.fn_SQLIntValueForString (i.UserGroup, 0) + ',' else '' end), 2, 8000)) +
    char (13) + char (10) + 'WHERE formTag' + dbo.fn_SQLIntValueForString (i.formTag, 1) 
  from inserted i
  inner join deleted d on d.formTag = i.formTag
  inner join 
    (SELECT formTag
     FROM
     (select formTag, formCaption, formAltCaption, UserGroup
      from
      (select -1 x, formTag, formCaption, formAltCaption, UserGroup
       from deleted
       union all
       select 1 x, formTag, formCaption, formAltCaption, UserGroup
       from inserted) U
      group by formTag, formCaption, formAltCaption, UserGroup
      having sum (x) <> 0)w
     group by formTag) u on u.formTag = i.formTag
  set nocount off
END
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'formCaption_TakipTrg'
GO
COMMIT
GO
