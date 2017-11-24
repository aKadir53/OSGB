BEGIN TRAN
GO
-- [CMPTR2] - [15.09.2017 13:44:41]
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
