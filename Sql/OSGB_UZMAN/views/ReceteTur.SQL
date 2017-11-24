BEGIN TRAN
GO
ALTER VIEW dbo.ReceteTur
AS
SELECT        SLT AS tanimi, SLB AS kod
FROM            dbo.Parametreler
WHERE        (SLK = 'RT')
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'ReceteTur'
GO
COMMIT
GO
