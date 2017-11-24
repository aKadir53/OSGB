BEGIN TRAN
GO
-- [CMPTR] - [05.06.2017 10:25:46]
--Bos
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_HastaGelisleri'
GO
COMMIT
GO
