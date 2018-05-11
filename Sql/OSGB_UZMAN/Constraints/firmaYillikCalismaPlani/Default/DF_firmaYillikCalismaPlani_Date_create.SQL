BEGIN TRAN
GO
(getdate())
GO
exec sp_vw_sys_upd 'D ', 'dbo', 'DF_firmaYillikCalismaPlani_Date_create'
GO
COMMIT
GO
