BEGIN TRAN
GO
ALTER -- create -- drop
 TRIGGER [dbo].[WebServisErisimBilgileri_TakipTrg]
   ON  [dbo].[WebServisErisimBilgileri]
   AFTER DELETE,INSERT, UPDATE
AS 
BEGIN
  set nocount on
  declare 
    @TableName varchar (200) = 'WebServisErisimBilgileri',
    @KeyFields varchar (200) = 'SLK,SLB'

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLStrValueForString (SLK, 0) + ',' + dbo.fn_SQLStrValueForString (SLB, 0), 'D', 0,
    'DELETE FROM dbo.WebServisErisimBilgileri where SLK' + dbo.fn_SQLStrValueForString (SLK, 1) + ' and SLB' + dbo.fn_SQLStrValueForString (SLB, 1) 
  from deleted d
  where not exists (select 1 from inserted i where d.SLK = i.SLK and ISNULL (d.SLB, '') = ISNULL (i.SLB, ''))

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLStrValueForString (SLK, 0) + ',' + dbo.fn_SQLStrValueForString (SLB, 0), 'I', 0,
    'IF NOT EXISTS (SELECT 1 from dbo.WebServisErisimBilgileri where SLK' + dbo.fn_SQLStrValueForString (SLK, 1) + ' and SLB' + dbo.fn_SQLStrValueForString (SLB, 1) +')'+char (13) + char (10) + 
    'insert into dbo.WebServisErisimBilgileri (SLK, Sira, Erisim_Tanimi, SLB, SLB_Tanimi, Value, ValueTip, ValueObje, ValueObjeValues)'+char (13) + char (10) + 
    'Select '+ dbo.fn_SQLStrValueForString (SLK, 0) +', ' + 
    dbo.fn_SQLIntValueForString (Sira, 0) +', ' + 
    dbo.fn_SQLStrValueForString (Erisim_Tanimi, 0) +', ' + 
    dbo.fn_SQLStrValueForString (SLB, 0) +', ' + 
    dbo.fn_SQLStrValueForString (SLB_Tanimi, 0) +', ' + 
    dbo.fn_SQLStrValueForString (Value, 0) +', ' + 
    dbo.fn_SQLStrValueForString (ValueTip, 0) +', ' + 
    dbo.fn_SQLStrValueForString (ValueObje, 0) +', ' + 
    dbo.fn_SQLStrValueForString (ValueObjeValues, 0)
  from inserted i
  where not exists (select 1 from deleted d where d.SLK = i.SLK and ISNULL (d.SLB, '') = ISNULL (i.SLB, ''))

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select @TableName, @KeyFields, dbo.fn_SQLStrValueForString (i.SLK, 0) + ',' + dbo.fn_SQLStrValueForString (i.SLB, 0), 'U', 0,
    'Update WebServisErisimBilgileri'+char (13) + char (10) +'  SET '+char (13) + char (10) + '    ' +
    REVERSE (SUBSTRING (REvERSE (case when dbo.fn_SQLIntValueForString (d.Sira, 0) <> dbo.fn_SQLIntValueForString (i.Sira, 0) then 'Sira = ' + dbo.fn_SQLIntValueForString (i.Sira, 0) + ',' else '' end +
    case when dbo.fn_SQLStrValueForString (d.Erisim_Tanimi, 0) <> dbo.fn_SQLStrValueForString (i.Erisim_Tanimi, 0) then 'Erisim_Tanimi = ' + dbo.fn_SQLStrValueForString (i.Erisim_Tanimi, 0) + ',' else '' end +
    case when dbo.fn_SQLStrValueForString (d.SLB_Tanimi, 0) <> dbo.fn_SQLStrValueForString (i.SLB_Tanimi, 0) then 'SLB_Tanimi = ' + dbo.fn_SQLStrValueForString (i.SLB_Tanimi, 0) + ',' else '' end +
    case when dbo.fn_SQLStrValueForString (d.ValueTip, 0) <> dbo.fn_SQLStrValueForString (i.ValueTip, 0) then 'ValueTip = ' + dbo.fn_SQLStrValueForString (i.ValueTip, 0) + ',' else '' end +
    case when dbo.fn_SQLStrValueForString (d.ValueObje, 0) <> dbo.fn_SQLStrValueForString (i.ValueObje, 0) then 'ValueObje = ' + dbo.fn_SQLStrValueForString (i.ValueObje, 0) + ',' else '' end +
    case when dbo.fn_SQLStrValueForString (d.ValueObjeValues, 0) <> dbo.fn_SQLStrValueForString (i.ValueObjeValues, 0) then 'ValueObjeValues = ' + dbo.fn_SQLStrValueForString (i.ValueObjeValues, 0) + ',' else '' end), 2, 8000)) +
    char (13) + char (10) + 'WHERE SLK' + dbo.fn_SQLStrValueForString (i.SLK, 1) + ' and SLB' + dbo.fn_SQLStrValueForString (i.SLB, 1) 
  from inserted i
  inner join deleted d on d.SLK = i.SLK and ISNULL (d.SLB, '') = ISNULL (i.SLB, '')
  inner join 
    (SELECT SLK,SLB
     FROM
     (select SLK, Sira, Erisim_Tanimi, SLB, SLB_Tanimi, ValueTip, ValueObje, ValueObjeValues
      from
      (select -1 x, SLK, Sira, Erisim_Tanimi, SLB, SLB_Tanimi, ValueTip, ValueObje, ValueObjeValues
       from deleted
       union all
       select 1 x, SLK, Sira, Erisim_Tanimi, SLB, SLB_Tanimi, ValueTip, ValueObje, ValueObjeValues
       from inserted) U
      group by SLK, Sira, Erisim_Tanimi, SLB, SLB_Tanimi, ValueTip, ValueObje, ValueObjeValues
      having sum (x) <> 0)w
     group by SLK,SLB) u on u.SLK = i.SLK and ISNULL (u.SLB, '') = ISNULL (i.SLB, '')
  set nocount off
END
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'WebServisErisimBilgileri_TakipTrg'
GO
COMMIT
GO
