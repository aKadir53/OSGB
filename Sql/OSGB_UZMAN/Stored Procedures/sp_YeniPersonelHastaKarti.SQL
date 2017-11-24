BEGIN TRAN
GO
-- [CMPTR] - [13.10.2017 17:55:04]
--Bos
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_YeniPersonelHastaKarti'
GO
COMMIT
GO
