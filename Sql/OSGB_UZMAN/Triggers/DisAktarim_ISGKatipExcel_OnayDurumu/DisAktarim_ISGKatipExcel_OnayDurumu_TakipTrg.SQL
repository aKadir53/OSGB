BEGIN TRAN
GO
ALTER -- create -- drop
 TRIGGER [dbo].[DisAktarim_ISGKatipExcel_OnayDurumu_TakipTrg]
   ON  [dbo].[DisAktarim_ISGKatipExcel_OnayDurumu]
   AFTER DELETE,INSERT, UPDATE
AS 
BEGIN
  set nocount on
  declare 
    @TableName varchar (200) = 'DisAktarim_ISGKatipExcel_OnayDurumu',
    @KeyFields varchar (200) = 'OnayDurumu'

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLStrValueForString (OnayDurumu, 0), 'D', 0,
    'DELETE FROM dbo.DisAktarim_ISGKatipExcel_OnayDurumu where OnayDurumu' + dbo.fn_SQLStrValueForString (OnayDurumu, 1) 
  from deleted d
  where not exists (select 1 from inserted i where d.OnayDurumu = i.OnayDurumu)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLStrValueForString (OnayDurumu, 0), 'I', 0,
    'IF NOT EXISTS (SELECT 1 from dbo.DisAktarim_ISGKatipExcel_OnayDurumu where OnayDurumu' + dbo.fn_SQLStrValueForString (OnayDurumu, 1) +')'+char (13) + char (10) + 
    'insert into dbo.DisAktarim_ISGKatipExcel_OnayDurumu (OnayDurumu, OnayDurumuSinifi)'+char (13) + char (10) + 
    'Select '+ dbo.fn_SQLStrValueForString (OnayDurumu, 0) +', ' + 
    dbo.fn_SQLIntValueForString (OnayDurumuSinifi, 0)
  from inserted i
  where not exists (select 1 from deleted d where d.OnayDurumu = i.OnayDurumu)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select @TableName, @KeyFields, dbo.fn_SQLStrValueForString (i.OnayDurumu, 0), 'U', 0,
    'Update DisAktarim_ISGKatipExcel_OnayDurumu'+char (13) + char (10) +'  SET '+char (13) + char (10) + '    ' +
    REVERSE (SUBSTRING (REvERSE (case when dbo.fn_SQLIntValueForString (d.OnayDurumuSinifi, 0) <> dbo.fn_SQLIntValueForString (i.OnayDurumuSinifi, 0) then 'OnayDurumuSinifi = ' + dbo.fn_SQLIntValueForString (i.OnayDurumuSinifi, 0) + ',' else '' end), 2, 8000)) +
    char (13) + char (10) + 'WHERE OnayDurumu' + dbo.fn_SQLStrValueForString (i.OnayDurumu, 1) 
  from inserted i
  inner join deleted d on d.OnayDurumu = i.OnayDurumu
  inner join 
    (SELECT OnayDurumu
     FROM
     (select OnayDurumu, OnayDurumuSinifi
      from
      (select -1 x, OnayDurumu, OnayDurumuSinifi
       from deleted
       union all
       select 1 x, OnayDurumu, OnayDurumuSinifi
       from inserted) U
      group by OnayDurumu, OnayDurumuSinifi
      having sum (x) <> 0)w
     group by OnayDurumu) u on u.OnayDurumu = i.OnayDurumu
  set nocount off
END
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'DisAktarim_ISGKatipExcel_OnayDurumu_TakipTrg'
GO
COMMIT
GO
