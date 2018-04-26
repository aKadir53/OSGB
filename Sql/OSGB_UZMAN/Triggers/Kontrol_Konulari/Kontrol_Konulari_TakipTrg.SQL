BEGIN TRAN
GO
ALTER -- create -- drop
 TRIGGER [dbo].[Kontrol_Konulari_TakipTrg]
   ON  [dbo].[Kontrol_Konulari]
   AFTER DELETE,INSERT, UPDATE
AS 
BEGIN
  set nocount on
  declare 
    @TableName varchar (200) = 'Kontrol_Konulari',
    @KeyFields varchar (200) = 'id'

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLIntValueForString (id, 0), 'D', 0,
    'DELETE FROM dbo.Kontrol_Konulari where id' + dbo.fn_SQLIntValueForString (id, 1) 
  from deleted d
  where not exists (select 1 from inserted i where d.id = i.id)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLIntValueForString (id, 0), 'I', 1,
    'IF NOT EXISTS (SELECT 1 from dbo.Kontrol_Konulari where id' + dbo.fn_SQLIntValueForString (id, 1) +')'+char (13) + char (10) + 
    'insert into dbo.Kontrol_Konulari (kontrolislemID, sira, soru, id)'+char (13) + char (10) + 
    'Select '+ dbo.fn_SQLIntValueForString (kontrolislemID, 0) +', ' + 
    dbo.fn_SQLIntValueForString (sira, 0) +', ' + 
    dbo.fn_SQLStrValueForString (soru, 0) +', ' + 
    dbo.fn_SQLIntValueForString (id, 0)
  from inserted i
  where not exists (select 1 from deleted d where d.id = i.id)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select @TableName, @KeyFields, dbo.fn_SQLIntValueForString (i.id, 0), 'U', 0,
    'Update Kontrol_Konulari'+char (13) + char (10) +'  SET '+char (13) + char (10) + '    ' +
    REVERSE (SUBSTRING (REvERSE (case when dbo.fn_SQLIntValueForString (d.kontrolislemID, 0) <> dbo.fn_SQLIntValueForString (i.kontrolislemID, 0) then 'kontrolislemID = ' + dbo.fn_SQLIntValueForString (i.kontrolislemID, 0) + ',' else '' end +
    case when dbo.fn_SQLIntValueForString (d.sira, 0) <> dbo.fn_SQLIntValueForString (i.sira, 0) then 'sira = ' + dbo.fn_SQLIntValueForString (i.sira, 0) + ',' else '' end +
    case when dbo.fn_SQLStrValueForString (d.soru, 0) <> dbo.fn_SQLStrValueForString (i.soru, 0) then 'soru = ' + dbo.fn_SQLStrValueForString (i.soru, 0) + ',' else '' end), 2, 8000)) +
    char (13) + char (10) + 'WHERE id' + dbo.fn_SQLIntValueForString (i.id, 1) 
  from inserted i
  inner join deleted d on d.id = i.id
  inner join 
    (SELECT id
     FROM
     (select kontrolislemID, sira, soru, id
      from
      (select -1 x, kontrolislemID, sira, soru, id
       from deleted
       union all
       select 1 x, kontrolislemID, sira, soru, id
       from inserted) U
      group by kontrolislemID, sira, soru, id
      having sum (x) <> 0)w
     group by id) u on u.id = i.id
  set nocount off
END
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'Kontrol_Konulari_TakipTrg'
GO
COMMIT
GO
