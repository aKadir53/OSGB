BEGIN TRAN
GO
ALTER -- create -- drop
 TRIGGER [dbo].[DisAktarim_Personel_KanGrubu_TakipTrg]
   ON  [dbo].[DisAktarim_Personel_KanGrubu]
   AFTER DELETE,INSERT, UPDATE
AS 
BEGIN
  set nocount on
  declare 
    @TableName varchar (200) = 'DisAktarim_Personel_KanGrubu',
    @KeyFields varchar (200) = 'KanGrubu'

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLStrValueForString (KanGrubu, 0), 'D', 0,
    'DELETE FROM dbo.DisAktarim_Personel_KanGrubu where KanGrubu' + dbo.fn_SQLStrValueForString (KanGrubu, 1) 
  from deleted d
  where not exists (select 1 from inserted i where d.KanGrubu = i.KanGrubu)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLStrValueForString (KanGrubu, 0), 'I', 0,
    'IF NOT EXISTS (SELECT 1 from dbo.DisAktarim_Personel_KanGrubu where KanGrubu' + dbo.fn_SQLStrValueForString (KanGrubu, 1) +')'+char (13) + char (10) + 
    'insert into dbo.DisAktarim_Personel_KanGrubu (KanGrubu, KanGrubuSinifi)'+char (13) + char (10) + 
    'Select '+ dbo.fn_SQLStrValueForString (KanGrubu, 0) +', ' + 
    dbo.fn_SQLIntValueForString (KanGrubuSinifi, 0)
  from inserted i
  where not exists (select 1 from deleted d where d.KanGrubu = i.KanGrubu)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select @TableName, @KeyFields, dbo.fn_SQLStrValueForString (i.KanGrubu, 0), 'U', 0,
    'Update DisAktarim_Personel_KanGrubu'+char (13) + char (10) +'  SET '+char (13) + char (10) + '    ' +
    REVERSE (SUBSTRING (REvERSE (case when dbo.fn_SQLIntValueForString (d.KanGrubuSinifi, 0) <> dbo.fn_SQLIntValueForString (i.KanGrubuSinifi, 0) then 'KanGrubuSinifi = ' + dbo.fn_SQLIntValueForString (i.KanGrubuSinifi, 0) + ',' else '' end), 2, 8000)) +
    char (13) + char (10) + 'WHERE KanGrubu' + dbo.fn_SQLStrValueForString (i.KanGrubu, 1) 
  from inserted i
  inner join deleted d on d.KanGrubu = i.KanGrubu
  inner join 
    (SELECT KanGrubu
     FROM
     (select KanGrubu, KanGrubuSinifi
      from
      (select -1 x, KanGrubu, KanGrubuSinifi
       from deleted
       union all
       select 1 x, KanGrubu, KanGrubuSinifi
       from inserted) U
      group by KanGrubu, KanGrubuSinifi
      having sum (x) <> 0)w
     group by KanGrubu) u on u.KanGrubu = i.KanGrubu
  set nocount off
END
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'DisAktarim_Personel_KanGrubu_TakipTrg'
GO
COMMIT
GO
