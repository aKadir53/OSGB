BEGIN TRAN
GO
ALTER -- create -- drop
 TRIGGER [dbo].[lab_normaldeger_TakipTrg]
   ON  [dbo].[lab_normaldeger]
   AFTER DELETE,INSERT, UPDATE
AS 
BEGIN
  set nocount on
  declare 
    @TableName varchar (200) = 'lab_normaldeger',
    @KeyFields varchar (200) = 'sira,testkodu,cinsiyet,ndSira'

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLDecValueForString (sira, 0) + ',' + dbo.fn_SQLStrValueForString (testkodu, 0) + ',' + dbo.fn_SQLStrValueForString (cinsiyet, 0) + ',' + dbo.fn_SQLIntValueForString (ndSira, 0), 'D', 0,
    'DELETE FROM dbo.lab_normaldeger where sira' + dbo.fn_SQLDecValueForString (sira, 1) + ' and testkodu' + dbo.fn_SQLStrValueForString (testkodu, 1) + ' and cinsiyet' + dbo.fn_SQLStrValueForString (cinsiyet, 1) + ' and ndSira' + dbo.fn_SQLIntValueForString (ndSira, 1) 
  from deleted d
  where not exists (select 1 from inserted i where d.sira = i.sira and d.testkodu = i.testkodu and ISNULL (d.cinsiyet, '') = ISNULL (i.cinsiyet, '') and ISNULL (d.ndSira, 0) = ISNULL (i.ndSira, 0))

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLDecValueForString (sira, 0) + ',' + dbo.fn_SQLStrValueForString (testkodu, 0) + ',' + dbo.fn_SQLStrValueForString (cinsiyet, 0) + ',' + dbo.fn_SQLIntValueForString (ndSira, 0), 'I', 0,
    'IF NOT EXISTS (SELECT 1 from dbo.lab_normaldeger where sira' + dbo.fn_SQLDecValueForString (sira, 1) + ' and testkodu' + dbo.fn_SQLStrValueForString (testkodu, 1) + ' and cinsiyet' + dbo.fn_SQLStrValueForString (cinsiyet, 1) + ' and ndSira' + dbo.fn_SQLIntValueForString (ndSira, 1) +')'+char (13) + char (10) + 
    'insert into dbo.lab_normaldeger (sira, testkodu, antibiyotikadi, ticariadi, cinsiyet, yas1, yas2, normal1, normal2, bk_1, bk_2, ref_aciklama, normal_bk, parametre_birim_sira, aralik, aciklama, ndSira)'+char (13) + char (10) + 
    'Select '+ dbo.fn_SQLDecValueForString (sira, 0) +', ' + 
    dbo.fn_SQLStrValueForString (testkodu, 0) +', ' + 
    dbo.fn_SQLStrValueForString (antibiyotikadi, 0) +', ' + 
    dbo.fn_SQLStrValueForString (ticariadi, 0) +', ' + 
    dbo.fn_SQLStrValueForString (cinsiyet, 0) +', ' + 
    dbo.fn_SQLIntValueForString (yas1, 0) +', ' + 
    dbo.fn_SQLIntValueForString (yas2, 0) +', ' + 
    dbo.fn_SQLDecValueForString (normal1, 0) +', ' + 
    dbo.fn_SQLDecValueForString (normal2, 0) +', ' + 
    dbo.fn_SQLStrValueForString (bk_1, 0) +', ' + 
    dbo.fn_SQLStrValueForString (bk_2, 0) +', ' + 
    dbo.fn_SQLStrValueForString (ref_aciklama, 0) +', ' + 
    dbo.fn_SQLIntValueForString (normal_bk, 0) +', ' + 
    dbo.fn_SQLDecValueForString (parametre_birim_sira, 0) +', ' + 
    dbo.fn_SQLStrValueForString (aralik, 0) +', ' + 
    dbo.fn_SQLStrValueForString (aciklama, 0) +', ' + 
    dbo.fn_SQLIntValueForString (ndSira, 0)
  from inserted i
  where not exists (select 1 from deleted d where d.sira = i.sira and d.testkodu = i.testkodu and ISNULL (d.cinsiyet, '') = ISNULL (i.cinsiyet, '') and ISNULL (d.ndSira, 0) = ISNULL (i.ndSira, 0))

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select @TableName, @KeyFields, dbo.fn_SQLDecValueForString (i.sira, 0) + ',' + dbo.fn_SQLStrValueForString (i.testkodu, 0) + ',' + dbo.fn_SQLStrValueForString (i.cinsiyet, 0) + ',' + dbo.fn_SQLIntValueForString (i.ndSira, 0), 'U', 0,
    'Update lab_normaldeger'+char (13) + char (10) +'  SET '+char (13) + char (10) + '    ' +
    REVERSE (SUBSTRING (REvERSE (case when dbo.fn_SQLStrValueForString (d.antibiyotikadi, 0) <> dbo.fn_SQLStrValueForString (i.antibiyotikadi, 0) then 'antibiyotikadi = ' + dbo.fn_SQLStrValueForString (i.antibiyotikadi, 0) + ',' else '' end +
    case when dbo.fn_SQLStrValueForString (d.ticariadi, 0) <> dbo.fn_SQLStrValueForString (i.ticariadi, 0) then 'ticariadi = ' + dbo.fn_SQLStrValueForString (i.ticariadi, 0) + ',' else '' end +
    case when dbo.fn_SQLIntValueForString (d.yas1, 0) <> dbo.fn_SQLIntValueForString (i.yas1, 0) then 'yas1 = ' + dbo.fn_SQLIntValueForString (i.yas1, 0) + ',' else '' end +
    case when dbo.fn_SQLIntValueForString (d.yas2, 0) <> dbo.fn_SQLIntValueForString (i.yas2, 0) then 'yas2 = ' + dbo.fn_SQLIntValueForString (i.yas2, 0) + ',' else '' end +
    case when dbo.fn_SQLDecValueForString (d.normal1, 0) <> dbo.fn_SQLDecValueForString (i.normal1, 0) then 'normal1 = ' + dbo.fn_SQLDecValueForString (i.normal1, 0) + ',' else '' end +
    case when dbo.fn_SQLDecValueForString (d.normal2, 0) <> dbo.fn_SQLDecValueForString (i.normal2, 0) then 'normal2 = ' + dbo.fn_SQLDecValueForString (i.normal2, 0) + ',' else '' end +
    case when dbo.fn_SQLStrValueForString (d.bk_1, 0) <> dbo.fn_SQLStrValueForString (i.bk_1, 0) then 'bk_1 = ' + dbo.fn_SQLStrValueForString (i.bk_1, 0) + ',' else '' end +
    case when dbo.fn_SQLStrValueForString (d.bk_2, 0) <> dbo.fn_SQLStrValueForString (i.bk_2, 0) then 'bk_2 = ' + dbo.fn_SQLStrValueForString (i.bk_2, 0) + ',' else '' end +
    case when dbo.fn_SQLStrValueForString (d.ref_aciklama, 0) <> dbo.fn_SQLStrValueForString (i.ref_aciklama, 0) then 'ref_aciklama = ' + dbo.fn_SQLStrValueForString (i.ref_aciklama, 0) + ',' else '' end +
    case when dbo.fn_SQLIntValueForString (d.normal_bk, 0) <> dbo.fn_SQLIntValueForString (i.normal_bk, 0) then 'normal_bk = ' + dbo.fn_SQLIntValueForString (i.normal_bk, 0) + ',' else '' end +
    case when dbo.fn_SQLDecValueForString (d.parametre_birim_sira, 0) <> dbo.fn_SQLDecValueForString (i.parametre_birim_sira, 0) then 'parametre_birim_sira = ' + dbo.fn_SQLDecValueForString (i.parametre_birim_sira, 0) + ',' else '' end +
    case when dbo.fn_SQLStrValueForString (d.aralik, 0) <> dbo.fn_SQLStrValueForString (i.aralik, 0) then 'aralik = ' + dbo.fn_SQLStrValueForString (i.aralik, 0) + ',' else '' end +
    case when dbo.fn_SQLStrValueForString (d.aciklama, 0) <> dbo.fn_SQLStrValueForString (i.aciklama, 0) then 'aciklama = ' + dbo.fn_SQLStrValueForString (i.aciklama, 0) + ',' else '' end), 2, 8000)) +
    char (13) + char (10) + 'WHERE sira' + dbo.fn_SQLDecValueForString (i.sira, 1) + ' and testkodu' + dbo.fn_SQLStrValueForString (i.testkodu, 1) + ' and cinsiyet' + dbo.fn_SQLStrValueForString (i.cinsiyet, 1) + ' and ndSira' + dbo.fn_SQLIntValueForString (i.ndSira, 1) 
  from inserted i
  inner join deleted d on d.sira = i.sira and d.testkodu = i.testkodu and ISNULL (d.cinsiyet, '') = ISNULL (i.cinsiyet, '') and ISNULL (d.ndSira, 0) = ISNULL (i.ndSira, 0)
  inner join 
    (SELECT sira,testkodu,cinsiyet,ndSira
     FROM
     (select sira, testkodu, antibiyotikadi, ticariadi, cinsiyet, yas1, yas2, normal1, normal2, bk_1, bk_2, ref_aciklama, normal_bk, parametre_birim_sira, aralik, aciklama, ndSira
      from
      (select -1 x, sira, testkodu, antibiyotikadi, ticariadi, cinsiyet, yas1, yas2, normal1, normal2, bk_1, bk_2, ref_aciklama, normal_bk, parametre_birim_sira, aralik, aciklama, ndSira
       from deleted
       union all
       select 1 x, sira, testkodu, antibiyotikadi, ticariadi, cinsiyet, yas1, yas2, normal1, normal2, bk_1, bk_2, ref_aciklama, normal_bk, parametre_birim_sira, aralik, aciklama, ndSira
       from inserted) U
      group by sira, testkodu, antibiyotikadi, ticariadi, cinsiyet, yas1, yas2, normal1, normal2, bk_1, bk_2, ref_aciklama, normal_bk, parametre_birim_sira, aralik, aciklama, ndSira
      having sum (x) <> 0)w
     group by sira,testkodu,cinsiyet,ndSira) u on u.sira = i.sira and u.testkodu = i.testkodu and ISNULL (u.cinsiyet, '') = ISNULL (i.cinsiyet, '') and ISNULL (u.ndSira, 0) = ISNULL (i.ndSira, 0)
  set nocount off
END
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'lab_normaldeger_TakipTrg'
GO
COMMIT
GO
