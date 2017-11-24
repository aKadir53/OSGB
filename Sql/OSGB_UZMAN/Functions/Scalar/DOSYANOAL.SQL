BEGIN TRAN
GO
-- [CMPTR2] - [26.09.2017 13:24:54]
EXEC [OSGB_UZMAN].dbo.sp_rename @objname = N'[dbo].[DOSYANOAL]', @newname = N'SIRKETKODAL', @objtype = N'OBJECT'
GO
exec sp_vw_sys_upd 'FN', 'dbo', 'DOSYANOAL'
GO
COMMIT
GO
