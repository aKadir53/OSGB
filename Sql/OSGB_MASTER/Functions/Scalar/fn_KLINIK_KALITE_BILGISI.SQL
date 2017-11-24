BEGIN TRAN
GO
-- [CMPTR] - [08.08.2017 03:10:32]
--Bos
GO
exec sp_vw_sys_upd 'FN', 'dbo', 'fn_KLINIK_KALITE_BILGISI'
GO
COMMIT
GO
