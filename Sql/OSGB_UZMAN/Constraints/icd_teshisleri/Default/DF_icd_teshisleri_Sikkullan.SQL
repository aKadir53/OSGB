BEGIN TRAN
GO
((0))
GO
exec sp_vw_sys_upd 'D ', 'dbo', 'DF_icd_teshisleri_Sikkullan'
GO
COMMIT
GO
