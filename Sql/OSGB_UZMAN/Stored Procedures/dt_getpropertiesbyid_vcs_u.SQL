BEGIN TRAN
GO
ALTER procedure dbo.dt_getpropertiesbyid_vcs_u
    @id       int,
    @property varchar(64),
    @value    nvarchar(255) = NULL OUT

as

    set nocount on

    select @value = (
        select uvalue
                from dbo.dtproperties
                where @id=objectid and @property=property
                )
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'dt_getpropertiesbyid_vcs_u'
GO
COMMIT
GO
