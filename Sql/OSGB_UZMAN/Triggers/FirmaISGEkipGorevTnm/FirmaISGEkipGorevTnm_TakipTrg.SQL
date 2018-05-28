BEGIN TRAN
GO
ALTER -- create -- drop
 TRIGGER [dbo].[FirmaISGEkipGorevTnm_TakipTrg]
   ON  [dbo].[FirmaISGEkipGorevTnm]
   AFTER DELETE,INSERT, UPDATE
AS 
BEGIN
  set nocount on
  declare 
    @TableName varchar (200) = 'FirmaISGEkipGorevTnm',
    @KeyFields varchar (200) = 'kod'

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLIntValueForString (kod, 0), 'D', 0,
    'DELETE FROM dbo.FirmaISGEkipGorevTnm where kod' + dbo.fn_SQLIntValueForString (kod, 1) 
  from deleted d
  where not exists (select 1 from inserted i where d.kod = i.kod)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLIntValueForString (i.kod, 0), 'I', 1,
    'IF NOT EXISTS (SELECT 1 from dbo.FirmaISGEkipGorevTnm where kod' + dbo.fn_SQLIntValueForString (i.kod, 1) +')'+char (13) + char (10) + 
    'insert into dbo.FirmaISGEkipGorevTnm (kod, tanimi, ISGEkipId, aciklama)'+char (13) + char (10) + 
    'Select '+ dbo.fn_SQLIntValueForString (i.kod, 0) +', ' + 
    dbo.fn_SQLStrValueForString (i.tanimi, 0) +', ' + 
    dbo.fn_SQLIntValueForString (i.ISGEkipId, 0) +', ' + 
    dbo.fn_SQLStrValueForString (t.aciklama, 0)
  from inserted i
  inner join dbo.FirmaISGEkipGorevTnm t on t.Kod = i.Kod
  where not exists (select 1 from deleted d where d.kod = i.kod)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select @TableName, @KeyFields, dbo.fn_SQLIntValueForString (i.kod, 0), 'U', 0,
    'Update FirmaISGEkipGorevTnm'+char (13) + char (10) +'  SET '+char (13) + char (10) + '    ' +
    REVERSE (SUBSTRING (REvERSE (case when dbo.fn_SQLStrValueForString (d.tanimi, 0) <> dbo.fn_SQLStrValueForString (i.tanimi, 0) then 'tanimi = ' + dbo.fn_SQLStrValueForString (i.tanimi, 0) + ',' else '' end +
    case when dbo.fn_SQLIntValueForString (d.ISGEkipId, 0) <> dbo.fn_SQLIntValueForString (i.ISGEkipId, 0) then 'ISGEkipId = ' + dbo.fn_SQLIntValueForString (i.ISGEkipId, 0) + ',' else '' end +
    case when Update (aciklama) then 'aciklama = ' + dbo.fn_SQLStrValueForString (t.aciklama, 0) + ',' else '' end), 2, 8000)) +
    char (13) + char (10) + 'WHERE kod' + dbo.fn_SQLIntValueForString (i.kod, 1) 
  from inserted i
  inner join deleted d on d.kod = i.kod
  inner join dbo.FirmaISGEkipGorevTnm t on t.Kod = i.kod
  inner join 
    (SELECT kod
     FROM
     (select kod, tanimi, ISGEkipId, aciklama
      from
      (select -1 x, kod, tanimi, ISGEkipId, case when Update (Aciklama) then 'Eski' else '' end aciklama
       from deleted
       union all
       select 1 x, kod, tanimi, ISGEkipId, case when Update (Aciklama) then 'Yeni' else '' end aciklama
       from inserted) U
      group by kod, tanimi, ISGEkipId, aciklama
      having sum (x) <> 0)w
     group by kod) u on u.kod = i.kod
  set nocount off
END
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'FirmaISGEkipGorevTnm_TakipTrg'
GO
COMMIT
GO
