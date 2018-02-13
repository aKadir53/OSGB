BEGIN TRAN
GO
ALTER PROCEDURE [dbo].[sp_GelisKaydet]
@dosyaNo varchar(6),
@gelisNo int,
@BHDAT varchar(10),
@doktor varchar(4),
@SERVIS varchar(4),
@TEDAVITURU varchar(1),
@Kullanici varchar(20),
@sirketKod varchar(6),
@PN varchar(10) = '',
@tetkikler varchar(500) = ''

AS
begin


  set @gelisno = isnull( (select max(isnull(gelisno,0))+1  from Gelisler where dosyaNo = @dosyaNo),1)

 -- set @PN = dbo.ProtokolUret (@dosyaNo,@gelisno)

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

  if @@error = 0
  --if @@rowcount > 0
 begin
      if @tetkikler <> ''
      begin      
          insert into Hareketler (dosyaNo,gelisNo,code,name1,adet,TARIH,tip)
          select @dosyaNo,@gelisNo, S.kod,S.tanimi,1,@BHDAT,h.TANIM from dbo.StrToTable(@tetkikler,',') tet
          join TetkikIstemSablonItem S on S.id = tet.datavalue
          join HIZMET h on h.code = S.kod
      end
  end

  select @@error as error , @GelisNo as Gelis

end
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_GelisKaydet'
GO
COMMIT
GO
