BEGIN TRAN
GO
-- [CMPTR2] - [14.10.2017 22:11:25]
ALTER PROCEDURE [dbo].[sp_YeniPersonelHastaKarti]
@SirketKod varchar(10),
@TCKIMLIKNO varchar(15),
@HASTAADI varchar(50),
@HASTASOYADI varchar(50),
@CINSIYETI varchar(1),
@MEDENI varchar(1),
@BABAADI varchar(50),
@ANAADI varchar(50),
@EV_SEHIR varchar(20),
@EV_TEL1 varchar(15),
@EV_TEL2 varchar(15),
--@EMAIL varchar(60),
@DOGUMYERI varchar(20),
@DOGUMTARIHI varchar(10),
@UYRUGU varchar(6),
@baslangic varchar(10),
@kanGrubu varchar(1),
@USER_ID varchar(20)

AS

Declare @dosyaNo float , @dn varchar(6)

set @Dn = DBO.DOSYANOAL(0)
set @dosyano = @dn
exec sp_DosyaNoYaz @DosyaNo

INSERT INTO [PERSONELKART]
 ([DOSYANO],
  [SirketKod],
  [TCKIMLIKNO],
  [HASTAADI],
  [HASTASOYADI],
  [CINSIYETI],
  [MEDENI],
  [BABAADI],
  [ANAADI],
  [EV_SEHIR],
  [EV_TEL1],
  [EV_TEL2],
 -- [EMAIL],
  [DOGUMYERI],
  [DOGUMTARIHI],
  [UYRUGU],
  [BASLANGIC],
  [KANGRUBU],
  [USER_ID]
)
VALUES(
  @Dn,
  @SirketKod,
  @TCKIMLIKNO,
  @HASTAADI,
  @HASTASOYADI,
  @CINSIYETI,
  @MEDENI,
  @BABAADI,
  @ANAADI,
  @EV_SEHIR,
  @EV_TEL1,
  @EV_TEL2,
 -- @EMAIL,
  @DOGUMYERI,
  @DOGUMTARIHI,
  @UYRUGU,
  @Baslangic,
  @KanGrubu,
  @USER_ID



)



--SELECT @DOSYANO as DosyaNo
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_YeniPersonelHastaKarti'
GO
COMMIT
GO
