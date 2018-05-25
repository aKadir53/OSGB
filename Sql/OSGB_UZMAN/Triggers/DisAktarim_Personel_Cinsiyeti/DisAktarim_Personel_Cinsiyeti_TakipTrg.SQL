BEGIN TRAN
GO
ALTER -- create -- drop
 TRIGGER [dbo].[DisAktarim_Personel_Cinsiyeti_TakipTrg]
   ON  [dbo].[DisAktarim_Personel_Cinsiyeti]
   AFTER DELETE,INSERT, UPDATE
AS 
BEGIN
  set nocount on
  declare 
    @TableName varchar (200) = 'DisAktarim_Personel_Cinsiyeti',
    @KeyFields varchar (200) = 'Cinsiyeti'

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLStrValueForString (Cinsiyeti, 0), 'D', 0,
    'DELETE FROM dbo.DisAktarim_Personel_Cinsiyeti where Cinsiyeti' + dbo.fn_SQLStrValueForString (Cinsiyeti, 1) 
  from deleted d
  where not exists (select 1 from inserted i where d.Cinsiyeti = i.Cinsiyeti)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLStrValueForString (Cinsiyeti, 0), 'I', 0,
    'IF NOT EXISTS (SELECT 1 from dbo.DisAktarim_Personel_Cinsiyeti where Cinsiyeti' + dbo.fn_SQLStrValueForString (Cinsiyeti, 1) +')'+char (13) + char (10) + 
    'insert into dbo.DisAktarim_Personel_Cinsiyeti (Cinsiyeti, CinsiyetiSinifi)'+char (13) + char (10) + 
    'Select '+ dbo.fn_SQLStrValueForString (Cinsiyeti, 0) +', ' + 
    dbo.fn_SQLIntValueForString (CinsiyetiSinifi, 0)
  from inserted i
  where not exists (select 1 from deleted d where d.Cinsiyeti = i.Cinsiyeti)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select @TableName, @KeyFields, dbo.fn_SQLStrValueForString (i.Cinsiyeti, 0), 'U', 0,
    'Update DisAktarim_Personel_Cinsiyeti'+char (13) + char (10) +'  SET '+char (13) + char (10) + '    ' +
    REVERSE (SUBSTRING (REvERSE (case when dbo.fn_SQLIntValueForString (d.CinsiyetiSinifi, 0) <> dbo.fn_SQLIntValueForString (i.CinsiyetiSinifi, 0) then 'CinsiyetiSinifi = ' + dbo.fn_SQLIntValueForString (i.CinsiyetiSinifi, 0) + ',' else '' end), 2, 8000)) +
    char (13) + char (10) + 'WHERE Cinsiyeti' + dbo.fn_SQLStrValueForString (i.Cinsiyeti, 1) 
  from inserted i
  inner join deleted d on d.Cinsiyeti = i.Cinsiyeti
  inner join 
    (SELECT Cinsiyeti
     FROM
     (select Cinsiyeti, CinsiyetiSinifi
      from
      (select -1 x, Cinsiyeti, CinsiyetiSinifi
       from deleted
       union all
       select 1 x, Cinsiyeti, CinsiyetiSinifi
       from inserted) U
      group by Cinsiyeti, CinsiyetiSinifi
      having sum (x) <> 0)w
     group by Cinsiyeti) u on u.Cinsiyeti = i.Cinsiyeti
  set nocount off
END
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'DisAktarim_Personel_Cinsiyeti_TakipTrg'
GO
COMMIT
GO
