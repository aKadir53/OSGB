BEGIN TRAN
GO
/*
**	Retrieve the owner object(s) of a given property
*/
ALTER procedure dbo.dt_getobjwithprop
	@property varchar(30),
	@value varchar(255)
as
	set nocount on

	if (@property is null) or (@property = '')
	begin
		raiserror('Must specify a property name.',-1,-1)
		return (1)
	end

	if (@value is null)
		select objectid id from dbo.dtproperties
			where property=@property

	else
		select objectid id from dbo.dtproperties
			where property=@property and value=@value
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'dt_getobjwithprop'
GO
COMMIT
GO
