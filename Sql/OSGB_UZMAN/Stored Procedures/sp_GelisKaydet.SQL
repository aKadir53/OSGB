BEGIN TRAN
GO
-- [CMPTR2] - [02.06.2017 15:51:51]
ALTER PROCEDURE [dbo].[sp_GelisKaydet]
@dosyaNo varchar(6),
@gelisNo int,
@BHDAT varchar(10),
@SEVKGECSURE int = 0,
@doktor varchar(4),
@SERVIS varchar(4),
@TEDAVITURU varchar(1),
@HastaTop float = 0,
@KurumTop float = 0,
@Kullanici varchar(20),
@tip varchar(1) = 'O',
@HCOOO varchar(10) = '',
@k varchar(10) = '',
@GU varchar(10) = '',
@HEPARIN varchar(10) = '',
@DIYALIZOR varchar(10) = '',
@GIRISYOLU varchar(10) = '',
@DIYALIZSURESI varchar(10) = '',
@Ca varchar(10) = '',
@PN varchar(50) = '',
@TakipNo varchar(10) = '',
@basvuruNo varchar(10) = '',
@diyaliztedaviTipi varchar(1) = '0',
@TakipNoIlk VARCHAR(10) = ''
--@DATarE_ALTER datetime

AS

declare @htip varchar(1)
set @htip = @diyaliztedaviTipi

declare @DS varchar(50),
        @DC varchar(50),
        @YA varchar(50),
        @DG varchar(50),
        @Na varchar(50),
        @APH varchar(50),
        @D varchar(50) ,
        @Heparin varchar(50),
        @kilo float 
        
SELECT @kilo = IdealKilo,@DS = DS , @DC = DC , @YA = YA , @DG = GIRISYOLU , @Na = Na , @APH = APH , @D = D , @Heparin = HEPARIN 
FROM HastaKart WHERE dosyaNo = @dosyaNo

select @htip = Tip from hastakart where dosyaNo = @dosyaNo
if (@htip = 'P') or (@htip = 'A')
BEGIN
  SET @gelisNo = -1	
end

IF @gelisNo = -1
BEGIN
		set @DS = '1'
        set @DC = '1'
        set @YA = '1'
        set @DG = '1'
        set @Na = '1'
        set @APH = '1'
        set @D = '1' 
        set @Heparin = '1'
        set @kilo = 1 
END	
	
IF (@DS <> '' and @DC <> '' and @YA <> '' and @DG <> '' and @Na <> '' and @APH <> '' and @D <> '' and @Heparin <> '')
BEGIN	
	IF @kilo> 0
	begin
		if not exists(select * from gelisler where dosyaNo = @dosyaNo and substring(BHDAT,1,6) = substring(@BHDAT,1,6))
		begin  
			--select @htip = Tip from hastakart where dosyaNo = @dosyaNo

			set @gelisno = isnull( (select max(isnull(gelisno,0))+1  from Gelisler where dosyaNo = @dosyaNo),1)
			set @PN = dbo.ProtokolUret (@dosyaNo,@gelisno)

			IF @doktor = ''
			select @doktor = kod from doktorlar where durum = 'Aktif'

			select @SERVIS = (case when isnull(SLXX,'') = '' then 1062 else SLXX end) 
			from parametreler
			where SLK = '33' and SLB = 'BRANS'

			exec sp_TaniEkle @dosyaNo,@gelisno

			insert into Gelisler (dosyaNo,GelisNo,BHDAT,SEVKGECSURE,doktor,SERVIS,TEDAVITURU,HastaTop,KurumTop,Kullanici,
								  SNProtokolNo,takýpNo,basvuruNo,diyalizTedaviYontemi,ilkTakipNo)


			values (@dosyaNo,@gelisNo,@BHDAT,@SEVKGECSURE,@doktor,@SERVIS,'G',@HastaTop,@KurumTop,@Kullanici,
					@PN,@TakipNo,@basvuruNo,@diyaliztedaviTipi,@TakipNoIlk)

			update gelisler
			set SNProtokolNo = dbo.ProtokolUret (@dosyaNo,@gelisNo)
			where dosyaNo = @dosyaNo and gelisNo = @gelisNo 

			exec sp_hastaLabIsle @dosyaNo,@gelisno,@BHDAT,'',@htip

			if (@htip = 'P') or (@htip = 'A')
			begin
			  insert into gelisdetayPeriton(dosyaNo,gelisNo,tarih,doktor,code,name1,durum)
			  values(@dosyaNo,@gelisNo,@BHDAT,@doktor,'704260','Periton Diyaliz Takibi',1)
			--
			  insert into gelisdetayPeriton(dosyaNo,gelisNo,tarih,doktor,code,name1,durum)
			  values(@dosyaNo,@gelisNo,@BHDAT,@doktor,'EBX','EBX Periton Diyaliz Paketi',0)
			end 

			select @@error as error , @GelisNo as Gelis

		end
		else
		begin
			select 'Mevcut Dönemde Açýlmýþ Dosyasý Var' as error , -1 as Gelis
		end
	END
	ELSE
	BEGIN
	select 'Hasta Ýdeal Kilo Tanýmlý Deðil , Dosya Açýlamaz' as error , -1 as Gelis	
	END
	END
ELSE
BEGIN
select 'Hasta Tedavi Bilgileri Eksik [Dializör Cinsi,Dializör Þekli,Dializat,Damar Giriþ,APH,Na,Y.Alan] , Dosya Açýlamaz' as error , -1 as Gelis		
END	
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_GelisKaydet'
GO
COMMIT
GO
