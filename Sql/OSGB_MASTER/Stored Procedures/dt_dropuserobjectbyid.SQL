BEGIN TRAN
GO
/*
**	Drop an object from the dbo.dtproperties table
*/
ALTER procedure dbo.dt_dropuserobjectbyid
	@id int
as
	set nocount on
	delete from dbo.dtproperties where objectid=@id
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'dt_dropuserobjectbyid'
GO
COMMIT
GO
