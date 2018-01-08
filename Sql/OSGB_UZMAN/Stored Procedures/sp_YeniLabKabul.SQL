BEGIN TRAN
GO
ALTER PROCEDURE [dbo].[sp_YeniLabKabul] 
@dosyaNo varchar(6),
@gelisNo int,
@code varchar(20),
@grup varchar(3),
@kabulTarihi varchar(10),
@kabulEden varchar(20),
@durum varchar(10),
@Icode varchar(20),
@hizmetAdi varchar(50) = null,
@siraNo int,
@_barkodNo_ varchar(10) = ''
AS

begin tran

Declare @barkod float , @dn varchar(8), @barkodNo varchar(8),
        @hasta varchar(100),@yas int,@cinsiyet varchar(5),
        @doktor varchar(10),@ozelkod varchar(2)


--set @Dn = DBO.LabBarkodNoAl(0)
--set @barkodNo = @dn
--exec sp_LabBarkodNoYaz @barkodNo

select @hasta = HASTAADI + ' ' + HASTASOYADI ,
       @yas = ((CONVERT(INT,GETDATE())-CONVERT(INT,CAST(ISNULL(DOGUMTARIHI,'')AS DATETIME)))/365),
       @cinsiyet = (case when CINSIYETI = 1 then 'Bayan' else 'Erkek' end) 
from personelKart
where dosyaNo = @dosyaNo

select @doktor = doktor from gelisler
where dosyaNo = @dosyaNo and gelisNo = @gelisNo 

select @ozelkod = OZELKOD from HIZMET
where code = @code


INSERT INTO [LaboratuvarKabul]
 (dosyaNo,
  gelisNo,
  code,
  grup,
  kabultarihi,
  kabulEden,
  durum,
  barkodNo,
  Icode,
  hastaAdi,
  yas,
  cinsiyet,
  hizmetAdi,
  doktor,
  HareketlerSira,
  OZELKOD 
  
)
VALUES(
  @dosyaNo,
  @gelisNo,
  @code,
  @grup,
  @kabulTarihi,
  @kabulEden,
  @durum,
  @_barkodNo_,
  @Icode,
  @hasta,
  @yas,
  @cinsiyet,
  @hizmetAdi,
  @doktor,
  @siraNo,
  @ozelkod
)

if @@error <> 0  begin
rollback tran 
end
else begin
commit tran
end
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_YeniLabKabul'
GO
COMMIT
GO
