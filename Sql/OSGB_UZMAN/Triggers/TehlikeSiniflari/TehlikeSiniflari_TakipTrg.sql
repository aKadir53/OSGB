BEGIN TRAN
GO
ALTER -- create -- drop
 TRIGGER [dbo].[TehlikeSiniflari_TakipTrg]
   ON  [dbo].[TehlikeSiniflari]
   AFTER DELETE,INSERT, UPDATE
AS 
BEGIN
  set nocount on
  declare 
    @TableName varchar (200) = 'TehlikeSiniflari',
    @KeyFields varchar (200) = 'TehlikeSinifi'

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLIntValueForString (TehlikeSinifi, 0), 'D', 0,
    'DELETE FROM dbo.TehlikeSiniflari where TehlikeSinifi' + dbo.fn_SQLIntValueForString (TehlikeSinifi, 1) 
  from deleted d
  where not exists (select 1 from inserted i where d.TehlikeSinifi = i.TehlikeSinifi)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLIntValueForString (TehlikeSinifi, 0), 'I', 0,
    'IF NOT EXISTS (SELECT 1 from dbo.TehlikeSiniflari where TehlikeSinifi' + dbo.fn_SQLIntValueForString (TehlikeSinifi, 1) +')'+char (13) + char (10) + 
    'insert into dbo.TehlikeSiniflari (TehlikeSinifi, Tanimi, RiskDegerlendirmePeryot, MuayenePeryot)'+char (13) + char (10) + 
    'Select '+ dbo.fn_SQLIntValueForString (TehlikeSinifi, 0) +', ' + 
    dbo.fn_SQLStrValueForString (Tanimi, 0) +', ' + 
    dbo.fn_SQLIntValueForString (RiskDegerlendirmePeryot, 0) +', ' + 
    dbo.fn_SQLIntValueForString (MuayenePeryot, 0)
  from inserted i
  where not exists (select 1 from deleted d where d.TehlikeSinifi = i.TehlikeSinifi)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select @TableName, @KeyFields, dbo.fn_SQLIntValueForString (i.TehlikeSinifi, 0), 'U', 0,
    'Update TehlikeSiniflari'+char (13) + char (10) +'  SET '+char (13) + char (10) + '    ' +
    REVERSE (SUBSTRING (REvERSE (case when dbo.fn_SQLStrValueForString (d.Tanimi, 0) <> dbo.fn_SQLStrValueForString (i.Tanimi, 0) then 'Tanimi = ' + dbo.fn_SQLStrValueForString (i.Tanimi, 0) + ',' else '' end +
    case when dbo.fn_SQLIntValueForString (d.RiskDegerlendirmePeryot, 0) <> dbo.fn_SQLIntValueForString (i.RiskDegerlendirmePeryot, 0) then 'RiskDegerlendirmePeryot = ' + dbo.fn_SQLIntValueForString (i.RiskDegerlendirmePeryot, 0) + ',' else '' end +
    case when dbo.fn_SQLIntValueForString (d.MuayenePeryot, 0) <> dbo.fn_SQLIntValueForString (i.MuayenePeryot, 0) then 'MuayenePeryot = ' + dbo.fn_SQLIntValueForString (i.MuayenePeryot, 0) + ',' else '' end), 2, 8000)) +
    char (13) + char (10) + 'WHERE TehlikeSinifi' + dbo.fn_SQLIntValueForString (i.TehlikeSinifi, 1) 
  from inserted i
  inner join deleted d on d.TehlikeSinifi = i.TehlikeSinifi
  inner join 
    (SELECT TehlikeSinifi
     FROM
     (select TehlikeSinifi, Tanimi, RiskDegerlendirmePeryot, MuayenePeryot
      from
      (select -1 x, TehlikeSinifi, Tanimi, RiskDegerlendirmePeryot, MuayenePeryot
       from deleted
       union all
       select 1 x, TehlikeSinifi, Tanimi, RiskDegerlendirmePeryot, MuayenePeryot
       from inserted) U
      group by TehlikeSinifi, Tanimi, RiskDegerlendirmePeryot, MuayenePeryot
      having sum (x) <> 0)w
     group by TehlikeSinifi) u on u.TehlikeSinifi = i.TehlikeSinifi
  set nocount off
END
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'TehlikeSiniflari_TakipTrg'
GO
COMMIT
GO
