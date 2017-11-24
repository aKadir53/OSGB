BEGIN TRAN
GO
ALTER VIEW dbo.VW_Spler
AS
SELECT        id, name
FROM            sys.sysobjects
WHERE        (xtype = 'P') AND (category = 0)
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'VW_Spler'
GO
COMMIT
GO
