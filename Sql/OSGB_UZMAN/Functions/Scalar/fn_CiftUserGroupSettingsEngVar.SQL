BEGIN TRAN
GO
ALTER -- CREATE 
  function dbo.fn_CiftUserGroupSettingsEngVar ()
returns bit
with schemabinding 
as
begin
  return (
    case 
	  when exists (
	    Select Kullanici, dbo.TurkCharToEng (Modul), dbo.TurkCharToEng (Islem) 
		from dbo.UserGroupSettings 
		group by Kullanici, dbo.TurkCharToEng (Modul), dbo.TurkCharToEng (Islem) 
		having count (*) > 1) 
	  then 1 
	  else 0 
	end)
end
GO
exec sp_vw_sys_upd 'FN', 'dbo', 'fn_CiftUserGroupSettingsEngVar'
GO
COMMIT
GO
