BEGIN TRAN
GO
ALTER VIEW dbo.ReceteAltTur
AS
SELECT        SLT AS tanimi, SLB AS kod
FROM            dbo.Parametreler
WHERE        (SLK = 'AT')
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'ReceteAltTur'
GO
COMMIT
GO
