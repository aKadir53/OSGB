BEGIN TRAN
GO
(getdate())
GO
exec sp_vw_sys_upd 'D ', 'dbo', 'DF_cariHareketler_date_create'
GO
COMMIT
GO
