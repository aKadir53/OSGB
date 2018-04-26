BEGIN TRAN
GO
(getdate())
GO
exec sp_vw_sys_upd 'D ', 'dbo', 'DF_Kontrol_Islem_tarih'
GO
COMMIT
GO
