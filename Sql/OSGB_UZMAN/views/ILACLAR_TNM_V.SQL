BEGIN TRAN
GO
ALTER VIEW dbo.ILACLAR_TNM_V
AS
SELECT        I.kod, I.GRUP, I.kisaTanimi, I.tanimi, I.unite, I.firma, I.etkenMadde, I.RecTipi, I.ubbcode, I.BUT, I.tetkikSonuc, I.aktif, I.tip, I.Tani, I.id, g.tanimi AS grupKoduTanimi
FROM            dbo.ILACLAR_ANAGRUP_TNM AS g INNER JOIN
                         dbo.ILACLAR_TNM AS I ON I.GRUP = g.kod
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'ILACLAR_TNM_V'
GO
COMMIT
GO
