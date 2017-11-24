BEGIN TRAN
GO
-- [CMPTR] - [01.06.2017 15:50:10]
--Bos
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_GelisKaydet'
GO
COMMIT
GO
