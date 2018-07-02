BEGIN TRAN
GO
ALTER -- create -- drop
 TRIGGER [dbo].[DisAktarim_ISGKatipExcel_GorevTuru_TakipTrg]
   ON  [dbo].[DisAktarim_ISGKatipExcel_GorevTuru]
   AFTER DELETE,INSERT, UPDATE
AS 
BEGIN
  set nocount on
  declare 
    @TableName varchar (200) = 'DisAktarim_ISGKatipExcel_GorevTuru',
    @KeyFields varchar (200) = 'GorevTuru'

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLStrValueForString (GorevTuru, 0), 'D', 0,
    'DELETE FROM dbo.DisAktarim_ISGKatipExcel_GorevTuru where GorevTuru' + dbo.fn_SQLStrValueForString (GorevTuru, 1) 
  from deleted d
  where not exists (select 1 from inserted i where d.GorevTuru = i.GorevTuru)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLStrValueForString (GorevTuru, 0), 'I', 0,
    'IF NOT EXISTS (SELECT 1 from dbo.DisAktarim_ISGKatipExcel_GorevTuru where GorevTuru' + dbo.fn_SQLStrValueForString (GorevTuru, 1) +')'+char (13) + char (10) + 
    'insert into dbo.DisAktarim_ISGKatipExcel_GorevTuru (GorevTuru, GorevTuruSinifi)'+char (13) + char (10) + 
    'Select '+ dbo.fn_SQLStrValueForString (GorevTuru, 0) +', ' + 
    dbo.fn_SQLIntValueForString (GorevTuruSinifi, 0)
  from inserted i
  where not exists (select 1 from deleted d where d.GorevTuru = i.GorevTuru)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select @TableName, @KeyFields, dbo.fn_SQLStrValueForString (i.GorevTuru, 0), 'U', 0,
    'Update DisAktarim_ISGKatipExcel_GorevTuru'+char (13) + char (10) +'  SET '+char (13) + char (10) + '    ' +
    REVERSE (SUBSTRING (REvERSE (case when dbo.fn_SQLIntValueForString (d.GorevTuruSinifi, 0) <> dbo.fn_SQLIntValueForString (i.GorevTuruSinifi, 0) then 'GorevTuruSinifi = ' + dbo.fn_SQLIntValueForString (i.GorevTuruSinifi, 0) + ',' else '' end), 2, 8000)) +
    char (13) + char (10) + 'WHERE GorevTuru' + dbo.fn_SQLStrValueForString (i.GorevTuru, 1) 
  from inserted i
  inner join deleted d on d.GorevTuru = i.GorevTuru
  inner join 
    (SELECT GorevTuru
     FROM
     (select GorevTuru, GorevTuruSinifi
      from
      (select -1 x, GorevTuru, GorevTuruSinifi
       from deleted
       union all
       select 1 x, GorevTuru, GorevTuruSinifi
       from inserted) U
      group by GorevTuru, GorevTuruSinifi
      having sum (x) <> 0)w
     group by GorevTuru) u on u.GorevTuru = i.GorevTuru
  set nocount off
END
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'DisAktarim_ISGKatipExcel_GorevTuru_TakipTrg'
GO
COMMIT
GO
