BEGIN TRAN
GO
-- [CMPTR2] - [24.10.2017 12:21:08]
EXECUTE sp_addextendedproperty N'MS_DiagramPaneCount', @v, N'SCHEMA', N'dbo', N'VIEW', N'PersonelKartView', NULL, NULL
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'PersonelKartView'
GO
COMMIT
GO
