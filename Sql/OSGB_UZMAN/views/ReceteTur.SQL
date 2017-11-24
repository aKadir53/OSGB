BEGIN TRAN
GO
-- [CMPTR2] - [15.09.2017 13:44:41]
EXECUTE sp_addextendedproperty N'MS_DiagramPane1', @v, N'SCHEMA', N'dbo', N'VIEW', N'ReceteTur', NULL, NULL
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'ReceteTur'
GO
COMMIT
GO
