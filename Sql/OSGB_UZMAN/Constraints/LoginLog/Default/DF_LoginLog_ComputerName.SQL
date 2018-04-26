BEGIN TRAN
GO
(host_name())
GO
exec sp_vw_sys_upd 'D ', 'dbo', 'DF_LoginLog_ComputerName'
GO
COMMIT
GO
