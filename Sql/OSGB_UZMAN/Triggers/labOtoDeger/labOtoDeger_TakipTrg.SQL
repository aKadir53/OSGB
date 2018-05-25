BEGIN TRAN
GO
ALTER -- create -- drop
 TRIGGER [dbo].[labOtoDeger_TakipTrg]
   ON  [dbo].[labOtoDeger]
   AFTER DELETE,INSERT, UPDATE
AS 
BEGIN
  set nocount on
  declare 
    @TableName varchar (200) = 'labOtoDeger',
    @KeyFields varchar (200) = 'id,sira,kod'

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLIntValueForString (id, 0) + ',' + dbo.fn_SQLIntValueForString (sira, 0) + ',' + dbo.fn_SQLStrValueForString (kod, 0), 'D', 0,
    'DELETE FROM dbo.labOtoDeger where id' + dbo.fn_SQLIntValueForString (id, 1) + ' and sira' + dbo.fn_SQLIntValueForString (sira, 1) + ' and kod' + dbo.fn_SQLStrValueForString (kod, 1) 
  from deleted d
  where not exists (select 1 from inserted i where d.id = i.id and d.sira = i.sira and d.kod = i.kod)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLIntValueForString (id, 0) + ',' + dbo.fn_SQLIntValueForString (sira, 0) + ',' + dbo.fn_SQLStrValueForString (kod, 0), 'I', 0,
    'IF NOT EXISTS (SELECT 1 from dbo.labOtoDeger where id' + dbo.fn_SQLIntValueForString (id, 1) + ' and sira' + dbo.fn_SQLIntValueForString (sira, 1) + ' and kod' + dbo.fn_SQLStrValueForString (kod, 1) +')'+char (13) + char (10) + 
    'insert into dbo.labOtoDeger (id, sira, kod, ifade)'+char (13) + char (10) + 
    'Select '+ dbo.fn_SQLIntValueForString (id, 0) +', ' + 
    dbo.fn_SQLIntValueForString (sira, 0) +', ' + 
    dbo.fn_SQLStrValueForString (kod, 0) +', ' + 
    dbo.fn_SQLStrValueForString (ifade, 0)
  from inserted i
  where not exists (select 1 from deleted d where d.id = i.id and d.sira = i.sira and d.kod = i.kod)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select @TableName, @KeyFields, dbo.fn_SQLIntValueForString (i.id, 0) + ',' + dbo.fn_SQLIntValueForString (i.sira, 0) + ',' + dbo.fn_SQLStrValueForString (i.kod, 0), 'U', 0,
    'Update labOtoDeger'+char (13) + char (10) +'  SET '+char (13) + char (10) + '    ' +
    REVERSE (SUBSTRING (REvERSE (case when dbo.fn_SQLStrValueForString (d.ifade, 0) <> dbo.fn_SQLStrValueForString (i.ifade, 0) then 'ifade = ' + dbo.fn_SQLStrValueForString (i.ifade, 0) + ',' else '' end), 2, 8000)) +
    char (13) + char (10) + 'WHERE id' + dbo.fn_SQLIntValueForString (i.id, 1) + ' and sira' + dbo.fn_SQLIntValueForString (i.sira, 1) + ' and kod' + dbo.fn_SQLStrValueForString (i.kod, 1) 
  from inserted i
  inner join deleted d on d.id = i.id and d.sira = i.sira and d.kod = i.kod
  inner join 
    (SELECT id,sira,kod
     FROM
     (select id, sira, kod, ifade
      from
      (select -1 x, id, sira, kod, ifade
       from deleted
       union all
       select 1 x, id, sira, kod, ifade
       from inserted) U
      group by id, sira, kod, ifade
      having sum (x) <> 0)w
     group by id,sira,kod) u on u.id = i.id and u.sira = i.sira and u.kod = i.kod
  set nocount off
END
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'labOtoDeger_TakipTrg'
GO
COMMIT
GO
