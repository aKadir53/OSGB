BEGIN TRAN
GO
-- [CMPTR] - [25.09.2017 14:47:48]
--Bos
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_DosyaNoYaz'
GO
COMMIT
GO
