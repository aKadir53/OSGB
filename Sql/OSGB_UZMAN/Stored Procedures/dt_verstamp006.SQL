BEGIN TRAN
GO
/*
**	This procedure returns the version number of the stored
**    procedures used by the Microsoft Visual Database Tools.
**    Current version is 7.0.00.
*/
ALTER procedure dbo.dt_verstamp006
as
	select 7000
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'dt_verstamp006'
GO
COMMIT
GO
