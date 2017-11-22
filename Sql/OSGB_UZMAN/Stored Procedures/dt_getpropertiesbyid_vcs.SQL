BEGIN TRAN
GO
ALTER procedure dbo.dt_getpropertiesbyid_vcs
    @id       int,
    @property varchar(64),
    @value    varchar(255) = NULL OUT

as

    set nocount on

    select @value = (
        select value
                from dbo.dtproperties
                where @id=objectid and @property=property
                )
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'dt_getpropertiesbyid_vcs'
GO
COMMIT
GO
