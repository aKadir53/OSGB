BEGIN TRAN
GO
ALTER VIEW [dbo].[lab_gruplari]
AS
SELECT     *
FROM         dbo.Parametreler
WHERE     (SLK = '53')
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'lab_gruplari'
GO
COMMIT
GO
