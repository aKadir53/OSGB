BEGIN TRAN
GO
CREATE VIEW [dbo].[Kontrol_IslemDetay_View]
AS
SELECT        ID.kontrolID, ID.id, ID.SoruId, ID.Soru, ID.puan, ID.Termin, ID.Sorumlu, ID.Oneri, P.kod, P.tanimi, 'Durum : ' + ISNULL(P.tanimi, '') + ' - Termin : ' + ISNULL(CONVERT(varchar, ID.Termin, 103), '') AS Sonuc
FROM            dbo.Kontrol_IslemDetay AS ID LEFT OUTER JOIN
                         dbo.Kontrol_Islem_Puan AS P ON P.kod = ID.puan
GO
-- deðiþiklik takip sistemi güncellemesi
exec sp_vw_sys_upd 'V ', 'dbo', 'Kontrol_IslemDetay_View'
GO
COMMIT -- Rollback
GO
select * 
from isDurum_View
