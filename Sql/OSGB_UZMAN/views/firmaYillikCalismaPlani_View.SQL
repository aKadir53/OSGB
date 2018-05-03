BEGIN TRAN
GO
CREATE VIEW dbo.firmaYillikCalismaPlani_View
AS
SELECT        P.id, P.sirketKod, P.Date_create, P.hazirlayan, P.doktor, D.FirmaYillikCalismaPlanID, D.id AS Expr1, D.faliyetid, D.peryod, D.ocak, D.subat, D.mart, D.nisan, D.mayis, D.haziran, D.temmuz, D.agustos, D.eylul, 
                         D.ekim, D.kasim, D.aralik, D.ocak_R, D.subat_R, D.mart_R, D.nisan_R, D.mayis_R, D.haziran_R, D.temmuz_R, D.agustos_R, D.eylul_R, D.ekim_R, D.kasim_R, D.aralik_R, D.sorumlu1, D.sorumlu1Konu, 
                         D.sorumlu2, D.sorumlu2Konu, FK.tanimi AS faliyetAdi, I.kod AS IGUkod, I.tanimi AS IGUAd, Dr.kod AS DrKod, Dr.tanimi AS DrAd
FROM            dbo.firmaYillikCalismaPlani AS P INNER JOIN
                         dbo.firmaYillikCalismaPlanDetay AS D ON P.id = D.FirmaYillikCalismaPlanID INNER JOIN
                         dbo.IGU AS I ON I.kod = P.hazirlayan INNER JOIN
                         dbo.DoktorlarT AS Dr ON Dr.kod = P.doktor INNER JOIN
                         dbo.FaaliyetKonulari AS FK ON FK.kod = D.faliyetid
GO
-- deðiþiklik takip sistemi güncellemesi
exec sp_vw_sys_upd 'V ', 'dbo', 'firmaYillikCalismaPlani_View'
GO
COMMIT -- Rollback
GO
select * 
from firmaYillikCalismaPlani_View
