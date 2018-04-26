BEGIN TRAN
GO
('E')
GO
exec sp_vw_sys_upd 'D ', 'dbo', 'DF_Hareketler_ISLENDIMI'
GO
COMMIT
GO
