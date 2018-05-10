BEGIN TRAN
GO
ALTER FUNCTION [dbo].[egitimCheckStateToKod] (@egitimKodu varchar(50),@egitimTuru int)
RETURNS varchar(max)
AS
BEGIN
  declare @ee varchar(max) ,@ek varchar(max)

  set @ee = '' 
  set @ek = ''


  select @ee = isnull(cast(et.Kod as varchar) + ',','') + @ee
  from dbo.strtotable(@egitimKodu,',') ek 
  join Egitim_tnm et on et.kod = ek.datavalue
  where (grup = @egitimTuru or @EgitimTuru is NULL) 
    and LTRIM ( RTRIM (ISNULL (et.kod, ''))) <> ''
  order by kod desc

  --select @ee = 
  --  isnull(case when substring(@egitimKodu,ROW_NUMBER() OVER(ORDER BY et.kod),1) = '1' then (select cast(Kod as varchar) from Egitim_Tnm where (grup = @egitimTuru or @egitimTuru is null) and kod = et.kod) else null end + ',','')
  --  + @ee 
  --from Egitim_Tnm et 
  --where (grup = @egitimTuru or @egitimTuru is null)
  --order by kod desc

  return(@ee)
END
GO
exec sp_vw_sys_upd 'FN', 'dbo', 'egitimCheckStateToKod'
GO
COMMIT
GO
