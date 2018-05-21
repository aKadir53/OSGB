BEGIN TRAN
GO
(getdate())
GO
exec sp_vw_sys_upd 'D ', 'dbo', 'DF_firmaYillikEgitimPlani_Date_create'
GO
COMMIT
GO
