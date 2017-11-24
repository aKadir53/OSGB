BEGIN TRAN
GO
-- [CMPTR2] - [15.09.2017 13:06:49]
EXECUTE sp_updateextendedproperty N'MS_DiagramPaneCount', @v, N'SCHEMA', N'dbo', N'VIEW', N'ReceteKullanimYol', NULL, NULL
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'ReceteKullanimYol'
GO
COMMIT
GO
