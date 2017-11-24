BEGIN TRAN
GO
-- [CMPTR] - [14.09.2017 13:45:17]
--Bos
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'ReceteAltTur'
GO
COMMIT
GO
