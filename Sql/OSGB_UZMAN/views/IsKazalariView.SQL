BEGIN TRAN
GO
-- [CMPTR2] - [24.10.2017 10:53:40]
EXECUTE sp_addextendedproperty N'MS_DiagramPaneCount', @v, N'SCHEMA', N'dbo', N'VIEW', N'IsKazalariView', NULL, NULL
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'IsKazalariView'
GO
COMMIT
GO
