BEGIN TRAN
GO
-- [CMPTR2] - [14.10.2017 17:55:04]
ALTER PROCEDURE [dbo].[sp_YeniPersonelHastaKarti]

@CINSIYETI varchar(1),
@MEDENI varchar(1),
@HASTAADI varchar(50),
@HASTASOYADI varchar(50),
@BABAADI varchar(50),
@ANAADI varchar(50),
@EV_ADRES varchar(60),
@EV_PK varchar(8),
@EV_SEHIR varchar(20),
@EV_TEL1 varchar(15),
@EV_TEL2 varchar(15),
@EMAIL varchar(60),
@DOGUMYERI varchar(20),
@DOGUMTARIHI varchar(10),
@UYRUGU varchar(6),
@TCKIMLIKNO varchar(15),
@baslangic varchar(10),
@kanGrubu varchar(1),
@USER_ID varchar(20),
@DATE_CREATE varchar(20),
@vatandasTip VARCHAR(1) = '0'


AS

--begin tran

Declare @dosyaNo float , @dn varchar(6)

set @Dn = DBO.DOSYANOAL(0)
set @dosyano = @dn
exec sp_DosyaNoYaz @DosyaNo



INSERT INTO [HASTAKART]
 ([DOSYANO],
  [CINSIYETI],
  [MEDENI],
  [HASTAADI],
  [HASTASOYADI],
  [BABAADI],
  [ANAADI],
  [EV_SEHIR],
  [EV_TEL1],
  [EV_TEL2],
  [EMAIL],
  [DOGUMYERI],
  [DOGUMTARIHI],
  [UYRUGU],
  [TCKIMLIKNO],
  [Durum],
  [BASLANGIC],
  [HUVIYETTARIHI],
  [KANGRUBU],
  [USER_ID],
  [DATE_CREATE],
  [vatandasTip]

)
VALUES(
  @Dn,
  @CINSIYETI,
  @MEDENI,
  @HASTAADI,
  @HASTASOYADI,
  @BABAADI,
  @ANAADI,
  @EV_SEHIR,
  @EV_TEL1,
  @EV_TEL2,
  @EMAIL,
  @DOGUMYERI,
  @DOGUMTARIHI,
  @UYRUGU,
  @TCKIMLIKNO,
  @Baslangic,
  @KanGrubu,
  @USER_ID,
  @DATE_CREATE,
  @vatandasTip

)


--if @@error <> 0  begin
--rollback tran
--end
--else begin
--commit tran
--end


SELECT @DOSYANO as DosyaNo
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_YeniPersonelHastaKarti'
GO
COMMIT
GO
