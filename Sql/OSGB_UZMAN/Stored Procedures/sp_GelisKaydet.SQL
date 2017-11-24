BEGIN TRAN
GO
-- [CMPTR] - [15.11.2017 15:31:55]
ALTER PROCEDURE [dbo].[sp_GelisKaydet]
@dosyaNo varchar(6),
@gelisNo int,
@BHDAT varchar(10),
@doktor varchar(4),
@SERVIS varchar(4),
@TEDAVITURU varchar(1),
@Kullanici varchar(20),
@sirketKod varchar(6)

AS
begin
  declare @PN varchar(50)
  set @PN = ''

  set @gelisno = isnull( (select max(isnull(gelisno,0))+1  from Gelisler where dosyaNo = @dosyaNo),1)

  set @PN = dbo.ProtokolUret (@dosyaNo,@gelisno)

  IF @doktor = ''
    select @doktor = Doktor from Users where Kullanici = @Kullanici

  set @SERVIS = '4667'
  --select @SERVIS = (case when isnull(SLXX,'') = '' then 1062 else SLXX end) 
  --from parametreler
  --where SLK = '33' and SLB = 'BRANS'

  --exec sp_TaniEkle @dosyaNo,@gelisno

  insert into Gelisler (dosyaNo,GelisNo,BHDAT,doktor,SERVIS,TEDAVITURU,Kullanici,PROTOKOLNO,sirketKod)
  values (@dosyaNo,@gelisNo,@BHDAT,@doktor,@SERVIS,@TEDAVITURU,@Kullanici,@PN,@sirketKod)

      --  exec sp_hastaLabIsle @dosyaNo,@gelisno,@BHDAT,'',@htip


  select @@error as error , @GelisNo as Gelis

end
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_GelisKaydet'
GO
COMMIT
GO
