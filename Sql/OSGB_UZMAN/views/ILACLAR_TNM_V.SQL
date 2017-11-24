BEGIN TRAN
GO
-- [CMPTR2] - [15.09.2017 15:23:57]
EXECUTE sp_updateextendedproperty N'MS_DiagramPaneCount', @v, N'SCHEMA', N'dbo', N'VIEW', N'ILACLAR_TNM_V', NULL, NULL
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'ILACLAR_TNM_V'
GO
COMMIT
GO
