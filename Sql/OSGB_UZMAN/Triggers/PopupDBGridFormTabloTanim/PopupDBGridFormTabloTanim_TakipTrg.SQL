BEGIN TRAN
GO
ALTER -- create -- drop
 TRIGGER [dbo].[PopupDBGridFormTabloTanim_TakipTrg]
   ON  [dbo].[PopupDBGridFormTabloTanim]
   AFTER DELETE,INSERT, UPDATE
AS 
BEGIN
  set nocount on
  declare 
    @TableName varchar (200) = 'PopupDBGridFormTabloTanim',
    @KeyFields varchar (200) = 'id'

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLIntValueForString (id, 0), 'D', 0,
    'DELETE FROM dbo.PopupDBGridFormTabloTanim where id' + dbo.fn_SQLIntValueForString (id, 1) 
  from deleted d
  where not exists (select 1 from inserted i where d.id = i.id)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLIntValueForString (id, 0), 'I', 1,
    'IF NOT EXISTS (SELECT 1 from dbo.PopupDBGridFormTabloTanim where id' + dbo.fn_SQLIntValueForString (id, 1) +')'+char (13) + char (10) + 
    'insert into dbo.PopupDBGridFormTabloTanim (id, tableName, _fields_, _fieldBaslik_, _fieldTips_, tanimi, aktif, IC_Params)'+char (13) + char (10) + 
    'Select '+ dbo.fn_SQLIntValueForString (id, 0) +', ' + 
    dbo.fn_SQLStrValueForString (tableName, 0) +', ' + 
    dbo.fn_SQLStrValueForString (_fields_, 0) +', ' + 
    dbo.fn_SQLStrValueForString (_fieldBaslik_, 0) +', ' + 
    dbo.fn_SQLStrValueForString (_fieldTips_, 0) +', ' + 
    dbo.fn_SQLStrValueForString (tanimi, 0) +', ' + 
    dbo.fn_SQLIntValueForString (aktif, 0) +', ' + 
    dbo.fn_SQLStrValueForString (IC_Params, 0)
  from inserted i
  where not exists (select 1 from deleted d where d.id = i.id)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select @TableName, @KeyFields, dbo.fn_SQLIntValueForString (i.id, 0), 'U', 0,
    'Update PopupDBGridFormTabloTanim'+char (13) + char (10) +'  SET '+char (13) + char (10) + '    ' +
    REVERSE (SUBSTRING (REvERSE (case when dbo.fn_SQLStrValueForString (d.tableName, 0) <> dbo.fn_SQLStrValueForString (i.tableName, 0) then 'tableName = ' + dbo.fn_SQLStrValueForString (i.tableName, 0) + ',' else '' end +
    case when dbo.fn_SQLStrValueForString (d._fields_, 0) <> dbo.fn_SQLStrValueForString (i._fields_, 0) then '_fields_ = ' + dbo.fn_SQLStrValueForString (i._fields_, 0) + ',' else '' end +
    case when dbo.fn_SQLStrValueForString (d._fieldBaslik_, 0) <> dbo.fn_SQLStrValueForString (i._fieldBaslik_, 0) then '_fieldBaslik_ = ' + dbo.fn_SQLStrValueForString (i._fieldBaslik_, 0) + ',' else '' end +
    case when dbo.fn_SQLStrValueForString (d._fieldTips_, 0) <> dbo.fn_SQLStrValueForString (i._fieldTips_, 0) then '_fieldTips_ = ' + dbo.fn_SQLStrValueForString (i._fieldTips_, 0) + ',' else '' end +
    case when dbo.fn_SQLStrValueForString (d.tanimi, 0) <> dbo.fn_SQLStrValueForString (i.tanimi, 0) then 'tanimi = ' + dbo.fn_SQLStrValueForString (i.tanimi, 0) + ',' else '' end +
    case when dbo.fn_SQLIntValueForString (d.aktif, 0) <> dbo.fn_SQLIntValueForString (i.aktif, 0) then 'aktif = ' + dbo.fn_SQLIntValueForString (i.aktif, 0) + ',' else '' end +
    case when dbo.fn_SQLStrValueForString (d.IC_Params, 0) <> dbo.fn_SQLStrValueForString (i.IC_Params, 0) then 'IC_Params = ' + dbo.fn_SQLStrValueForString (i.IC_Params, 0) + ',' else '' end), 2, 8000)) +
    char (13) + char (10) + 'WHERE id' + dbo.fn_SQLIntValueForString (i.id, 1) 
  from inserted i
  inner join deleted d on d.id = i.id
  inner join 
    (SELECT id
     FROM
     (select id, tableName, _fields_, _fieldBaslik_, _fieldTips_, tanimi, aktif, IC_Params
      from
      (select -1 x, id, tableName, _fields_, _fieldBaslik_, _fieldTips_, tanimi, aktif, IC_Params
       from deleted
       union all
       select 1 x, id, tableName, _fields_, _fieldBaslik_, _fieldTips_, tanimi, aktif, IC_Params
       from inserted) U
      group by id, tableName, _fields_, _fieldBaslik_, _fieldTips_, tanimi, aktif, IC_Params
      having sum (x) <> 0)w
     group by id) u on u.id = i.id
  set nocount off
END
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'PopupDBGridFormTabloTanim_TakipTrg'
GO
COMMIT
GO
