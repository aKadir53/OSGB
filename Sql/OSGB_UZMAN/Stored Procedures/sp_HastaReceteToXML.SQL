BEGIN TRAN
GO
-- [CMPTR] - [05.10.2017 10:53:53]
--Bos
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_HastaReceteToXML'
GO
COMMIT
GO
