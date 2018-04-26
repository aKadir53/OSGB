BEGIN TRAN
GO
(getdate())
GO
exec sp_vw_sys_upd 'D ', 'dbo', 'DF_SahaGozlemRaporlari_Date_Create'
GO
COMMIT
GO
