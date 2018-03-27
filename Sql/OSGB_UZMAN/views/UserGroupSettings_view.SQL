BEGIN TRAN
GO
ALTER -- CREATE
  view dbo.UserGroupSettings_view
with schemabinding
as
select uz.ADI GrupAdi, Modul, Islem, Izin
from dbo.userGroupsettings ug
inner join dbo.UserGroups uz on uz.KODU = ug.kullanici
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'UserGroupSettings_view'
GO
COMMIT
GO
