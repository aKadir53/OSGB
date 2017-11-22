BEGIN TRAN
GO
ALTER VIEW dbo.ILACLARMM
AS
SELECT     il.barkod AS CODE, il.ilacAdi AS NAME1, I.kat_id, I.ust_id, I.CODE AS ILACLARCODE, I.GRUP, ISNULL(I.Ilac, 1) AS Ilac, I.NAME1 AS ILACLARNAME1, I.NAME2, I.UNITE, I.FIRMA, I.FAR_KOD, 
                      I.JEN_KOD, I.ETKENMADDE, I.RECTIPI, I.UBBCODE, I.BUT, I.tetkikSonuc, il.sgkilacKodu, il.ambalajMiktar, il.tekDozMiktar, il.aktif, il.ReceteTip, il.ICD, il.doz, il.adet, (CASE WHEN isnull(I.FAR_KOD, '') 
                      = '' THEN il.kulYol ELSE I.FAR_KOD END) AS kulYol, 3 AS peryotR, 1 AS pAdet
FROM         dbo.ilacListesi AS il LEFT OUTER JOIN
                      dbo.ILACLAR AS I ON I.CODE = il.barkod
WHERE     (il.Sikkullan = 1)
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'ILACLARMM'
GO
COMMIT
GO
