BEGIN TRAN
GO
ALTER -- create -- drop
 TRIGGER [dbo].[Sikayet_Bulgular_TakipTrg]
   ON  [dbo].[Sikayet_Bulgular]
   AFTER DELETE,INSERT, UPDATE
AS 
BEGIN
  set nocount on
  declare 
    @TableName varchar (200) = 'Sikayet_Bulgular',
    @KeyFields varchar (200) = 'modul,ifade'

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLStrValueForString (modul, 0) + ',' + dbo.fn_SQLStrValueForString (ifade, 0), 'D', 0,
    'DELETE FROM dbo.Sikayet_Bulgular where modul' + dbo.fn_SQLStrValueForString (modul, 1) + ' and ifade' + dbo.fn_SQLStrValueForString (ifade, 1) 
  from deleted d
  where not exists (select 1 from inserted i where ISNULL (d.modul, '') = ISNULL (i.modul, '') and ISNULL (d.ifade, '') = ISNULL (i.ifade, ''))

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLStrValueForString (modul, 0) + ',' + dbo.fn_SQLStrValueForString (ifade, 0), 'I', 0,
    'IF NOT EXISTS (SELECT 1 from dbo.Sikayet_Bulgular where modul' + dbo.fn_SQLStrValueForString (modul, 1) + ' and ifade' + dbo.fn_SQLStrValueForString (ifade, 1) +')'+char (13) + char (10) + 
    'insert into dbo.Sikayet_Bulgular (modul, ifade)'+char (13) + char (10) + 
    'Select '+ dbo.fn_SQLStrValueForString (modul, 0) +', ' + 
    dbo.fn_SQLStrValueForString (ifade, 0)
  from inserted i
  where not exists (select 1 from deleted d where ISNULL (d.modul, '') = ISNULL (i.modul, '') and ISNULL (d.ifade, '') = ISNULL (i.ifade, ''))

  set nocount off
END
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'Sikayet_Bulgular_TakipTrg'
GO
COMMIT
GO
