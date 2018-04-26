BEGIN TRAN
GO
(getdate())
GO
exec sp_vw_sys_upd 'D ', 'dbo', 'DF_laboratuvar_sonuc_olusturmatarihi'
GO
COMMIT
GO
