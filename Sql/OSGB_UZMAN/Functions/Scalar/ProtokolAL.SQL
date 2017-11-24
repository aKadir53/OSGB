BEGIN TRAN
GO
-- [CMPTR] - [16.11.2017 11:17:18]
ALTER -- ALTER
  FUNCTION [dbo].[ProtokolAL] (@sirketKod varchar(10),@subeKod varchar(10))
RETURNS int
AS
BEGIN
  declare @protokolNo int
  set @protokolNo = 0

  select @protokolNo = (isnull(MuayeneProtokolNo,0)+1) from SIRKET_SUBE_TNM where sirketKod =  @sirketKod and subeKod = @subeKod

  RETURN  @protokolNo
END
GO
exec sp_vw_sys_upd 'FN', 'dbo', 'ProtokolAL'
GO
COMMIT
GO
