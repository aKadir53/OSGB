BEGIN TRAN
GO
ALTER function dbo.fn_Egitim_Tnm_Constraint ()
returns bit
as
begin
  declare @ret bit
  if exists (
    select e.id, ei.DataValue
    from Egitimler e
    outer apply dbo.StrToTable (e.egitimkod,',') ei
    where LTRIM (RTRIM (ei.DataValue)) <> ''
      and not Exists (select 1 from Egitim_tnm et where cast (et.Kod as varchar (10)) = LTRIM (RTRIM (ei.datavalue)))
    group by e.id, ei.DataValue)
    SET @Ret = 0
  ELSE
    SET @Ret = 1
  RETURN (@ret)
end  
GO
exec sp_vw_sys_upd 'FN', 'dbo', 'fn_Egitim_Tnm_Constraint'
GO
COMMIT
GO
