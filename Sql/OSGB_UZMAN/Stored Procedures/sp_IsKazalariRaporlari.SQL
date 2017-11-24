BEGIN TRAN
GO
-- [CMPTR] - [26.10.2017 11:21:59]
--Bos
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_IsKazalariRaporlari'
GO
COMMIT
GO
