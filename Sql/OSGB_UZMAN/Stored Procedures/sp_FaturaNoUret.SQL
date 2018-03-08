BEGIN TRAN
GO
ALTER procedure dbo.sp_FaturaNoUret @faturaId int, @Cikis varchar (9) output
as
begin
  insert into dbo.FaturaNumaraTarihce (Faturaid) Select @faturaId
  set @Cikis = REPLICATE ('0', 9 - len (cast (SCOPE_IDENTITY () as varchar (9)))) + cast (SCOPE_IDENTITY () as varchar (9))
end
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_FaturaNoUret'
GO
COMMIT
GO
