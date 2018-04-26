BEGIN TRAN
GO
((0))
GO
exec sp_vw_sys_upd 'D ', 'dbo', 'DF_DisAktarim_Personel_PasifYap'
GO
COMMIT
GO
