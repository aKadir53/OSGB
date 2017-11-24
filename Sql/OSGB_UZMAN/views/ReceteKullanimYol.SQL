BEGIN TRAN
GO
-- [CMPTR] - [14.09.2017 13:06:49]
--Bos
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'ReceteKullanimYol'
GO
COMMIT
GO
