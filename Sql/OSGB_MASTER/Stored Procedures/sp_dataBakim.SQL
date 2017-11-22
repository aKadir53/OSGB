BEGIN TRAN
GO
ALTER PROCEDURE [dbo].[sp_dataBakim](@data varchar(20))
as
BEGIN
	
	DBCC SHRINKFILE(DIALIZ_Log,2)	
	exec('BACKUP LOG ' + @data + ' WITH TRUNCATE_ONLY')

END




	
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_dataBakim'
GO
COMMIT
GO
