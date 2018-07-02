BEGIN TRAN
GO
ALTER -- create -- drop
 TRIGGER [dbo].[Asilar_TakipTrg]
   ON  [dbo].[Asilar]
   AFTER DELETE,INSERT, UPDATE
AS 
BEGIN
  set nocount on
  declare 
    @TableName varchar (200) = 'Asilar',
    @KeyFields varchar (200) = 'asiKodu'

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLStrValueForString (asiKodu, 0), 'D', 0,
    'DELETE FROM dbo.Asilar where asiKodu' + dbo.fn_SQLStrValueForString (asiKodu, 1) 
  from deleted d
  where not exists (select 1 from inserted i where d.asiKodu = i.asiKodu)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLStrValueForString (asiKodu, 0), 'I', 0,
    'IF NOT EXISTS (SELECT 1 from dbo.Asilar where asiKodu' + dbo.fn_SQLStrValueForString (asiKodu, 1) +')'+char (13) + char (10) + 
    'insert into dbo.Asilar (asiKodu, asiAdi)'+char (13) + char (10) + 
    'Select '+ dbo.fn_SQLStrValueForString (asiKodu, 0) +', ' + 
    dbo.fn_SQLStrValueForString (asiAdi, 0)
  from inserted i
  where not exists (select 1 from deleted d where d.asiKodu = i.asiKodu)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select @TableName, @KeyFields, dbo.fn_SQLStrValueForString (i.asiKodu, 0), 'U', 0,
    'Update Asilar'+char (13) + char (10) +'  SET '+char (13) + char (10) + '    ' +
    REVERSE (SUBSTRING (REvERSE (case when dbo.fn_SQLStrValueForString (d.asiAdi, 0) <> dbo.fn_SQLStrValueForString (i.asiAdi, 0) then 'asiAdi = ' + dbo.fn_SQLStrValueForString (i.asiAdi, 0) + ',' else '' end), 2, 8000)) +
    char (13) + char (10) + 'WHERE asiKodu' + dbo.fn_SQLStrValueForString (i.asiKodu, 1) 
  from inserted i
  inner join deleted d on d.asiKodu = i.asiKodu
  inner join 
    (SELECT asiKodu
     FROM
     (select asiKodu, asiAdi
      from
      (select -1 x, asiKodu, asiAdi
       from deleted
       union all
       select 1 x, asiKodu, asiAdi
       from inserted) U
      group by asiKodu, asiAdi
      having sum (x) <> 0)w
     group by asiKodu) u on u.asiKodu = i.asiKodu
  set nocount off
END
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'Asilar_TakipTrg'
GO
COMMIT
GO
