BEGIN TRAN
GO
ALTER -- create -- drop
 TRIGGER [dbo].[DisAktarim_ISGKatipExcel_CalismaDurumu_TakipTrg]
   ON  [dbo].[DisAktarim_ISGKatipExcel_CalismaDurumu]
   AFTER DELETE,INSERT, UPDATE
AS 
BEGIN
  set nocount on
  declare 
    @TableName varchar (200) = 'DisAktarim_ISGKatipExcel_CalismaDurumu',
    @KeyFields varchar (200) = 'CalismaDurumu'

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLStrValueForString (CalismaDurumu, 0), 'D', 0,
    'DELETE FROM dbo.DisAktarim_ISGKatipExcel_CalismaDurumu where CalismaDurumu' + dbo.fn_SQLStrValueForString (CalismaDurumu, 1) 
  from deleted d
  where not exists (select 1 from inserted i where d.CalismaDurumu = i.CalismaDurumu)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLStrValueForString (CalismaDurumu, 0), 'I', 0,
    'IF NOT EXISTS (SELECT 1 from dbo.DisAktarim_ISGKatipExcel_CalismaDurumu where CalismaDurumu' + dbo.fn_SQLStrValueForString (CalismaDurumu, 1) +')'+char (13) + char (10) + 
    'insert into dbo.DisAktarim_ISGKatipExcel_CalismaDurumu (CalismaDurumu, CalismaDurumuSinifi)'+char (13) + char (10) + 
    'Select '+ dbo.fn_SQLStrValueForString (CalismaDurumu, 0) +', ' + 
    dbo.fn_SQLIntValueForString (CalismaDurumuSinifi, 0)
  from inserted i
  where not exists (select 1 from deleted d where d.CalismaDurumu = i.CalismaDurumu)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select @TableName, @KeyFields, dbo.fn_SQLStrValueForString (i.CalismaDurumu, 0), 'U', 0,
    'Update DisAktarim_ISGKatipExcel_CalismaDurumu'+char (13) + char (10) +'  SET '+char (13) + char (10) + '    ' +
    REVERSE (SUBSTRING (REvERSE (case when dbo.fn_SQLIntValueForString (d.CalismaDurumuSinifi, 0) <> dbo.fn_SQLIntValueForString (i.CalismaDurumuSinifi, 0) then 'CalismaDurumuSinifi = ' + dbo.fn_SQLIntValueForString (i.CalismaDurumuSinifi, 0) + ',' else '' end), 2, 8000)) +
    char (13) + char (10) + 'WHERE CalismaDurumu' + dbo.fn_SQLStrValueForString (i.CalismaDurumu, 1) 
  from inserted i
  inner join deleted d on d.CalismaDurumu = i.CalismaDurumu
  inner join 
    (SELECT CalismaDurumu
     FROM
     (select CalismaDurumu, CalismaDurumuSinifi
      from
      (select -1 x, CalismaDurumu, CalismaDurumuSinifi
       from deleted
       union all
       select 1 x, CalismaDurumu, CalismaDurumuSinifi
       from inserted) U
      group by CalismaDurumu, CalismaDurumuSinifi
      having sum (x) <> 0)w
     group by CalismaDurumu) u on u.CalismaDurumu = i.CalismaDurumu
  set nocount off
END
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'DisAktarim_ISGKatipExcel_CalismaDurumu_TakipTrg'
GO
COMMIT
GO
