BEGIN TRAN
GO
ALTER -- create
  VIEW [dbo].[VW_Sys]
AS
select so.xtype, 
  cast (
    case 
      when CHARINDEX ('RETURNS', m.definition) > 0 then LTRIM (RTRIM (SUBSTRING (m.definition, CHARINDEX ('RETURNS', m.definition) + 7, 10)))
      else null
    end
    as varchar (10)) Returns, 
  su.name OwnerName, so.name, so2.name ParentObjName, so.uid OwnerID, so.crdate CreateDateTime, Coalesce (m.definition, sc.text, ff.Script) as AllText
from sysobjects so 
left outer join sysobjects so2 on so.parent_obj = so2.id
left outer join sysusers su on so.uid = su.uid
left outer join sys.sql_modules m on so.id=m.object_id
left outer join syscomments sc on sc.id = so.id
  and so.xType in ('D ', 'C ')
left outer join vw_sys_FK ff on so.Xtype = 'F '
  and so.id = ff.object_id
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'VW_Sys'
GO
COMMIT
GO
select * 
from vw_sys
order by xtype, name
