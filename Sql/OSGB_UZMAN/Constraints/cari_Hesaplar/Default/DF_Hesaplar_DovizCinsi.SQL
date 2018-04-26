BEGIN TRAN
GO
((1))
GO
exec sp_vw_sys_upd 'D ', 'dbo', 'DF_Hesaplar_DovizCinsi'
GO
COMMIT
GO
