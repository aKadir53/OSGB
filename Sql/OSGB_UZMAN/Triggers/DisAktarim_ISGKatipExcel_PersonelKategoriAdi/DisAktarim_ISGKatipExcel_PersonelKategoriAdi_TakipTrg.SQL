BEGIN TRAN
GO
ALTER -- create -- drop
 TRIGGER [dbo].[DisAktarim_ISGKatipExcel_PersonelKategoriAdi_TakipTrg]
   ON  [dbo].[DisAktarim_ISGKatipExcel_PersonelKategoriAdi]
   AFTER DELETE,INSERT, UPDATE
AS 
BEGIN
  set nocount on
  declare 
    @TableName varchar (200) = 'DisAktarim_ISGKatipExcel_PersonelKategoriAdi',
    @KeyFields varchar (200) = 'PersonelKategoriAdi'

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLStrValueForString (PersonelKategoriAdi, 0), 'D', 0,
    'DELETE FROM dbo.DisAktarim_ISGKatipExcel_PersonelKategoriAdi where PersonelKategoriAdi' + dbo.fn_SQLStrValueForString (PersonelKategoriAdi, 1) 
  from deleted d
  where not exists (select 1 from inserted i where d.PersonelKategoriAdi = i.PersonelKategoriAdi)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLStrValueForString (PersonelKategoriAdi, 0), 'I', 0,
    'IF NOT EXISTS (SELECT 1 from dbo.DisAktarim_ISGKatipExcel_PersonelKategoriAdi where PersonelKategoriAdi' + dbo.fn_SQLStrValueForString (PersonelKategoriAdi, 1) +')'+char (13) + char (10) + 
    'insert into dbo.DisAktarim_ISGKatipExcel_PersonelKategoriAdi (PersonelKategoriAdi, KategoriSinifi, UserGroup, UserPrefix)'+char (13) + char (10) + 
    'Select '+ dbo.fn_SQLStrValueForString (PersonelKategoriAdi, 0) +', ' + 
    dbo.fn_SQLIntValueForString (KategoriSinifi, 0) +', ' + 
    dbo.fn_SQLIntValueForString (UserGroup, 0) +', ' + 
    dbo.fn_SQLStrValueForString (UserPrefix, 0)
  from inserted i
  where not exists (select 1 from deleted d where d.PersonelKategoriAdi = i.PersonelKategoriAdi)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select @TableName, @KeyFields, dbo.fn_SQLStrValueForString (i.PersonelKategoriAdi, 0), 'U', 0,
    'Update DisAktarim_ISGKatipExcel_PersonelKategoriAdi'+char (13) + char (10) +'  SET '+char (13) + char (10) + '    ' +
    REVERSE (SUBSTRING (REvERSE (case when dbo.fn_SQLIntValueForString (d.KategoriSinifi, 0) <> dbo.fn_SQLIntValueForString (i.KategoriSinifi, 0) then 'KategoriSinifi = ' + dbo.fn_SQLIntValueForString (i.KategoriSinifi, 0) + ',' else '' end +
    case when dbo.fn_SQLIntValueForString (d.UserGroup, 0) <> dbo.fn_SQLIntValueForString (i.UserGroup, 0) then 'UserGroup = ' + dbo.fn_SQLIntValueForString (i.UserGroup, 0) + ',' else '' end +
    case when dbo.fn_SQLStrValueForString (d.UserPrefix, 0) <> dbo.fn_SQLStrValueForString (i.UserPrefix, 0) then 'UserPrefix = ' + dbo.fn_SQLStrValueForString (i.UserPrefix, 0) + ',' else '' end), 2, 8000)) +
    char (13) + char (10) + 'WHERE PersonelKategoriAdi' + dbo.fn_SQLStrValueForString (i.PersonelKategoriAdi, 1) 
  from inserted i
  inner join deleted d on d.PersonelKategoriAdi = i.PersonelKategoriAdi
  inner join 
    (SELECT PersonelKategoriAdi
     FROM
     (select PersonelKategoriAdi, KategoriSinifi, UserGroup, UserPrefix
      from
      (select -1 x, PersonelKategoriAdi, KategoriSinifi, UserGroup, UserPrefix
       from deleted
       union all
       select 1 x, PersonelKategoriAdi, KategoriSinifi, UserGroup, UserPrefix
       from inserted) U
      group by PersonelKategoriAdi, KategoriSinifi, UserGroup, UserPrefix
      having sum (x) <> 0)w
     group by PersonelKategoriAdi) u on u.PersonelKategoriAdi = i.PersonelKategoriAdi
  set nocount off
END
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'DisAktarim_ISGKatipExcel_PersonelKategoriAdi_TakipTrg'
GO
COMMIT
GO
