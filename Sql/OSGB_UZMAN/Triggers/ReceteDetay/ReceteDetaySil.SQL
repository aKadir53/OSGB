BEGIN TRAN
GO
-- [CMPTR] - [23.04.2017 19:27:58]
--Bos
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'ReceteDetaySil'
GO
COMMIT
GO
