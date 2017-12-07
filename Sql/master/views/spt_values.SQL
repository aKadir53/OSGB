BEGIN TRAN
GO
ALTER view spt_values as
select name collate database_default as name,
	number,
	type collate database_default as type,
	low, high, status
from sys.spt_values
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'spt_values'
GO
COMMIT
GO
