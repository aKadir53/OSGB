BEGIN TRAN
GO
-- [CMPTR] - [19.10.2017 15:42:53]
--Bos
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_DoktorMuayaneDagilimPIVOT'
GO
COMMIT
GO
