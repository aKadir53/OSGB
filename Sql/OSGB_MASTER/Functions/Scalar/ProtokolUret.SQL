BEGIN TRAN
GO
ALTER FUNCTION [dbo].[ProtokolUret] (@dosyaNo varchar(6),@gelisno int)
RETURNS varchar(50)
AS
BEGIN
declare @kurumkodu varchar(10),
        @klinikkodu varchar(10),
        @klinikbolum varchar(3),
        @muayeneTuru varchar(1),
        @tarih varchar(6),
        @SIRA varchar(8)

set @klinikbolum = '001'

   select @klinikkodu = SERVIS ,
          @muayeneTuru = (case TEDAVITURU
                             when 'N' then 'A'
                             when 'V' then 'C'
                             when 'T' then 'D'
                             when 'A' then 'E'
                           else 'A' end) ,
          @tarih = substring(BHDAT,7,2) + substring(BHDAT,5,2)+substring(BHDAT,3,2),
          @SIRA = (replicate('0',8-len(cast(SIRANO as varchar))) + cast(SIRANO as varchar)) 
   from gelisler where dosyano = @dosyaNo and gelisNo = @gelisno

   select @kurumkodu = SLB from parametreler where SLK = '99'
   select @klinikkodu = isnull(KODU,0) from SNKlinikler where SUTKODU = @klinikkodu



RETURN  'A' + '-' + @kurumkodu + '-' + @klinikkodu + '-' + @klinikbolum + '-' + @muayeneTuru + '-' + @tarih + '-' + @SIRA

END
GO
exec sp_vw_sys_upd 'FN', 'dbo', 'ProtokolUret'
GO
COMMIT
GO
