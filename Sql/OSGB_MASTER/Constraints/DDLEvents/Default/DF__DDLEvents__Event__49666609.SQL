BEGIN TRAN
GO
(getdate())
GO
exec sp_vw_sys_upd 'D ', 'dbo', 'DF__DDLEvents__Event__49666609'
GO
COMMIT
GO
