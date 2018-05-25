BEGIN TRAN
GO
ALTER -- create -- drop
 TRIGGER [dbo].[EgitimPlanKonulari_TakipTrg]
   ON  [dbo].[EgitimPlanKonulari]
   AFTER DELETE,INSERT, UPDATE
AS 
BEGIN
  set nocount on
  declare 
    @TableName varchar (200) = 'EgitimPlanKonulari',
    @KeyFields varchar (200) = 'kod'

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLIntValueForString (kod, 0), 'D', 0,
    'DELETE FROM dbo.EgitimPlanKonulari where kod' + dbo.fn_SQLIntValueForString (kod, 1) 
  from deleted d
  where not exists (select 1 from inserted i where d.kod = i.kod)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLIntValueForString (kod, 0), 'I', 1,
    'IF NOT EXISTS (SELECT 1 from dbo.EgitimPlanKonulari where kod' + dbo.fn_SQLIntValueForString (kod, 1) +')'+char (13) + char (10) + 
    'insert into dbo.EgitimPlanKonulari (kod, tanimi, konu, Katilacaklar)'+char (13) + char (10) + 
    'Select '+ dbo.fn_SQLIntValueForString (kod, 0) +', ' + 
    dbo.fn_SQLStrValueForString (tanimi, 0) +', ' + 
    dbo.fn_SQLStrValueForString (konu, 0) +', ' + 
    dbo.fn_SQLStrValueForString (Katilacaklar, 0)
  from inserted i
  where not exists (select 1 from deleted d where d.kod = i.kod)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select @TableName, @KeyFields, dbo.fn_SQLIntValueForString (i.kod, 0), 'U', 0,
    'Update EgitimPlanKonulari'+char (13) + char (10) +'  SET '+char (13) + char (10) + '    ' +
    REVERSE (SUBSTRING (REvERSE (case when dbo.fn_SQLStrValueForString (d.tanimi, 0) <> dbo.fn_SQLStrValueForString (i.tanimi, 0) then 'tanimi = ' + dbo.fn_SQLStrValueForString (i.tanimi, 0) + ',' else '' end +
    case when dbo.fn_SQLStrValueForString (d.konu, 0) <> dbo.fn_SQLStrValueForString (i.konu, 0) then 'konu = ' + dbo.fn_SQLStrValueForString (i.konu, 0) + ',' else '' end +
    case when dbo.fn_SQLStrValueForString (d.Katilacaklar, 0) <> dbo.fn_SQLStrValueForString (i.Katilacaklar, 0) then 'Katilacaklar = ' + dbo.fn_SQLStrValueForString (i.Katilacaklar, 0) + ',' else '' end), 2, 8000)) +
    char (13) + char (10) + 'WHERE kod' + dbo.fn_SQLIntValueForString (i.kod, 1) 
  from inserted i
  inner join deleted d on d.kod = i.kod
  inner join 
    (SELECT kod
     FROM
     (select kod, tanimi, konu, Katilacaklar
      from
      (select -1 x, kod, tanimi, konu, Katilacaklar
       from deleted
       union all
       select 1 x, kod, tanimi, konu, Katilacaklar
       from inserted) U
      group by kod, tanimi, konu, Katilacaklar
      having sum (x) <> 0)w
     group by kod) u on u.kod = i.kod
  set nocount off
END
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'EgitimPlanKonulari_TakipTrg'
GO
COMMIT
GO
