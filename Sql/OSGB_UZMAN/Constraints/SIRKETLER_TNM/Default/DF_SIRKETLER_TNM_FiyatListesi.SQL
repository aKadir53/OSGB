BEGIN TRAN
GO
((0))
GO
exec sp_vw_sys_upd 'D ', 'dbo', 'DF_SIRKETLER_TNM_FiyatListesi'
GO
COMMIT
GO
