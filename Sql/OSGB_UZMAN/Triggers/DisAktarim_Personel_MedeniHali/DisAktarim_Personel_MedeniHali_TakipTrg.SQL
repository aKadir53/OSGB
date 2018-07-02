BEGIN TRAN
GO
ALTER -- create -- drop
 TRIGGER [dbo].[DisAktarim_Personel_MedeniHali_TakipTrg]
   ON  [dbo].[DisAktarim_Personel_MedeniHali]
   AFTER DELETE,INSERT, UPDATE
AS 
BEGIN
  set nocount on
  declare 
    @TableName varchar (200) = 'DisAktarim_Personel_MedeniHali',
    @KeyFields varchar (200) = 'MedeniHali'

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLStrValueForString (MedeniHali, 0), 'D', 0,
    'DELETE FROM dbo.DisAktarim_Personel_MedeniHali where MedeniHali' + dbo.fn_SQLStrValueForString (MedeniHali, 1) 
  from deleted d
  where not exists (select 1 from inserted i where d.MedeniHali = i.MedeniHali)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLStrValueForString (MedeniHali, 0), 'I', 0,
    'IF NOT EXISTS (SELECT 1 from dbo.DisAktarim_Personel_MedeniHali where MedeniHali' + dbo.fn_SQLStrValueForString (MedeniHali, 1) +')'+char (13) + char (10) + 
    'insert into dbo.DisAktarim_Personel_MedeniHali (MedeniHali, MedeniHaliSinifi)'+char (13) + char (10) + 
    'Select '+ dbo.fn_SQLStrValueForString (MedeniHali, 0) +', ' + 
    dbo.fn_SQLIntValueForString (MedeniHaliSinifi, 0)
  from inserted i
  where not exists (select 1 from deleted d where d.MedeniHali = i.MedeniHali)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select @TableName, @KeyFields, dbo.fn_SQLStrValueForString (i.MedeniHali, 0), 'U', 0,
    'Update DisAktarim_Personel_MedeniHali'+char (13) + char (10) +'  SET '+char (13) + char (10) + '    ' +
    REVERSE (SUBSTRING (REvERSE (case when dbo.fn_SQLIntValueForString (d.MedeniHaliSinifi, 0) <> dbo.fn_SQLIntValueForString (i.MedeniHaliSinifi, 0) then 'MedeniHaliSinifi = ' + dbo.fn_SQLIntValueForString (i.MedeniHaliSinifi, 0) + ',' else '' end), 2, 8000)) +
    char (13) + char (10) + 'WHERE MedeniHali' + dbo.fn_SQLStrValueForString (i.MedeniHali, 1) 
  from inserted i
  inner join deleted d on d.MedeniHali = i.MedeniHali
  inner join 
    (SELECT MedeniHali
     FROM
     (select MedeniHali, MedeniHaliSinifi
      from
      (select -1 x, MedeniHali, MedeniHaliSinifi
       from deleted
       union all
       select 1 x, MedeniHali, MedeniHaliSinifi
       from inserted) U
      group by MedeniHali, MedeniHaliSinifi
      having sum (x) <> 0)w
     group by MedeniHali) u on u.MedeniHali = i.MedeniHali
  set nocount off
END
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'DisAktarim_Personel_MedeniHali_TakipTrg'
GO
COMMIT
GO
