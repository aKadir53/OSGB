BEGIN TRAN
GO
([dbo].[fn_CiftModulIslemEngVar]()=(0))
GO
exec sp_vw_sys_upd 'C ', 'dbo', 'UC_ModulIslemEng'
GO
COMMIT
GO
