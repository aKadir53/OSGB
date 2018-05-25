BEGIN TRAN
GO
ALTER -- create -- drop
 TRIGGER [dbo].[DisAktarimBaglanti_TakipTrg]
   ON  [dbo].[DisAktarimBaglanti]
   AFTER DELETE,INSERT, UPDATE
AS 
BEGIN
  set nocount on
  declare 
    @TableName varchar (200) = 'DisAktarimBaglanti',
    @KeyFields varchar (200) = 'AktarimTanimID,KaynakBaslik'

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLIntValueForString (AktarimTanimID, 0) + ',' + dbo.fn_SQLStrValueForString (KaynakBaslik, 0), 'D', 0,
    'DELETE FROM dbo.DisAktarimBaglanti where AktarimTanimID' + dbo.fn_SQLIntValueForString (AktarimTanimID, 1) + ' and KaynakBaslik' + dbo.fn_SQLStrValueForString (KaynakBaslik, 1) 
  from deleted d
  where not exists (select 1 from inserted i where d.AktarimTanimID = i.AktarimTanimID and d.KaynakBaslik = i.KaynakBaslik)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLIntValueForString (AktarimTanimID, 0) + ',' + dbo.fn_SQLStrValueForString (KaynakBaslik, 0), 'I', 0,
    'IF NOT EXISTS (SELECT 1 from dbo.DisAktarimBaglanti where AktarimTanimID' + dbo.fn_SQLIntValueForString (AktarimTanimID, 1) + ' and KaynakBaslik' + dbo.fn_SQLStrValueForString (KaynakBaslik, 1) +')'+char (13) + char (10) + 
    'insert into dbo.DisAktarimBaglanti (AktarimTanimID, HedefAlanAdi, KaynakBaslik)'+char (13) + char (10) + 
    'Select '+ dbo.fn_SQLIntValueForString (AktarimTanimID, 0) +', ' + 
    dbo.fn_SQLStrValueForString (HedefAlanAdi, 0) +', ' + 
    dbo.fn_SQLStrValueForString (KaynakBaslik, 0)
  from inserted i
  where not exists (select 1 from deleted d where d.AktarimTanimID = i.AktarimTanimID and d.KaynakBaslik = i.KaynakBaslik)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select @TableName, @KeyFields, dbo.fn_SQLIntValueForString (i.AktarimTanimID, 0) + ',' + dbo.fn_SQLStrValueForString (i.KaynakBaslik, 0), 'U', 0,
    'Update DisAktarimBaglanti'+char (13) + char (10) +'  SET '+char (13) + char (10) + '    ' +
    REVERSE (SUBSTRING (REvERSE (case when dbo.fn_SQLStrValueForString (d.HedefAlanAdi, 0) <> dbo.fn_SQLStrValueForString (i.HedefAlanAdi, 0) then 'HedefAlanAdi = ' + dbo.fn_SQLStrValueForString (i.HedefAlanAdi, 0) + ',' else '' end), 2, 8000)) +
    char (13) + char (10) + 'WHERE AktarimTanimID' + dbo.fn_SQLIntValueForString (i.AktarimTanimID, 1) + ' and KaynakBaslik' + dbo.fn_SQLStrValueForString (i.KaynakBaslik, 1) 
  from inserted i
  inner join deleted d on d.AktarimTanimID = i.AktarimTanimID and d.KaynakBaslik = i.KaynakBaslik
  inner join 
    (SELECT AktarimTanimID,KaynakBaslik
     FROM
     (select AktarimTanimID, HedefAlanAdi, KaynakBaslik
      from
      (select -1 x, AktarimTanimID, HedefAlanAdi, KaynakBaslik
       from deleted
       union all
       select 1 x, AktarimTanimID, HedefAlanAdi, KaynakBaslik
       from inserted) U
      group by AktarimTanimID, HedefAlanAdi, KaynakBaslik
      having sum (x) <> 0)w
     group by AktarimTanimID,KaynakBaslik) u on u.AktarimTanimID = i.AktarimTanimID and u.KaynakBaslik = i.KaynakBaslik
  set nocount off
END
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'DisAktarimBaglanti_TakipTrg'
GO
COMMIT
GO
