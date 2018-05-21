BEGIN TRAN
GO
ALTER VIEW dbo.SIRKETLER_TNM_view
WITH SCHEMABINDING 
AS
SELECT        ST.SirketKod, ST.tanimi, ST.NaceKod, ST.anaFaliyet, ST.tehlikeSinifi, ST.SGKKod, ST.calisanSayisi, ST.Tel1, ST.Tel2, ST.Fax, ST.Yetkili, ST.yetkiliTel, ST.yetkilimail, ST.SEHIR, ST.ILCE, ST.MAHALLE, ST.CADDE, 
                         ST.BUCAK, ST.KOY, ST.SOKAK, ST.Adres, ST.VD, ST.VN, ST.Istigal, ST.IsguvenlikUzman, ST.SorunluRevirPersonel, ST.Aktif, ST.User_ID, ST.Date_Create, ST.IsyeriSicilNo, ST.BolgeMudurlukSicilNo, SBB.IGU, 
                         SBB.DigerSaglikPers, SBB.subeKod, SBB.subeTanim, SBB.subeDoktor
FROM            dbo.SIRKETLER_TNM AS ST LEFT OUTER JOIN
                             (SELECT        sirketKod, subeKod, subeTanim, subeDoktor, IGU, DigerSaglikPers
                               FROM            dbo.SIRKET_SUBE_TNM
                               WHERE        (Pasif IS NULL OR
                                                         Pasif = 0) AND (NOT (subeDoktor IS NULL)) OR
                                                         (Pasif IS NULL OR
                                                         Pasif = 0) AND (NOT (IGU IS NULL)) OR
                                                         (Pasif IS NULL OR
                                                         Pasif = 0) AND (NOT (DigerSaglikPers IS NULL))
                               GROUP BY sirketKod, subeKod, subeTanim, subeDoktor, IGU, DigerSaglikPers) AS SBB ON SBB.sirketKod = ST.SirketKod
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'SIRKETLER_TNM_view'
GO
COMMIT
GO
