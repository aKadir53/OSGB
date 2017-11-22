BEGIN TRAN
GO
ALTER FUNCTION [dbo].[ProtokolUretSeans] (@dosyaNo varchar(6),@gelisno int,@seansSira int)
RETURNS varchar(50)
AS
BEGIN
declare @kurumkodu varchar(10),
        @klinikkodu varchar(10),
        @klinikbolum varchar(3),
        @muayeneTuru varchar(1),
        @tarih varchar(6),
        @SIRA varchar(8),@doktor varchar(4)
           
set @klinikbolum = '001'
set @doktor = ''

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

   select @kurumkodu = SLYY from parametreler where SLK = '99'
 
   select @doktor = doktor from gelisdetay  where sirano = @seansSira
 
   select @klinikkodu = isnull(SLZ,0) from doktorlar d 
   join servýsler s on s.kodu = cast(d.Brans as varchar) 
   where d.kod = @doktor


RETURN  'A' + '-' + @kurumkodu + '-' + isnull(@klinikkodu,'0') + '-' + @klinikbolum + '-' + @muayeneTuru  

END
GO
exec sp_vw_sys_upd 'FN', 'dbo', 'ProtokolUretSeans'
GO
COMMIT
GO
