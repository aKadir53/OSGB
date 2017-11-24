BEGIN TRAN
GO
-- [CMPTR] - [31.10.2017 09:16:55]
--Bos
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_SearchStringInDB'
GO
COMMIT
GO
