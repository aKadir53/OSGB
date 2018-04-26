BEGIN TRAN
GO
(getdate())
GO
exec sp_vw_sys_upd 'D ', 'dbo', 'DF_GuncellemeTakipScriptHavuz_LogTime'
GO
COMMIT
GO
