BEGIN TRAN
GO
((0))
GO
exec sp_vw_sys_upd 'D ', 'dbo', 'DF_cariHareketler_alacak'
GO
COMMIT
GO
