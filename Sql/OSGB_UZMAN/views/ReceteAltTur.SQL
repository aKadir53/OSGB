BEGIN TRAN
GO
-- [CMPTR2] - [15.09.2017 13:45:17]
EXECUTE sp_addextendedproperty N'MS_DiagramPaneCount', @v, N'SCHEMA', N'dbo', N'VIEW', N'ReceteAltTur', NULL, NULL
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'ReceteAltTur'
GO
COMMIT
GO
