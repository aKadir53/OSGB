BEGIN TRAN
GO
-- [CMPTR2] - [01.11.2017 16:47:57]
ALTER PROCEDURE [dbo].[sp_YeniReceteProtokol] @sirketKod varchar(10),@subeKod varchar(10)

AS

--begin tran

Declare @dosyaNo int

set @dosyaNo = DBO.ProtokolAL(@sirketKod,@subeKod)

update SIRKET_SUBE_TNM 
set MuayeneProtokolNo = @dosyaNo
where sirketKod = @sirketKod and subeKod = @subeKod


SELECT @DOSYANO as ProtokolNo
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_YeniReceteProtokol'
GO
COMMIT
GO
