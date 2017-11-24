BEGIN TRAN
GO
ALTER VIEW dbo.EgitimDurumlari
AS
SELECT     SLB AS kod, SLT AS Tanimi
FROM         dbo.Parametreler
WHERE     (SLK = 'ED')
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'EgitimDurumlari'
GO
COMMIT
GO
