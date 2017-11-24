BEGIN TRAN
GO
ALTER -- create
  PROCEDURE [dbo].[sp_YeniReceteProtokol] @sirketKod varchar(10),@subeKod varchar(10)
AS
begin
  --begin tran

  Declare @dosyaNo int

  set @dosyaNo = DBO.ProtokolAL(@sirketKod,@subeKod)

  update SIRKET_SUBE_TNM 
  set MuayeneProtokolNo = @dosyaNo
  where sirketKod = @sirketKod and subeKod = @subeKod


  SELECT @DOSYANO as ProtokolNo
end
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_YeniReceteProtokol'
GO
COMMIT
GO
