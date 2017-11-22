BEGIN TRAN
GO
/*
**	Add an object to the dtproperties table
*/
ALTER procedure dbo.dt_adduserobject
as
	set nocount on
	/*
	** Create the user object if it does not exist already
	*/
	begin transaction
		insert dbo.dtproperties (property) VALUES ('DtgSchemaOBJECT')
		update dbo.dtproperties set objectid=@@identity 
			where id=@@identity and property='DtgSchemaOBJECT'
	commit
	return @@identity
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'dt_adduserobject'
GO
COMMIT
GO
