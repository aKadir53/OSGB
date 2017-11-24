BEGIN TRAN
GO
-- [CMPTR] - [24.10.2017 10:40:43]
--Bos
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_SearchStringInDB'
GO
COMMIT
GO
