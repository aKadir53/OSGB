BEGIN TRAN
GO
ALTER -- CREATE
  view dbo.UserMenuSettings_GrupYetkili_view
with schemabinding
as
select Grubu, Kullanici, ID, MAX (Izin) Izin
from
(
select ug.ADI Grubu, us.Kullanici, ID, Izin
from dbo.usermenusettings us
left join dbo.Users u on u.Kullanici = us.Kullanici
left join dbo.usergroups ug on ug.kodu = u.Grup
union all
select uz.ADI Grubu, u.Kullanici, ID, Izin
from dbo.userGroupmenusettings ug
inner join dbo.Users u on u.grup = ug.Kullanici
inner join dbo.UserGroups uz on uz.KODU = ug.kullanici
)
w
group by Grubu, Kullanici, ID
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'UserMenuSettings_GrupYetkili_view'
GO
COMMIT
GO
