BEGIN TRAN
GO
ALTER VIEW dbo.ReceteKullanimYol
AS
SELECT        SLT AS tanimi, SLX AS kod
FROM            dbo.Parametreler
WHERE        (SLK = 'RY')
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'ReceteKullanimYol'
GO
COMMIT
GO
