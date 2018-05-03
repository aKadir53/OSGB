BEGIN TRAN
GO
/* Cihaz kontrol formlarý baþlýk view'ý*/
ALTER VIEW [dbo].[CihazKontrol_view]
WITH SCHEMABINDING 
AS
SELECT        ck.id, ck.sirketKod, S.tanimi AS Sirket, ck.FaaliyetAlani, ck.TehlikeSinifi, ck.Tarih, ck.KontrolCihaz, C.tanimi AS CihazAciklamasi, ct.tanimi AS CihazTuru, ck.sorumluYonetici, ck.sorumlu, ck.IGU
FROM            dbo.CihazKontrol AS ck LEFT OUTER JOIN
                         dbo.SIRKETLER_TNM AS S ON S.SirketKod = ck.sirketKod LEFT OUTER JOIN
                         dbo.Cihaz AS C ON C.kod = ck.KontrolCihaz LEFT OUTER JOIN
                         dbo.CihazTurleri AS ct ON ct.kod = C.cihazTurKod
GO
-- deðiþiklik takip sistemi güncellemesi
exec sp_vw_sys_upd 'V ', 'dbo', 'CihazKontrol_view'
GO
COMMIT -- Rollback
GO
select * 
from CihazKontrol_view
