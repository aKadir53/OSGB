BEGIN TRAN
GO
-- [CMPTR2] - [11.10.2017 15:33:39]
DROP VIEW [dbo].[ReceteKullanimYol]
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'ReceteKullanimYol'
GO
COMMIT
GO
