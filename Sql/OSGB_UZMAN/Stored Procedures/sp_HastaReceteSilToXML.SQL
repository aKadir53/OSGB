BEGIN TRAN
GO
-- [CMPTR] - [05.10.2017 10:53:19]
--Bos
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_HastaReceteSilToXML'
GO
COMMIT
GO
