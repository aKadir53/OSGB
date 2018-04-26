BEGIN TRAN
GO
('T')
GO
exec sp_vw_sys_upd 'D ', 'dbo', 'DF_KURADR_ANLASMADURUMU'
GO
COMMIT
GO
