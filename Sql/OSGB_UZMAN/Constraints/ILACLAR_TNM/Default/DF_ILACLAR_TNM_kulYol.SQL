BEGIN TRAN
GO
((1))
GO
exec sp_vw_sys_upd 'D ', 'dbo', 'DF_ILACLAR_TNM_kulYol'
GO
COMMIT
GO
