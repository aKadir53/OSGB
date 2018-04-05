BEGIN TRAN
GO
ALTER -- CREATE -- DROP
  FUNCTION dbo.fn_KullaniciSifreDegismesiGerek (@Kullanici varchar (50))
RETURNS BIT
WITH SCHEMABINDING 
AS
begin
  declare @ret bit
  SET @ret = (select 
    case 
      when ISNULL (Dogrulama, 0) = 0 or (not SifreDegisiklikTarihi is null and IsNull (ug.SifreDegistirmePeryod, 0) > 0 and GETDATE () - u.SifreDegisiklikTarihi > ug.SifreDegistirmePeryod) then 1 
	  else 0 
    end
  from dbo.Users U
  left join dbo.UserGroups ug on ug.KODU= U.grup
  where U.Kullanici = @Kullanici)
  RETURN (@ret)
end
GO
exec sp_vw_sys_upd 'FN', 'dbo', 'fn_KullaniciSifreDegismesiGerek'
GO
COMMIT -- ROLLBACK
GO
