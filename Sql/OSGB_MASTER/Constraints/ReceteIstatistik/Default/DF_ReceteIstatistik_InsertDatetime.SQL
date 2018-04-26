BEGIN TRAN
GO
(getdate())
GO
exec sp_vw_sys_upd 'D ', 'dbo', 'DF_ReceteIstatistik_InsertDatetime'
GO
COMMIT
GO
