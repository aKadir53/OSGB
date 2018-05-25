BEGIN TRAN
GO
ALTER -- create -- drop
 TRIGGER [dbo].[DisAktarimTanim_TakipTrg]
   ON  [dbo].[DisAktarimTanim]
   AFTER DELETE,INSERT, UPDATE
AS 
BEGIN
  set nocount on
  declare 
    @TableName varchar (200) = 'DisAktarimTanim',
    @KeyFields varchar (200) = 'ID'

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLIntValueForString (ID, 0), 'D', 0,
    'DELETE FROM dbo.DisAktarimTanim where ID' + dbo.fn_SQLIntValueForString (ID, 1) 
  from deleted d
  where not exists (select 1 from inserted i where d.ID = i.ID)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLIntValueForString (ID, 0), 'I', 1,
    'IF NOT EXISTS (SELECT 1 from dbo.DisAktarimTanim where ID' + dbo.fn_SQLIntValueForString (ID, 1) +')'+char (13) + char (10) + 
    'insert into dbo.DisAktarimTanim (ID, Tanimi, Otomatik, HedefTabloAdi, HedefTabloyuBosalt, AktarimSonrasiStoredProc)'+char (13) + char (10) + 
    'Select '+ dbo.fn_SQLIntValueForString (ID, 0) +', ' + 
    dbo.fn_SQLStrValueForString (Tanimi, 0) +', ' + 
    dbo.fn_SQLIntValueForString (Otomatik, 0) +', ' + 
    dbo.fn_SQLStrValueForString (HedefTabloAdi, 0) +', ' + 
    dbo.fn_SQLIntValueForString (HedefTabloyuBosalt, 0) +', ' + 
    dbo.fn_SQLStrValueForString (AktarimSonrasiStoredProc, 0)
  from inserted i
  where not exists (select 1 from deleted d where d.ID = i.ID)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select @TableName, @KeyFields, dbo.fn_SQLIntValueForString (i.ID, 0), 'U', 0,
    'Update DisAktarimTanim'+char (13) + char (10) +'  SET '+char (13) + char (10) + '    ' +
    REVERSE (SUBSTRING (REvERSE (case when dbo.fn_SQLStrValueForString (d.Tanimi, 0) <> dbo.fn_SQLStrValueForString (i.Tanimi, 0) then 'Tanimi = ' + dbo.fn_SQLStrValueForString (i.Tanimi, 0) + ',' else '' end +
    case when dbo.fn_SQLIntValueForString (d.Otomatik, 0) <> dbo.fn_SQLIntValueForString (i.Otomatik, 0) then 'Otomatik = ' + dbo.fn_SQLIntValueForString (i.Otomatik, 0) + ',' else '' end +
    case when dbo.fn_SQLStrValueForString (d.HedefTabloAdi, 0) <> dbo.fn_SQLStrValueForString (i.HedefTabloAdi, 0) then 'HedefTabloAdi = ' + dbo.fn_SQLStrValueForString (i.HedefTabloAdi, 0) + ',' else '' end +
    case when dbo.fn_SQLIntValueForString (d.HedefTabloyuBosalt, 0) <> dbo.fn_SQLIntValueForString (i.HedefTabloyuBosalt, 0) then 'HedefTabloyuBosalt = ' + dbo.fn_SQLIntValueForString (i.HedefTabloyuBosalt, 0) + ',' else '' end +
    case when dbo.fn_SQLStrValueForString (d.AktarimSonrasiStoredProc, 0) <> dbo.fn_SQLStrValueForString (i.AktarimSonrasiStoredProc, 0) then 'AktarimSonrasiStoredProc = ' + dbo.fn_SQLStrValueForString (i.AktarimSonrasiStoredProc, 0) + ',' else '' end), 2, 8000)) +
    char (13) + char (10) + 'WHERE ID' + dbo.fn_SQLIntValueForString (i.ID, 1) 
  from inserted i
  inner join deleted d on d.ID = i.ID
  inner join 
    (SELECT ID
     FROM
     (select ID, Tanimi, Otomatik, HedefTabloAdi, HedefTabloyuBosalt, AktarimSonrasiStoredProc
      from
      (select -1 x, ID, Tanimi, Otomatik, HedefTabloAdi, HedefTabloyuBosalt, AktarimSonrasiStoredProc
       from deleted
       union all
       select 1 x, ID, Tanimi, Otomatik, HedefTabloAdi, HedefTabloyuBosalt, AktarimSonrasiStoredProc
       from inserted) U
      group by ID, Tanimi, Otomatik, HedefTabloAdi, HedefTabloyuBosalt, AktarimSonrasiStoredProc
      having sum (x) <> 0)w
     group by ID) u on u.ID = i.ID
  set nocount off
END
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'DisAktarimTanim_TakipTrg'
GO
COMMIT
GO
