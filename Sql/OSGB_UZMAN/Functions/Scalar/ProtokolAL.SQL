BEGIN TRAN
GO
-- [CMPTR2] - [30.10.2017 15:12:20]
alter FUNCTION [dbo].[ProtokolAL] (@sirketKod varchar(10),@subeKod varchar(10))
RETURNS int
AS
BEGIN
  declare @protokolNo int
  set @protokolNo = 0
  select @protokolNo = (isnull(MuayeneProtokolNo,0)+1) from SIRKET_SUBE_TNM where sirketKod =  @sirketKod and subeKod = @subeKod

  --update SIRKET_SUBE_TNM 
  --set MuayeneProtokolNo = @protokolNo
  --where sirketKod =  @sirketKod and subeKod = @subeKod

  RETURN  @protokolNo
END
GO
exec sp_vw_sys_upd 'FN', 'dbo', 'ProtokolAL'
GO
COMMIT
GO
