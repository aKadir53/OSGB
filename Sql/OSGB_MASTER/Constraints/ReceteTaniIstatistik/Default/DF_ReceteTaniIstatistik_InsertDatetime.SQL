BEGIN TRAN
GO
(getdate())
GO
exec sp_vw_sys_upd 'D ', 'dbo', 'DF_ReceteTaniIstatistik_InsertDatetime'
GO
COMMIT
GO
