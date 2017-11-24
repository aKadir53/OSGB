BEGIN TRAN
GO
-- [CMPTR] - [16.10.2017 11:10:07]
--Bos
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_frmDoktorPersonelListesi'
GO
COMMIT
GO
