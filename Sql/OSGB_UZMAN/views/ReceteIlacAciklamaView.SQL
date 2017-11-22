BEGIN TRAN
GO
ALTER VIEW dbo.ReceteIlacAciklamaView
AS
SELECT     rd.ReceteID, rd.ilacKodu, rd.ilacAdi, ria.receteDetayId, ria.aciklamaTip, ria.aciklama, ria.id AS Expr1
FROM         dbo.ReceteDetay AS rd 
    LEFT OUTER JOIN dbo.ReceteIlacAciklama AS ria ON ria.receteDetayId = rd.id   
WHERE     (ria.aciklama IS NOT NULL)

UNION ALL

SELECT     rd.iD, '', '', ria.receteId, ria.aciklamaTip, ria.aciklama, ria.id AS Expr1
FROM         dbo.Recete AS rd 
    LEFT OUTER JOIN dbo.ReceteAciklama AS ria ON ria.receteId = rd.id   
WHERE     (ria.aciklama IS NOT NULL)
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'ReceteIlacAciklamaView'
GO
COMMIT
GO
