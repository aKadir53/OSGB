BEGIN TRAN
GO
-- [CMPTR2] - [20.10.2017 19:26:49]
EXECUTE sp_addextendedproperty N'MS_DiagramPane1', @v, N'SCHEMA', N'dbo', N'VIEW', N'VW_Spler', NULL, NULL
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'VW_Spler'
GO
COMMIT
GO
