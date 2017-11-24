BEGIN TRAN
GO
ALTER VIEW dbo.NaceKodsView
AS
SELECT        g.kod AS grupKodu, g.tanimi AS grupTanimi, k.NACEKODU, k.NACETANIMI, k.TEHLIKESINIFI
FROM            dbo.NaceKodsGrups AS g INNER JOIN
                         dbo.naceKods AS k ON g.kod = k.Grup
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'NaceKodsView'
GO
COMMIT
GO
