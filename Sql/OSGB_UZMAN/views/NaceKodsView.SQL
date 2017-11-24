BEGIN TRAN
GO
-- [CMPTR2] - [26.09.2017 12:31:30]
EXECUTE sp_addextendedproperty N'MS_DiagramPaneCount', @v, N'SCHEMA', N'dbo', N'VIEW', N'NaceKodsView', NULL, NULL
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'NaceKodsView'
GO
COMMIT
GO
