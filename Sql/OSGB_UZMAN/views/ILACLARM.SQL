BEGIN TRAN
GO
ALTER VIEW dbo.ILACLARM
AS
SELECT     il.barkod AS CODE, il.ilacAdi AS NAME1, I.kat_id, I.ust_id, I.CODE AS ILACLARCODE, I.GRUP, ISNULL(I.Ilac, 1) AS Ilac, I.NAME1 AS ILACLARNAME1, I.NAME2, I.UNITE, 
                      I.FIRMA, I.FAR_KOD, I.JEN_KOD, I.ETKENMADDE, I.RECTIPI, I.UBBCODE, I.BUT, I.tetkikSonuc, il.sgkilacKodu, il.ambalajMiktar, il.tekDozMiktar, il.aktif, il.ReceteTip, 
                      il.ICD, il.doz, il.adet, il.kulYol
FROM         dbo.ilacListesi AS il LEFT OUTER JOIN
                      dbo.ILACLAR AS I ON I.CODE = il.barkod
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'ILACLARM'
GO
COMMIT
GO
