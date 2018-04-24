BEGIN TRAN
GO
ALTER -- create -- drop
 TRIGGER [dbo].[Parametreler_TakipTrg]
   ON  [dbo].[Parametreler]
   AFTER DELETE,INSERT, UPDATE
AS 
BEGIN
  set nocount on
  declare 
    @TableName varchar (200) = 'Parametreler',
    @KeyFields varchar (200) = 'SLK,SLB,SLT'

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLStrValueForString (SLK, 0) + ',' + dbo.fn_SQLStrValueForString (SLB, 0) + ',' + dbo.fn_SQLStrValueForString (SLT, 0), 'D', 0,
    'DELETE FROM dbo.Parametreler where SLK' + dbo.fn_SQLStrValueForString (SLK, 1) + ' and SLB' + dbo.fn_SQLStrValueForString (SLB, 1) + ' and SLT' + dbo.fn_SQLStrValueForString (SLT, 1) 
  from deleted d
  where not exists (select 1 from inserted i where d.SLK = i.SLK and d.SLB = i.SLB and d.SLT = i.SLT)
    and not (SLK = 'GT' and SLB = '0000')

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLStrValueForString (SLK, 0) + ',' + dbo.fn_SQLStrValueForString (SLB, 0) + ',' + dbo.fn_SQLStrValueForString (SLT, 0), 'I', 0,
    'IF NOT EXISTS (SELECT 1 from dbo.Parametreler where SLK' + dbo.fn_SQLStrValueForString (SLK, 1) + ' and SLB' + dbo.fn_SQLStrValueForString (SLB, 1) + ' and SLT' + dbo.fn_SQLStrValueForString (SLT, 1) +')'+char (13) + char (10) + 
    'insert into dbo.Parametreler (SLK, SLB, SLT)'+char (13) + char (10) + 
    'Select '+ dbo.fn_SQLStrValueForString (SLK, 0) +', ' + 
    dbo.fn_SQLStrValueForString (SLB, 0) +', ' + 
    dbo.fn_SQLStrValueForString (SLT, 0)
  from inserted i
  where not exists (select 1 from deleted d where d.SLK = i.SLK and d.SLB = i.SLB and d.SLT = i.SLT)
    and not (SLK = 'GT' and SLB = '0000')

  set nocount off
END
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'Parametreler_TakipTrg'
GO
COMMIT
GO
