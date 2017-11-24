BEGIN TRAN
GO
-- [CMPTR2] - [30.07.2017 01:34:32]
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
