BEGIN TRAN
GO
((3))
GO
exec sp_vw_sys_upd 'D ', 'dbo', 'DF_ilacListesi_peryot'
GO
COMMIT
GO
