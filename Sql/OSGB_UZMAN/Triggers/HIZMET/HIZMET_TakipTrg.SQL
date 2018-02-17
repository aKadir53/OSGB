BEGIN TRAN
GO
ALTER -- create -- drop
 TRIGGER [dbo].[HIZMET_TakipTrg]
   ON  [dbo].[HIZMET]
   AFTER DELETE,INSERT, UPDATE
AS 
BEGIN
  set nocount on
  declare 
    @TableName varchar (200) = 'HIZMET',
    @KeyFields varchar (200) = 'CODE'

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLStrValueForString (CODE, 0), 'D', 
    'DELETE FROM dbo.HIZMET where CODE' + dbo.fn_SQLStrValueForString (CODE, 1) 
  from deleted d
  where not exists (select 1 from inserted i where d.CODE = i.CODE)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLStrValueForString (CODE, 0), 'I',
    'IF NOT EXISTS (SELECT 1 from dbo.HIZMET where CODE' + dbo.fn_SQLStrValueForString (CODE, 1) +')'+char (13) + char (10) + 
    'insert into dbo.HIZMET (TANIM, GRUP, CODE, OZELKOD, NAME1, KDV, BUT, PARSAYI, MATERYAL, LABTIPI, GELIRGRUBU, OTOISLE, DRYUZDE, PHYUZDE, HAVUZ, KKODU, PAKETLEGIRILIR, ListedeGorunsun, UyariMesaji, SeansAcilir, SATISF00, KSATISF00, SATISF01, KSATISF01, SATISF02, KSATISF02, SATISF03, KSATISF03, SATISF04, KSATISF04, SATISF05, KSATISF05, cinsKontrol, yasKontrol, faturalanamazlar, medulaGitsin, HemenKaydet, Cihaz, AyaktanMaxAdet, HizmetDisaridanAlinir, IstemFormSira, TUR, DisFirma)'+char (13) + char (10) + 
    'Select '+ dbo.fn_SQLStrValueForString (TANIM, 0) +', ' + 
    dbo.fn_SQLStrValueForString (GRUP, 0) +', ' + 
    dbo.fn_SQLStrValueForString (CODE, 0) +', ' + 
    dbo.fn_SQLStrValueForString (OZELKOD, 0) +', ' + 
    dbo.fn_SQLStrValueForString (NAME1, 0) +', ' + 
    dbo.fn_SQLDecValueForString (KDV, 0) +', ' + 
    dbo.fn_SQLStrValueForString (BUT, 0) +', ' + 
    dbo.fn_SQLIntValueForString (PARSAYI, 0) +', ' + 
    dbo.fn_SQLStrValueForString (MATERYAL, 0) +', ' + 
    dbo.fn_SQLStrValueForString (LABTIPI, 0) +', ' + 
    dbo.fn_SQLStrValueForString (GELIRGRUBU, 0) +', ' + 
    dbo.fn_SQLStrValueForString (OTOISLE, 0) +', ' + 
    dbo.fn_SQLDecValueForString (DRYUZDE, 0) +', ' + 
    dbo.fn_SQLDecValueForString (PHYUZDE, 0) +', ' + 
    dbo.fn_SQLStrValueForString (HAVUZ, 0) +', ' + 
    dbo.fn_SQLStrValueForString (KKODU, 0) +', ' + 
    dbo.fn_SQLStrValueForString (PAKETLEGIRILIR, 0) +', ' + 
    dbo.fn_SQLIntValueForString (ListedeGorunsun, 0) +', ' + 
    dbo.fn_SQLStrValueForString (UyariMesaji, 0) +', ' + 
    dbo.fn_SQLIntValueForString (SeansAcilir, 0) +', ' + 
    dbo.fn_SQLDecValueForString (SATISF00, 0) +', ' + 
    dbo.fn_SQLDecValueForString (KSATISF00, 0) +', ' + 
    dbo.fn_SQLDecValueForString (SATISF01, 0) +', ' + 
    dbo.fn_SQLDecValueForString (KSATISF01, 0) +', ' + 
    dbo.fn_SQLDecValueForString (SATISF02, 0) +', ' + 
    dbo.fn_SQLDecValueForString (KSATISF02, 0) +', ' + 
    dbo.fn_SQLDecValueForString (SATISF03, 0) +', ' + 
    dbo.fn_SQLDecValueForString (KSATISF03, 0) +', ' + 
    dbo.fn_SQLDecValueForString (SATISF04, 0) +', ' + 
    dbo.fn_SQLDecValueForString (KSATISF04, 0) +', ' + 
    dbo.fn_SQLDecValueForString (SATISF05, 0) +', ' + 
    dbo.fn_SQLDecValueForString (KSATISF05, 0) +', ' + 
    dbo.fn_SQLStrValueForString (cinsKontrol, 0) +', ' + 
    dbo.fn_SQLIntValueForString (yasKontrol, 0) +', ' + 
    dbo.fn_SQLStrValueForString (faturalanamazlar, 0) +', ' + 
    dbo.fn_SQLIntValueForString (medulaGitsin, 0) +', ' + 
    dbo.fn_SQLIntValueForString (HemenKaydet, 0) +', ' + 
    dbo.fn_SQLStrValueForString (Cihaz, 0) +', ' + 
    dbo.fn_SQLIntValueForString (AyaktanMaxAdet, 0) +', ' + 
    dbo.fn_SQLIntValueForString (HizmetDisaridanAlinir, 0) +', ' + 
    dbo.fn_SQLIntValueForString (IstemFormSira, 0) +', ' + 
    dbo.fn_SQLStrValueForString (TUR, 0) +', ' + 
    dbo.fn_SQLStrValueForString (DisFirma, 0)
  from inserted i
  where not exists (select 1 from deleted d where d.CODE = i.CODE)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, Script)
  select @TableName, @KeyFields, dbo.fn_SQLStrValueForString (i.CODE, 0), 'U',
    'Update HIZMET'+char (13) + char (10) +'  SET '+char (13) + char (10) + '    ' +
    REVERSE (SUBSTRING (REvERSE (case when dbo.fn_SQLStrValueForString (d.TANIM, 0) <> dbo.fn_SQLStrValueForString (i.TANIM, 0) then 'TANIM = ' + dbo.fn_SQLStrValueForString (i.TANIM, 0) + ',' else '' end +
    case when dbo.fn_SQLStrValueForString (d.GRUP, 0) <> dbo.fn_SQLStrValueForString (i.GRUP, 0) then 'GRUP = ' + dbo.fn_SQLStrValueForString (i.GRUP, 0) + ',' else '' end +
    case when dbo.fn_SQLStrValueForString (d.OZELKOD, 0) <> dbo.fn_SQLStrValueForString (i.OZELKOD, 0) then 'OZELKOD = ' + dbo.fn_SQLStrValueForString (i.OZELKOD, 0) + ',' else '' end +
    case when dbo.fn_SQLStrValueForString (d.NAME1, 0) <> dbo.fn_SQLStrValueForString (i.NAME1, 0) then 'NAME1 = ' + dbo.fn_SQLStrValueForString (i.NAME1, 0) + ',' else '' end +
    case when dbo.fn_SQLDecValueForString (d.KDV, 0) <> dbo.fn_SQLDecValueForString (i.KDV, 0) then 'KDV = ' + dbo.fn_SQLDecValueForString (i.KDV, 0) + ',' else '' end +
    case when dbo.fn_SQLStrValueForString (d.BUT, 0) <> dbo.fn_SQLStrValueForString (i.BUT, 0) then 'BUT = ' + dbo.fn_SQLStrValueForString (i.BUT, 0) + ',' else '' end +
    case when dbo.fn_SQLIntValueForString (d.PARSAYI, 0) <> dbo.fn_SQLIntValueForString (i.PARSAYI, 0) then 'PARSAYI = ' + dbo.fn_SQLIntValueForString (i.PARSAYI, 0) + ',' else '' end +
    case when dbo.fn_SQLStrValueForString (d.MATERYAL, 0) <> dbo.fn_SQLStrValueForString (i.MATERYAL, 0) then 'MATERYAL = ' + dbo.fn_SQLStrValueForString (i.MATERYAL, 0) + ',' else '' end +
    case when dbo.fn_SQLStrValueForString (d.LABTIPI, 0) <> dbo.fn_SQLStrValueForString (i.LABTIPI, 0) then 'LABTIPI = ' + dbo.fn_SQLStrValueForString (i.LABTIPI, 0) + ',' else '' end +
    case when dbo.fn_SQLStrValueForString (d.GELIRGRUBU, 0) <> dbo.fn_SQLStrValueForString (i.GELIRGRUBU, 0) then 'GELIRGRUBU = ' + dbo.fn_SQLStrValueForString (i.GELIRGRUBU, 0) + ',' else '' end +
    case when dbo.fn_SQLStrValueForString (d.OTOISLE, 0) <> dbo.fn_SQLStrValueForString (i.OTOISLE, 0) then 'OTOISLE = ' + dbo.fn_SQLStrValueForString (i.OTOISLE, 0) + ',' else '' end +
    case when dbo.fn_SQLDecValueForString (d.DRYUZDE, 0) <> dbo.fn_SQLDecValueForString (i.DRYUZDE, 0) then 'DRYUZDE = ' + dbo.fn_SQLDecValueForString (i.DRYUZDE, 0) + ',' else '' end +
    case when dbo.fn_SQLDecValueForString (d.PHYUZDE, 0) <> dbo.fn_SQLDecValueForString (i.PHYUZDE, 0) then 'PHYUZDE = ' + dbo.fn_SQLDecValueForString (i.PHYUZDE, 0) + ',' else '' end +
    case when dbo.fn_SQLStrValueForString (d.HAVUZ, 0) <> dbo.fn_SQLStrValueForString (i.HAVUZ, 0) then 'HAVUZ = ' + dbo.fn_SQLStrValueForString (i.HAVUZ, 0) + ',' else '' end +
    case when dbo.fn_SQLStrValueForString (d.KKODU, 0) <> dbo.fn_SQLStrValueForString (i.KKODU, 0) then 'KKODU = ' + dbo.fn_SQLStrValueForString (i.KKODU, 0) + ',' else '' end +
    case when dbo.fn_SQLStrValueForString (d.PAKETLEGIRILIR, 0) <> dbo.fn_SQLStrValueForString (i.PAKETLEGIRILIR, 0) then 'PAKETLEGIRILIR = ' + dbo.fn_SQLStrValueForString (i.PAKETLEGIRILIR, 0) + ',' else '' end +
    case when dbo.fn_SQLIntValueForString (d.ListedeGorunsun, 0) <> dbo.fn_SQLIntValueForString (i.ListedeGorunsun, 0) then 'ListedeGorunsun = ' + dbo.fn_SQLIntValueForString (i.ListedeGorunsun, 0) + ',' else '' end +
    case when dbo.fn_SQLStrValueForString (d.UyariMesaji, 0) <> dbo.fn_SQLStrValueForString (i.UyariMesaji, 0) then 'UyariMesaji = ' + dbo.fn_SQLStrValueForString (i.UyariMesaji, 0) + ',' else '' end +
    case when dbo.fn_SQLIntValueForString (d.SeansAcilir, 0) <> dbo.fn_SQLIntValueForString (i.SeansAcilir, 0) then 'SeansAcilir = ' + dbo.fn_SQLIntValueForString (i.SeansAcilir, 0) + ',' else '' end +
    case when dbo.fn_SQLDecValueForString (d.SATISF00, 0) <> dbo.fn_SQLDecValueForString (i.SATISF00, 0) then 'SATISF00 = ' + dbo.fn_SQLDecValueForString (i.SATISF00, 0) + ',' else '' end +
    case when dbo.fn_SQLDecValueForString (d.KSATISF00, 0) <> dbo.fn_SQLDecValueForString (i.KSATISF00, 0) then 'KSATISF00 = ' + dbo.fn_SQLDecValueForString (i.KSATISF00, 0) + ',' else '' end +
    case when dbo.fn_SQLDecValueForString (d.SATISF01, 0) <> dbo.fn_SQLDecValueForString (i.SATISF01, 0) then 'SATISF01 = ' + dbo.fn_SQLDecValueForString (i.SATISF01, 0) + ',' else '' end +
    case when dbo.fn_SQLDecValueForString (d.KSATISF01, 0) <> dbo.fn_SQLDecValueForString (i.KSATISF01, 0) then 'KSATISF01 = ' + dbo.fn_SQLDecValueForString (i.KSATISF01, 0) + ',' else '' end +
    case when dbo.fn_SQLDecValueForString (d.SATISF02, 0) <> dbo.fn_SQLDecValueForString (i.SATISF02, 0) then 'SATISF02 = ' + dbo.fn_SQLDecValueForString (i.SATISF02, 0) + ',' else '' end +
    case when dbo.fn_SQLDecValueForString (d.KSATISF02, 0) <> dbo.fn_SQLDecValueForString (i.KSATISF02, 0) then 'KSATISF02 = ' + dbo.fn_SQLDecValueForString (i.KSATISF02, 0) + ',' else '' end +
    case when dbo.fn_SQLDecValueForString (d.SATISF03, 0) <> dbo.fn_SQLDecValueForString (i.SATISF03, 0) then 'SATISF03 = ' + dbo.fn_SQLDecValueForString (i.SATISF03, 0) + ',' else '' end +
    case when dbo.fn_SQLDecValueForString (d.KSATISF03, 0) <> dbo.fn_SQLDecValueForString (i.KSATISF03, 0) then 'KSATISF03 = ' + dbo.fn_SQLDecValueForString (i.KSATISF03, 0) + ',' else '' end +
    case when dbo.fn_SQLDecValueForString (d.SATISF04, 0) <> dbo.fn_SQLDecValueForString (i.SATISF04, 0) then 'SATISF04 = ' + dbo.fn_SQLDecValueForString (i.SATISF04, 0) + ',' else '' end +
    case when dbo.fn_SQLDecValueForString (d.KSATISF04, 0) <> dbo.fn_SQLDecValueForString (i.KSATISF04, 0) then 'KSATISF04 = ' + dbo.fn_SQLDecValueForString (i.KSATISF04, 0) + ',' else '' end +
    case when dbo.fn_SQLDecValueForString (d.SATISF05, 0) <> dbo.fn_SQLDecValueForString (i.SATISF05, 0) then 'SATISF05 = ' + dbo.fn_SQLDecValueForString (i.SATISF05, 0) + ',' else '' end +
    case when dbo.fn_SQLDecValueForString (d.KSATISF05, 0) <> dbo.fn_SQLDecValueForString (i.KSATISF05, 0) then 'KSATISF05 = ' + dbo.fn_SQLDecValueForString (i.KSATISF05, 0) + ',' else '' end +
    case when dbo.fn_SQLStrValueForString (d.cinsKontrol, 0) <> dbo.fn_SQLStrValueForString (i.cinsKontrol, 0) then 'cinsKontrol = ' + dbo.fn_SQLStrValueForString (i.cinsKontrol, 0) + ',' else '' end +
    case when dbo.fn_SQLIntValueForString (d.yasKontrol, 0) <> dbo.fn_SQLIntValueForString (i.yasKontrol, 0) then 'yasKontrol = ' + dbo.fn_SQLIntValueForString (i.yasKontrol, 0) + ',' else '' end +
    case when dbo.fn_SQLStrValueForString (d.faturalanamazlar, 0) <> dbo.fn_SQLStrValueForString (i.faturalanamazlar, 0) then 'faturalanamazlar = ' + dbo.fn_SQLStrValueForString (i.faturalanamazlar, 0) + ',' else '' end +
    case when dbo.fn_SQLIntValueForString (d.medulaGitsin, 0) <> dbo.fn_SQLIntValueForString (i.medulaGitsin, 0) then 'medulaGitsin = ' + dbo.fn_SQLIntValueForString (i.medulaGitsin, 0) + ',' else '' end +
    case when dbo.fn_SQLIntValueForString (d.HemenKaydet, 0) <> dbo.fn_SQLIntValueForString (i.HemenKaydet, 0) then 'HemenKaydet = ' + dbo.fn_SQLIntValueForString (i.HemenKaydet, 0) + ',' else '' end +
    case when dbo.fn_SQLStrValueForString (d.Cihaz, 0) <> dbo.fn_SQLStrValueForString (i.Cihaz, 0) then 'Cihaz = ' + dbo.fn_SQLStrValueForString (i.Cihaz, 0) + ',' else '' end +
    case when dbo.fn_SQLIntValueForString (d.AyaktanMaxAdet, 0) <> dbo.fn_SQLIntValueForString (i.AyaktanMaxAdet, 0) then 'AyaktanMaxAdet = ' + dbo.fn_SQLIntValueForString (i.AyaktanMaxAdet, 0) + ',' else '' end +
    case when dbo.fn_SQLIntValueForString (d.HizmetDisaridanAlinir, 0) <> dbo.fn_SQLIntValueForString (i.HizmetDisaridanAlinir, 0) then 'HizmetDisaridanAlinir = ' + dbo.fn_SQLIntValueForString (i.HizmetDisaridanAlinir, 0) + ',' else '' end +
    case when dbo.fn_SQLIntValueForString (d.IstemFormSira, 0) <> dbo.fn_SQLIntValueForString (i.IstemFormSira, 0) then 'IstemFormSira = ' + dbo.fn_SQLIntValueForString (i.IstemFormSira, 0) + ',' else '' end +
    case when dbo.fn_SQLStrValueForString (d.TUR, 0) <> dbo.fn_SQLStrValueForString (i.TUR, 0) then 'TUR = ' + dbo.fn_SQLStrValueForString (i.TUR, 0) + ',' else '' end +
    case when dbo.fn_SQLStrValueForString (d.DisFirma, 0) <> dbo.fn_SQLStrValueForString (i.DisFirma, 0) then 'DisFirma = ' + dbo.fn_SQLStrValueForString (i.DisFirma, 0) + ',' else '' end), 2, 8000)) +
    char (13) + char (10) + 'WHERE CODE' + dbo.fn_SQLStrValueForString (i.CODE, 1) 
  from inserted i
  inner join deleted d on d.CODE = i.CODE
  inner join 
    (SELECT CODE
     FROM
     (select TANIM, GRUP, CODE, OZELKOD, NAME1, KDV, BUT, PARSAYI, MATERYAL, LABTIPI, GELIRGRUBU, OTOISLE, DRYUZDE, PHYUZDE, HAVUZ, KKODU, PAKETLEGIRILIR, ListedeGorunsun, UyariMesaji, SeansAcilir, SATISF00, KSATISF00, SATISF01, KSATISF01, SATISF02, KSATISF02, SATISF03, KSATISF03, SATISF04, KSATISF04, SATISF05, KSATISF05, cinsKontrol, yasKontrol, faturalanamazlar, medulaGitsin, HemenKaydet, Cihaz, AyaktanMaxAdet, HizmetDisaridanAlinir, IstemFormSira, TUR, DisFirma
      from
      (select -1 x, TANIM, GRUP, CODE, OZELKOD, NAME1, KDV, BUT, PARSAYI, MATERYAL, LABTIPI, GELIRGRUBU, OTOISLE, DRYUZDE, PHYUZDE, HAVUZ, KKODU, PAKETLEGIRILIR, ListedeGorunsun, UyariMesaji, SeansAcilir, SATISF00, KSATISF00, SATISF01, KSATISF01, SATISF02, KSATISF02, SATISF03, KSATISF03, SATISF04, KSATISF04, SATISF05, KSATISF05, cinsKontrol, yasKontrol, faturalanamazlar, medulaGitsin, HemenKaydet, Cihaz, AyaktanMaxAdet, HizmetDisaridanAlinir, IstemFormSira, TUR, DisFirma
       from deleted
       union all
       select 1 x, TANIM, GRUP, CODE, OZELKOD, NAME1, KDV, BUT, PARSAYI, MATERYAL, LABTIPI, GELIRGRUBU, OTOISLE, DRYUZDE, PHYUZDE, HAVUZ, KKODU, PAKETLEGIRILIR, ListedeGorunsun, UyariMesaji, SeansAcilir, SATISF00, KSATISF00, SATISF01, KSATISF01, SATISF02, KSATISF02, SATISF03, KSATISF03, SATISF04, KSATISF04, SATISF05, KSATISF05, cinsKontrol, yasKontrol, faturalanamazlar, medulaGitsin, HemenKaydet, Cihaz, AyaktanMaxAdet, HizmetDisaridanAlinir, IstemFormSira, TUR, DisFirma
       from inserted) U
      group by TANIM, GRUP, CODE, OZELKOD, NAME1, KDV, BUT, PARSAYI, MATERYAL, LABTIPI, GELIRGRUBU, OTOISLE, DRYUZDE, PHYUZDE, HAVUZ, KKODU, PAKETLEGIRILIR, ListedeGorunsun, UyariMesaji, SeansAcilir, SATISF00, KSATISF00, SATISF01, KSATISF01, SATISF02, KSATISF02, SATISF03, KSATISF03, SATISF04, KSATISF04, SATISF05, KSATISF05, cinsKontrol, yasKontrol, faturalanamazlar, medulaGitsin, HemenKaydet, Cihaz, AyaktanMaxAdet, HizmetDisaridanAlinir, IstemFormSira, TUR, DisFirma
      having sum (x) <> 0)w
     group by CODE) u on u.CODE = i.CODE
  set nocount off
END
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'HIZMET_TakipTrg'
GO
COMMIT
GO
