BEGIN TRAN
GO
ALTER -- create -- drop
 TRIGGER [dbo].[IseGirisMuayeneSorulari_TakipTrg]
   ON  [dbo].[IseGirisMuayeneSorulari]
   AFTER DELETE,INSERT, UPDATE
AS 
BEGIN
  set nocount on
  declare 
    @TableName varchar (200) = 'IseGirisMuayeneSorulari',
    @KeyFields varchar (200) = 'id'

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLIntValueForString (id, 0), 'D', 0,
    'DELETE FROM dbo.IseGirisMuayeneSorulari where id' + dbo.fn_SQLIntValueForString (id, 1) 
  from deleted d
  where not exists (select 1 from inserted i where d.id = i.id)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLIntValueForString (id, 0), 'I', 1,
    'IF NOT EXISTS (SELECT 1 from dbo.IseGirisMuayeneSorulari where id' + dbo.fn_SQLIntValueForString (id, 1) +')'+char (13) + char (10) + 
    'insert into dbo.IseGirisMuayeneSorulari (grupKod, altGrupKod, id, tanimi, value, tarih, valueObjevalues, valueTip, aciklama, defaultValue, Raporla, RapordaGrupla)'+char (13) + char (10) + 
    'Select '+ dbo.fn_SQLIntValueForString (grupKod, 0) +', ' + 
    dbo.fn_SQLIntValueForString (altGrupKod, 0) +', ' + 
    dbo.fn_SQLIntValueForString (id, 0) +', ' + 
    dbo.fn_SQLStrValueForString (tanimi, 0) +', ' + 
    dbo.fn_SQLStrValueForString (value, 0) +', ' + 
    dbo.fn_SQLDateValueForString (tarih, 0, 1) +', ' + 
    dbo.fn_SQLIntValueForString (valueObjevalues, 0) +', ' + 
    dbo.fn_SQLStrValueForString (valueTip, 0) +', ' + 
    dbo.fn_SQLStrValueForString (aciklama, 0) +', ' + 
    dbo.fn_SQLStrValueForString (defaultValue, 0) +', ' + 
    dbo.fn_SQLIntValueForString (Raporla, 0) +', ' + 
    dbo.fn_SQLIntValueForString (RapordaGrupla, 0)
  from inserted i
  where not exists (select 1 from deleted d where d.id = i.id)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select @TableName, @KeyFields, dbo.fn_SQLIntValueForString (i.id, 0), 'U', 0,
    'Update IseGirisMuayeneSorulari'+char (13) + char (10) +'  SET '+char (13) + char (10) + '    ' +
    REVERSE (SUBSTRING (REvERSE (case when dbo.fn_SQLIntValueForString (d.grupKod, 0) <> dbo.fn_SQLIntValueForString (i.grupKod, 0) then 'grupKod = ' + dbo.fn_SQLIntValueForString (i.grupKod, 0) + ',' else '' end +
    case when dbo.fn_SQLIntValueForString (d.altGrupKod, 0) <> dbo.fn_SQLIntValueForString (i.altGrupKod, 0) then 'altGrupKod = ' + dbo.fn_SQLIntValueForString (i.altGrupKod, 0) + ',' else '' end +
    case when dbo.fn_SQLStrValueForString (d.tanimi, 0) <> dbo.fn_SQLStrValueForString (i.tanimi, 0) then 'tanimi = ' + dbo.fn_SQLStrValueForString (i.tanimi, 0) + ',' else '' end +
    case when dbo.fn_SQLStrValueForString (d.value, 0) <> dbo.fn_SQLStrValueForString (i.value, 0) then 'value = ' + dbo.fn_SQLStrValueForString (i.value, 0) + ',' else '' end +
    case when dbo.fn_SQLDateValueForString (d.tarih, 0, 1) <> dbo.fn_SQLDateValueForString (i.tarih, 0, 1) then 'tarih = ' + dbo.fn_SQLDateValueForString (i.tarih, 0, 1) + ',' else '' end +
    case when dbo.fn_SQLIntValueForString (d.valueObjevalues, 0) <> dbo.fn_SQLIntValueForString (i.valueObjevalues, 0) then 'valueObjevalues = ' + dbo.fn_SQLIntValueForString (i.valueObjevalues, 0) + ',' else '' end +
    case when dbo.fn_SQLStrValueForString (d.valueTip, 0) <> dbo.fn_SQLStrValueForString (i.valueTip, 0) then 'valueTip = ' + dbo.fn_SQLStrValueForString (i.valueTip, 0) + ',' else '' end +
    case when dbo.fn_SQLStrValueForString (d.aciklama, 0) <> dbo.fn_SQLStrValueForString (i.aciklama, 0) then 'aciklama = ' + dbo.fn_SQLStrValueForString (i.aciklama, 0) + ',' else '' end +
    case when dbo.fn_SQLStrValueForString (d.defaultValue, 0) <> dbo.fn_SQLStrValueForString (i.defaultValue, 0) then 'defaultValue = ' + dbo.fn_SQLStrValueForString (i.defaultValue, 0) + ',' else '' end +
    case when dbo.fn_SQLIntValueForString (d.Raporla, 0) <> dbo.fn_SQLIntValueForString (i.Raporla, 0) then 'Raporla = ' + dbo.fn_SQLIntValueForString (i.Raporla, 0) + ',' else '' end +
    case when dbo.fn_SQLIntValueForString (d.RapordaGrupla, 0) <> dbo.fn_SQLIntValueForString (i.RapordaGrupla, 0) then 'RapordaGrupla = ' + dbo.fn_SQLIntValueForString (i.RapordaGrupla, 0) + ',' else '' end), 2, 8000)) +
    char (13) + char (10) + 'WHERE id' + dbo.fn_SQLIntValueForString (i.id, 1) 
  from inserted i
  inner join deleted d on d.id = i.id
  inner join 
    (SELECT id
     FROM
     (select grupKod, altGrupKod, id, tanimi, value, tarih, valueObjevalues, valueTip, aciklama, defaultValue, Raporla, RapordaGrupla
      from
      (select -1 x, grupKod, altGrupKod, id, tanimi, value, tarih, valueObjevalues, valueTip, aciklama, defaultValue, Raporla, RapordaGrupla
       from deleted
       union all
       select 1 x, grupKod, altGrupKod, id, tanimi, value, tarih, valueObjevalues, valueTip, aciklama, defaultValue, Raporla, RapordaGrupla
       from inserted) U
      group by grupKod, altGrupKod, id, tanimi, value, tarih, valueObjevalues, valueTip, aciklama, defaultValue, Raporla, RapordaGrupla
      having sum (x) <> 0)w
     group by id) u on u.id = i.id
  set nocount off
END
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'IseGirisMuayeneSorulari_TakipTrg'
GO
COMMIT
GO
