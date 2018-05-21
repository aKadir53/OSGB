BEGIN TRAN
GO
ALTER VIEW [dbo].[SIRKET_SUBE_EKIP_View]
AS
SELECT        SE.id AS kod, SE.AdiSoyadi, GT.tanimi, SE.eMail, SE.Telefon, SE.TCKimlikNo, SE.SirketKod, SE.SubeKod, SE.ISGEkipId, SE.ISGEkipGorevID, ET.tanimi AS Ekiptanimi, SE.Aktif, SE.AtamaTarihi
FROM            dbo.SIRKET_SUBE_EKIP AS SE INNER JOIN
                         dbo.FirmaISGEkipGorevTnm AS GT ON GT.kod = SE.ISGEkipGorevID INNER JOIN
                         dbo.FirmaISGEkipTnm AS ET ON ET.kod = SE.ISGEkipId
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'SIRKET_SUBE_EKIP_View'
GO
COMMIT
GO
