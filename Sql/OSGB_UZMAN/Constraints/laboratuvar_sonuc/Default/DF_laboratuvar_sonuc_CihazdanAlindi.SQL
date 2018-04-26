BEGIN TRAN
GO
((0))
GO
exec sp_vw_sys_upd 'D ', 'dbo', 'DF_laboratuvar_sonuc_CihazdanAlindi'
GO
COMMIT
GO
