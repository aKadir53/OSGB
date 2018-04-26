BEGIN TRAN
GO
(NULL)
GO
exec sp_vw_sys_upd 'D ', 'dbo', 'DF_DokumanYonetim_Dokuman'
GO
COMMIT
GO
