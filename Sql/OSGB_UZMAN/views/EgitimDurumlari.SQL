BEGIN TRAN
GO
-- [CMPTR2] - [30.07.2017 01:34:33]
EXECUTE sp_addextendedproperty N'MS_DiagramPane1', @v, N'SCHEMA', N'dbo', N'VIEW', N'EgitimDurumlari', NULL, NULL
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'EgitimDurumlari'
GO
COMMIT
GO
