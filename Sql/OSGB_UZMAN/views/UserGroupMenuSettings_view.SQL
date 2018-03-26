BEGIN TRAN
GO
ALTER -- CREATE
  view dbo.UserGroupMenuSettings_view
with schemabinding
as
select uz.ADI GrupAdi, ID, Izin
from dbo.userGroupmenusettings ug
inner join dbo.UserGroups uz on uz.KODU = ug.kullanici
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'UserGroupMenuSettings_view'
GO
COMMIT
GO
