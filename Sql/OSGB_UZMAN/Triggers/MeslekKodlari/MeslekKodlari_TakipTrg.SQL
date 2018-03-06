begin tran
go
ALTER -- create -- drop
 TRIGGER [dbo].[MeslekKodlari_TakipTrg]
   ON  [dbo].[MeslekKodlari]
   AFTER DELETE,INSERT, UPDATE
AS 
BEGIN
  set nocount on
  declare 
    @TableName varchar (200) = 'MeslekKodlari',
    @KeyFields varchar (200) = 'kod'

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLStrValueForString (kod, 0), 'D', 0,
    'DELETE FROM dbo.MeslekKodlari where kod' + dbo.fn_SQLStrValueForString (kod, 1) 
  from deleted d
  where not exists (select 1 from inserted i where ISNULL (d.kod, '') = ISNULL (i.kod, ''))

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLStrValueForString (kod, 0), 'I', 0,
    'IF NOT EXISTS (SELECT 1 from dbo.MeslekKodlari where kod' + dbo.fn_SQLStrValueForString (kod, 1) +')'+char (13) + char (10) + 
    'insert into dbo.MeslekKodlari (kod, tanimi)'+char (13) + char (10) + 
    'Select '+ dbo.fn_SQLStrValueForString (kod, 0) +', ' + 
    dbo.fn_SQLStrValueForString (tanimi, 0)
  from inserted i
  where not exists (select 1 from deleted d where ISNULL (d.kod, '') = ISNULL (i.kod, ''))

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select @TableName, @KeyFields, dbo.fn_SQLStrValueForString (i.kod, 0), 'U', 0,
    'Update MeslekKodlari'+char (13) + char (10) +'  SET '+char (13) + char (10) + '    ' +
    REVERSE (SUBSTRING (REvERSE (case when dbo.fn_SQLStrValueForString (d.tanimi, 0) <> dbo.fn_SQLStrValueForString (i.tanimi, 0) then 'tanimi = ' + dbo.fn_SQLStrValueForString (i.tanimi, 0) + ',' else '' end), 2, 8000)) +
    char (13) + char (10) + 'WHERE kod' + dbo.fn_SQLStrValueForString (i.kod, 1) 
  from inserted i
  inner join deleted d on ISNULL (d.kod, '') = ISNULL (i.kod, '')
  inner join 
    (SELECT kod
     FROM
     (select kod, tanimi
      from
      (select -1 x, kod, tanimi
       from deleted
       union all
       select 1 x, kod, tanimi
       from inserted) U
      group by kod, tanimi
      having sum (x) <> 0)w
     group by kod) u on ISNULL (u.kod, '') = ISNULL (i.kod, '')
  set nocount off
END
go
exec sp_vw_sys_upd 'TR', 'dbo', 'MeslekKodlari_TakipTrg'
go
commit
go
