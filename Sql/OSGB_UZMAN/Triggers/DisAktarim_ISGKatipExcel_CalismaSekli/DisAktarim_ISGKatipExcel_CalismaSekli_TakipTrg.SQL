BEGIN TRAN
GO
ALTER -- create -- drop
 TRIGGER [dbo].[DisAktarim_ISGKatipExcel_CalismaSekli_TakipTrg]
   ON  [dbo].[DisAktarim_ISGKatipExcel_CalismaSekli]
   AFTER DELETE,INSERT, UPDATE
AS 
BEGIN
  set nocount on
  declare 
    @TableName varchar (200) = 'DisAktarim_ISGKatipExcel_CalismaSekli',
    @KeyFields varchar (200) = 'CalismaSekli'

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLStrValueForString (CalismaSekli, 0), 'D', 0,
    'DELETE FROM dbo.DisAktarim_ISGKatipExcel_CalismaSekli where CalismaSekli' + dbo.fn_SQLStrValueForString (CalismaSekli, 1) 
  from deleted d
  where not exists (select 1 from inserted i where d.CalismaSekli = i.CalismaSekli)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLStrValueForString (CalismaSekli, 0), 'I', 0,
    'IF NOT EXISTS (SELECT 1 from dbo.DisAktarim_ISGKatipExcel_CalismaSekli where CalismaSekli' + dbo.fn_SQLStrValueForString (CalismaSekli, 1) +')'+char (13) + char (10) + 
    'insert into dbo.DisAktarim_ISGKatipExcel_CalismaSekli (CalismaSekli, CalismaSekliSinifi)'+char (13) + char (10) + 
    'Select '+ dbo.fn_SQLStrValueForString (CalismaSekli, 0) +', ' + 
    dbo.fn_SQLIntValueForString (CalismaSekliSinifi, 0)
  from inserted i
  where not exists (select 1 from deleted d where d.CalismaSekli = i.CalismaSekli)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select @TableName, @KeyFields, dbo.fn_SQLStrValueForString (i.CalismaSekli, 0), 'U', 0,
    'Update DisAktarim_ISGKatipExcel_CalismaSekli'+char (13) + char (10) +'  SET '+char (13) + char (10) + '    ' +
    REVERSE (SUBSTRING (REvERSE (case when dbo.fn_SQLIntValueForString (d.CalismaSekliSinifi, 0) <> dbo.fn_SQLIntValueForString (i.CalismaSekliSinifi, 0) then 'CalismaSekliSinifi = ' + dbo.fn_SQLIntValueForString (i.CalismaSekliSinifi, 0) + ',' else '' end), 2, 8000)) +
    char (13) + char (10) + 'WHERE CalismaSekli' + dbo.fn_SQLStrValueForString (i.CalismaSekli, 1) 
  from inserted i
  inner join deleted d on d.CalismaSekli = i.CalismaSekli
  inner join 
    (SELECT CalismaSekli
     FROM
     (select CalismaSekli, CalismaSekliSinifi
      from
      (select -1 x, CalismaSekli, CalismaSekliSinifi
       from deleted
       union all
       select 1 x, CalismaSekli, CalismaSekliSinifi
       from inserted) U
      group by CalismaSekli, CalismaSekliSinifi
      having sum (x) <> 0)w
     group by CalismaSekli) u on u.CalismaSekli = i.CalismaSekli
  set nocount off
END
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'DisAktarim_ISGKatipExcel_CalismaSekli_TakipTrg'
GO
COMMIT
GO
