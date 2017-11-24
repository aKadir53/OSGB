BEGIN TRAN
GO
-- [CMPTR2] - [09.08.2017 03:11:53]
EXEC [DIALIZ].dbo.sp_rename @objname = N'[dbo].[fn_KLINIK_KALITE_BILGISI]', @newname = N'fn_KLINIK_KALITE_BILGISI_table', @objtype = N'OBJECT'
GO
exec sp_vw_sys_upd 'FN', 'dbo', 'fn_KLINIK_KALITE_BILGISI'
GO
COMMIT
GO
