BEGIN TRAN
GO
('P')
GO
exec sp_vw_sys_upd 'D ', 'dbo', 'DF_LabTestler_Durum'
GO
COMMIT
GO
