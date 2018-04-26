BEGIN TRAN
GO
(getdate())
GO
exec sp_vw_sys_upd 'D ', 'dbo', 'DF__DDLEvents__Event__6602A4B7'
GO
COMMIT
GO
