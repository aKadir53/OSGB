BEGIN TRAN
GO
((0))
GO
exec sp_vw_sys_upd 'D ', 'dbo', 'DF_SIRKET_SUBE_TNM_Pasif'
GO
COMMIT
GO
