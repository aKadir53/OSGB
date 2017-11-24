BEGIN TRAN
GO
-- [CMPTR2] - [30.10.2017 14:46:35]
EXECUTE sp_addextendedproperty N'MS_DiagramPane1', @v, N'SCHEMA', N'dbo', N'VIEW', N'ReceteKullanimYol', NULL, NULL
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'ReceteKullanimYol'
GO
COMMIT
GO
