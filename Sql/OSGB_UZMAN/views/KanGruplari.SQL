BEGIN TRAN
GO
ALTER VIEW dbo.KanGruplari
AS
SELECT     SLX AS kod, SLT AS Grup
FROM         dbo.Parametreler
WHERE     (SLK = 'KG') AND (SLB = 'KanGruplari')
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'KanGruplari'
GO
COMMIT
GO
