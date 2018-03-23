BEGIN TRAN
GO
ALTER -- create -- drop
 TRIGGER [dbo].[CalismaKonulari_TakipTrg]
   ON  [dbo].[CalismaKonulari]
   AFTER DELETE,INSERT, UPDATE
AS 
BEGIN
  set nocount on
  declare 
    @TableName varchar (200) = 'CalismaKonulari',
    @KeyFields varchar (200) = 'id'

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLIntValueForString (id, 0), 'D', 0,
    'DELETE FROM dbo.CalismaKonulari where id' + dbo.fn_SQLIntValueForString (id, 1) 
  from deleted d
  where not exists (select 1 from inserted i where d.id = i.id)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLIntValueForString (id, 0), 'I', 1,
    'IF NOT EXISTS (SELECT 1 from dbo.CalismaKonulari where id' + dbo.fn_SQLIntValueForString (id, 1) +')'+char (13) + char (10) + 
    'insert into dbo.CalismaKonulari (id, grup, konu, gorevli, sec)'+char (13) + char (10) + 
    'Select '+ dbo.fn_SQLIntValueForString (id, 0) +', ' + 
    dbo.fn_SQLIntValueForString (grup, 0) +', ' + 
    dbo.fn_SQLStrValueForString (konu, 0) +', ' + 
    dbo.fn_SQLStrValueForString (gorevli, 0) +', ' + 
    dbo.fn_SQLIntValueForString (sec, 0)
  from inserted i
  where not exists (select 1 from deleted d where d.id = i.id)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select @TableName, @KeyFields, dbo.fn_SQLIntValueForString (i.id, 0), 'U', 0,
    'Update CalismaKonulari'+char (13) + char (10) +'  SET '+char (13) + char (10) + '    ' +
    REVERSE (SUBSTRING (REvERSE (case when dbo.fn_SQLIntValueForString (d.grup, 0) <> dbo.fn_SQLIntValueForString (i.grup, 0) then 'grup = ' + dbo.fn_SQLIntValueForString (i.grup, 0) + ',' else '' end +
    case when dbo.fn_SQLStrValueForString (d.konu, 0) <> dbo.fn_SQLStrValueForString (i.konu, 0) then 'konu = ' + dbo.fn_SQLStrValueForString (i.konu, 0) + ',' else '' end +
    case when dbo.fn_SQLStrValueForString (d.gorevli, 0) <> dbo.fn_SQLStrValueForString (i.gorevli, 0) then 'gorevli = ' + dbo.fn_SQLStrValueForString (i.gorevli, 0) + ',' else '' end +
    case when dbo.fn_SQLIntValueForString (d.sec, 0) <> dbo.fn_SQLIntValueForString (i.sec, 0) then 'sec = ' + dbo.fn_SQLIntValueForString (i.sec, 0) + ',' else '' end), 2, 8000)) +
    char (13) + char (10) + 'WHERE id' + dbo.fn_SQLIntValueForString (i.id, 1) 
  from inserted i
  inner join deleted d on d.id = i.id
  inner join 
    (SELECT id
     FROM
     (select id, grup, konu, gorevli, sec
      from
      (select -1 x, id, grup, konu, gorevli, sec
       from deleted
       union all
       select 1 x, id, grup, konu, gorevli, sec
       from inserted) U
      group by id, grup, konu, gorevli, sec
      having sum (x) <> 0)w
     group by id) u on u.id = i.id
  set nocount off
END
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'CalismaKonulari_TakipTrg'
GO
COMMIT
GO
