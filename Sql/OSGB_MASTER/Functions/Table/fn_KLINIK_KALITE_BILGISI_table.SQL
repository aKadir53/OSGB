BEGIN TRAN
GO
-- [CMPTR] - [08.08.2017 22:43:29]
--Bos
GO
exec sp_vw_sys_upd 'TF', 'dbo', 'fn_KLINIK_KALITE_BILGISI_table'
GO
COMMIT
GO
