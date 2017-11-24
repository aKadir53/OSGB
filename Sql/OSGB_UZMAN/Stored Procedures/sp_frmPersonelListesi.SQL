BEGIN TRAN
GO
-- [CMPTR] - [24.09.2017 16:36:02]
--Bos
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_frmPersonelListesi'
GO
COMMIT
GO
