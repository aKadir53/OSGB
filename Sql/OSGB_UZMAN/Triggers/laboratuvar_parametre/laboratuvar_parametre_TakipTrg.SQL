BEGIN TRAN
GO
ALTER -- create -- drop
 TRIGGER [dbo].[laboratuvar_parametre_TakipTrg]
   ON  [dbo].[laboratuvar_parametre]
   AFTER DELETE,INSERT, UPDATE
AS 
BEGIN
  set nocount on
  declare 
    @TableName varchar (200) = 'laboratuvar_parametre',
    @KeyFields varchar (200) = 'kodu,sira'

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLStrValueForString (kodu, 0) + ',' + dbo.fn_SQLDecValueForString (sira, 0), 'D', 0,
    'DELETE FROM dbo.laboratuvar_parametre where kodu' + dbo.fn_SQLStrValueForString (kodu, 1) + ' and sira' + dbo.fn_SQLDecValueForString (sira, 1) 
  from deleted d
  where not exists (select 1 from inserted i where d.kodu = i.kodu and d.sira = i.sira)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLStrValueForString (kodu, 0) + ',' + dbo.fn_SQLDecValueForString (sira, 0), 'I', 0,
    'IF NOT EXISTS (SELECT 1 from dbo.laboratuvar_parametre where kodu' + dbo.fn_SQLStrValueForString (kodu, 1) + ' and sira' + dbo.fn_SQLDecValueForString (sira, 1) +')'+char (13) + char (10) + 
    'insert into dbo.laboratuvar_parametre (kodu, sira, parametreadi, parametrebirim, parametreadi1, parametreadi2, type, parametreadi3, duyarlik, SGKTip, CihazTestKodu, Panikikaz)'+char (13) + char (10) + 
    'Select '+ dbo.fn_SQLStrValueForString (kodu, 0) +', ' + 
    dbo.fn_SQLDecValueForString (sira, 0) +', ' + 
    dbo.fn_SQLStrValueForString (parametreadi, 0) +', ' + 
    dbo.fn_SQLStrValueForString (parametrebirim, 0) +', ' + 
    dbo.fn_SQLStrValueForString (parametreadi1, 0) +', ' + 
    dbo.fn_SQLStrValueForString (parametreadi2, 0) +', ' + 
    dbo.fn_SQLStrValueForString (type, 0) +', ' + 
    dbo.fn_SQLStrValueForString (parametreadi3, 0) +', ' + 
    dbo.fn_SQLIntValueForString (duyarlik, 0) +', ' + 
    dbo.fn_SQLStrValueForString (SGKTip, 0) +', ' + 
    dbo.fn_SQLStrValueForString (CihazTestKodu, 0) +', ' + 
    dbo.fn_SQLStrValueForString (Panikikaz, 0)
  from inserted i
  where not exists (select 1 from deleted d where d.kodu = i.kodu and d.sira = i.sira)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select @TableName, @KeyFields, dbo.fn_SQLStrValueForString (i.kodu, 0) + ',' + dbo.fn_SQLDecValueForString (i.sira, 0), 'U', 0,
    'Update laboratuvar_parametre'+char (13) + char (10) +'  SET '+char (13) + char (10) + '    ' +
    REVERSE (SUBSTRING (REvERSE (case when dbo.fn_SQLStrValueForString (d.parametreadi, 0) <> dbo.fn_SQLStrValueForString (i.parametreadi, 0) then 'parametreadi = ' + dbo.fn_SQLStrValueForString (i.parametreadi, 0) + ',' else '' end +
    case when dbo.fn_SQLStrValueForString (d.parametrebirim, 0) <> dbo.fn_SQLStrValueForString (i.parametrebirim, 0) then 'parametrebirim = ' + dbo.fn_SQLStrValueForString (i.parametrebirim, 0) + ',' else '' end +
    case when dbo.fn_SQLStrValueForString (d.parametreadi1, 0) <> dbo.fn_SQLStrValueForString (i.parametreadi1, 0) then 'parametreadi1 = ' + dbo.fn_SQLStrValueForString (i.parametreadi1, 0) + ',' else '' end +
    case when dbo.fn_SQLStrValueForString (d.parametreadi2, 0) <> dbo.fn_SQLStrValueForString (i.parametreadi2, 0) then 'parametreadi2 = ' + dbo.fn_SQLStrValueForString (i.parametreadi2, 0) + ',' else '' end +
    case when dbo.fn_SQLStrValueForString (d.type, 0) <> dbo.fn_SQLStrValueForString (i.type, 0) then 'type = ' + dbo.fn_SQLStrValueForString (i.type, 0) + ',' else '' end +
    case when dbo.fn_SQLStrValueForString (d.parametreadi3, 0) <> dbo.fn_SQLStrValueForString (i.parametreadi3, 0) then 'parametreadi3 = ' + dbo.fn_SQLStrValueForString (i.parametreadi3, 0) + ',' else '' end +
    case when dbo.fn_SQLIntValueForString (d.duyarlik, 0) <> dbo.fn_SQLIntValueForString (i.duyarlik, 0) then 'duyarlik = ' + dbo.fn_SQLIntValueForString (i.duyarlik, 0) + ',' else '' end +
    case when dbo.fn_SQLStrValueForString (d.SGKTip, 0) <> dbo.fn_SQLStrValueForString (i.SGKTip, 0) then 'SGKTip = ' + dbo.fn_SQLStrValueForString (i.SGKTip, 0) + ',' else '' end +
    case when dbo.fn_SQLStrValueForString (d.CihazTestKodu, 0) <> dbo.fn_SQLStrValueForString (i.CihazTestKodu, 0) then 'CihazTestKodu = ' + dbo.fn_SQLStrValueForString (i.CihazTestKodu, 0) + ',' else '' end +
    case when dbo.fn_SQLStrValueForString (d.Panikikaz, 0) <> dbo.fn_SQLStrValueForString (i.Panikikaz, 0) then 'Panikikaz = ' + dbo.fn_SQLStrValueForString (i.Panikikaz, 0) + ',' else '' end), 2, 8000)) +
    char (13) + char (10) + 'WHERE kodu' + dbo.fn_SQLStrValueForString (i.kodu, 1) + ' and sira' + dbo.fn_SQLDecValueForString (i.sira, 1) 
  from inserted i
  inner join deleted d on d.kodu = i.kodu and d.sira = i.sira
  inner join 
    (SELECT kodu,sira
     FROM
     (select kodu, sira, parametreadi, parametrebirim, parametreadi1, parametreadi2, type, parametreadi3, duyarlik, SGKTip, CihazTestKodu, Panikikaz
      from
      (select -1 x, kodu, sira, parametreadi, parametrebirim, parametreadi1, parametreadi2, type, parametreadi3, duyarlik, SGKTip, CihazTestKodu, Panikikaz
       from deleted
       union all
       select 1 x, kodu, sira, parametreadi, parametrebirim, parametreadi1, parametreadi2, type, parametreadi3, duyarlik, SGKTip, CihazTestKodu, Panikikaz
       from inserted) U
      group by kodu, sira, parametreadi, parametrebirim, parametreadi1, parametreadi2, type, parametreadi3, duyarlik, SGKTip, CihazTestKodu, Panikikaz
      having sum (x) <> 0)w
     group by kodu,sira) u on u.kodu = i.kodu and u.sira = i.sira
  set nocount off
END
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'laboratuvar_parametre_TakipTrg'
GO
COMMIT
GO
