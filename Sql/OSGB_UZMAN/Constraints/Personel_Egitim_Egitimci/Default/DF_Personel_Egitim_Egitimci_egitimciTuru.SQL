BEGIN TRAN
GO
((1))
GO
exec sp_vw_sys_upd 'D ', 'dbo', 'DF_Personel_Egitim_Egitimci_egitimciTuru'
GO
COMMIT
GO
