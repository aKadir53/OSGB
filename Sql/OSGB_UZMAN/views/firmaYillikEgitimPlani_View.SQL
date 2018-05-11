BEGIN TRAN
GO
ALTER VIEW dbo.firmaYillikEgitimPlani_View
AS
SELECT        P.id, P.sirketKod, P.Date_create, P.hazirlayan, P.doktor, D.FirmaYillikEgitimPlanID, D.id AS DetayId, D.egitimTanimi, D.egitimKonulari, D.egitimeKatilacaklar, D.sure, D.PTarih, D.GTarih, D.egitimVerenIGU, 
                         D.egitimVerenDoktor, D.aciklama, I.kod AS IGUkod, I.tanimi AS IGUAd, Dr.kod AS DrKod, Dr.tanimi AS DrAd
FROM            dbo.firmaYillikEgitimPlani AS P INNER JOIN
                         dbo.firmaYillikEgitimPlanDetay AS D ON P.id = D.FirmaYillikEgitimPlanID INNER JOIN
                         dbo.IGU AS I ON I.kod = P.hazirlayan INNER JOIN
                         dbo.DoktorlarT AS Dr ON Dr.kod = P.doktor
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'firmaYillikEgitimPlani_View'
GO
COMMIT
GO
