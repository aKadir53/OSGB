BEGIN TRAN
GO
-- [CMPTR] - [24.10.2017 15:59:34]
--Bos
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_frmPersonelEgitim'
GO
COMMIT
GO
