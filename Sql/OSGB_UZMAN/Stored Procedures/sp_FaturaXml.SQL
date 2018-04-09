BEGIN TRAN
GO
ALTER PROCEDURE [dbo].[sp_FaturaXml] @faturaId int
AS
begin

declare @faturaNo varchar(20),@guid varchar(50),@faturaTarihi varchar(10),@faturaSaati varchar(8),@faturaSatir varchar(2),
        @saticiVergiNo varchar(20),@saticiAdres varchar(200),@saticiKapiNo varchar(10),@saticiILCE varchar(50),@saticiIL varchar(50),
		@saticiPostaKodu varchar(10) ,@saticiUrl varchar(100),@saticiAdi varchar(100),@saticiVergiDairesi varchar(50),
		@saticiTel varchar(50),@saticiFax varchar(50),@saticiEmail varchar(50),
        @aliciVergiNo varchar(20),@aliciAdres varchar(200),@aliciKapiNo varchar(10),@aliciILCE varchar(50),@aliciIL varchar(50),
		@aliciPostaKodu varchar(10) ,@aliciUrl varchar(100),@aliciAdi varchar(100),@aliciVergiDairesi varchar(50),
		@aliciTel varchar(50),@aliciFax varchar(50),@aliciEmail varchar(50),@vergiler varchar(max),
		@faturaTutar varchar(10),@faturaKdvTutar varchar(10),@faturaGenelTutar varchar(10),
		@faturaHareket varchar(max),@fatura varchar(max),
		@IBAN varchar(100),@faturaGonderimTip varchar(1)
		

set @faturaSatir = '1'
set @faturaHareket = ''
set @fatura = ''
set @vergiler = ''

select @saticiVergiNo = isnull(vergiNo,'') , @saticiAdres = isnull(Adres,'') , @saticiKapiNo = isnull(KapiNo,'') ,
       @saticiILCE = isnull(ILCE,''),@saticiIL = isnull(Il,''),@saticiPostaKodu = isnull(PostaKodu,''),
	   @saticiUrl = isnull(webUrl,''),@saticiAdi = isnull(MerkezAdi,''),@saticiVergiDairesi = isnull(vergiDairesi,''),
	   @saticiTel = isnull(Telefon,''),@saticiFax = isnull(Fax,''),@saticiEMail = isnull(e_mail,''),
	   @IBAN = isnull(IBAN1,'')
from MerkezBilgisi


exec sp_faturaNoUret @faturaId,@faturaNo output



select @faturaNo = 'NYA' + substring(dbo.fn_formattedTarih('YYYYMMDD',faturaTarihi),1,4) + REPLICATE('0',9 - LEN(@faturaNo))+@faturaNo ,
       @guid = newid(),
	   @faturaTarihi = dbo.fn_formattedTarih('YYYY-MM-DD',faturaTarihi),
	   @faturaSaati = dbo.fn_formattedTarih('HHMMSS',faturaTarihi),
	   @aliciVergiNo = isnull(s.VN,''),@aliciVergiDairesi = isnull(s.VD,''),
	   @aliciAdi = isnull(s.tanimi,''),@aliciAdres = isnull(s.Adres,''),
	   @aliciIL = isnull(IK.ADI,''),@aliciILCE = isnull(ILK.ADI,''),
	   @aliciTel = isnull(Tel1,''),@aliciFax = isnull(Fax,''),
	   @aliciEmail = isnull(yetkilimail,''),@aliciUrl = isnull(webUrl,''),
	   @aliciKapiNo = '',@aliciPostaKodu = '',

	   @faturaTutar = cast(faturaTutar as varchar),
	   @faturaKdvTutar = cast(kdv as varchar),
	   @faturaGenelTutar = cast(faturaGenelTutar as varchar),
	   @faturaGonderimTip = FaturaGonderimTipi
	   
from Faturalar f
join SIRKETLER_TNM s on s.sirketKod = f.sirketKod 
join SKRS_IL_KODLARI IK on IK.KODU = s.SEHIR
join SKRS_ILCE_KODLARI ILK on ILK.KODU = s.ILCE
where f.sira = @faturaId

	Select 
	    @vergiler = @vergiler + 
			'<Vergiler>'+
				'<kdvTutar>' + cast(sum(kdvTutar) as varchar)  + '</kdvTutar>'+
				'<faturaTutar>' + cast(sum(tutar) as varchar) + '</faturaTutar>'+
				'<CalculationSequenceNumeric>1.0</CalculationSequenceNumeric>'+
				'<kdvOran>' + cast(kdv as varchar) + '</kdvOran>'+
				'<vergiTanimi>Katma Deger Vergisi</vergiTanimi>'+
				'<vergiKodu>0015</vergiKodu>'+
			'</Vergiler>'	
	from faturaHareket 
	where faturaId = @faturaId
	group by kdv

select @faturaSatir = count(*) from FaturaHareket where faturaId = @faturaId

--select @faturaNo,@guid,@faturaTarihi,@faturaSaati,@aliciVergiNo,@aliciAdi,@aliciVergiDairesi,@faturaTutar,@faturaKdvTutar,@faturaGenelTutar,
--@saticiUrl,@saticiVergiNo,@saticiAdi,@saticiAdres,@saticiKapiNo,@saticiILCE,@saticiIL,@saticiPostaKodu,@saticiVergiDairesi,@saticiTel,@saticiFax,@saticiEmail,
--@aliciUrl,@aliciVergiNo,@aliciAdi,@aliciAdres,@aliciKapiNo,@aliciILCE,@aliciIL,@aliciPostaKodu,@aliciVergiDairesi,@aliciTel,@aliciFax,@aliciEmail

select
@fatura = 
--'<Invoice xmlns="urn:oasis:names:specification:ubl:schema:xsd:Invoice-2" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:ext="urn:oasis:names:specification:ubl:schema:xsd:CommonExtensionComponents-2" xmlns:ds="http://www.w3.org/2000/09/xmldsig#" xmlns:xades="http://uri.etsi.org/01903/v1.3.2#" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xsi:schemaLocation="urn:oasis:names:specification:ubl:schema:xsd:Invoice-2 ..\xsdrt\maindoc\UBL-Invoice-2.1.xsd" xmlns:n4="http://www.altova.com/samplexml/other-namespace" >'+
--	'<ext:UBLExtensions>'+
--		'<ext:UBLExtension>'+
--			'<ext:ExtensionContent>'+
--				'<n4:auto-generated_for_wildcard/>'+
--			'</ext:ExtensionContent>'+
--		'</ext:UBLExtension>'+
--	'</ext:UBLExtensions>'+
	--'<UBLVersionID>2.1</UBLVersionID>'+
	--'<CustomizationID>TR1.2</CustomizationID>'+
	--'<ProfileID>TICARIFATURA</ProfileID>'+
	'<Fatura>'+
	'<faturaId>'+cast(@faturaId as varchar)+'</faturaId>'+
	'<faturaNo>'+@faturaNo+'</faturaNo>'+
	'<Senaryo>'+@faturaGonderimTip+'</Senaryo>'+
	'<CopyIndicator>false</CopyIndicator>'+
	'<UUID>'+@guid+'</UUID>'+
	'<faturaTarihi>'+@faturaTarihi+'</faturaTarihi>'+
	'<faturaSaati>'+@faturaSaati+'</faturaSaati>'+
	'<faturaTip>SATIS</faturaTip>'+
	'<paraBirimi>TRY</paraBirimi>'+
	'<faturaKalemSayisi>'+@faturaSatir+'</faturaKalemSayisi>'+
	'<Not>HESAP IBAN :' + @IBAN + '</Not>' +
 	'<saticiBilgisi>'+
			'<url>'+@saticiUrl+'</url>'+
			'<vergiNo>'+@saticiVergiNo+'</vergiNo>'+
			'<saticiAdi>'+@saticiAdi+'</saticiAdi>'+
			'<adres>'+@saticiAdres+'</adres>'+
			'<kapiNo>'+@saticiKapiNo+'</kapiNo>'+
			'<Ilce>'+@saticiILCE+'</Ilce>'+
			'<Il>'+@saticiIL+'</Il>'+
			'<PostaKodu>'+@saticiPostaKodu+'</PostaKodu>'+
			'<Ulke>Türkiye</Ulke>'+
			'<vergiDairesi>'+@saticiVergiDairesi+'</vergiDairesi>'+
			'<Tel>'+@saticiTel+'</Tel>'+
			'<fax>'+@saticiFax+'</fax>'+
			'<EMail>'+@saticiEmail+'</EMail>'+
	'</saticiBilgisi>'+
 	'<aliciBilgisi>'+
			'<url>'+@aliciUrl+'</url>'+
			'<vergiNo>'+@aliciVergiNo+'</vergiNo>'+
			'<saticiAdi>'+@aliciAdi+'</saticiAdi>'+
			'<adres>'+@aliciAdres+'</adres>'+
			'<kapiNo>'+@aliciKapiNo+'</kapiNo>'+
			'<Ilce>'+@aliciILCE+'</Ilce>'+
			'<Il>'+@aliciIL+'</Il>'+
			'<PostaKodu>'+@aliciPostaKodu+'</PostaKodu>'+
			'<Ulke>Türkiye</Ulke>'+
			'<vergiDairesi>'+@aliciVergiDairesi+'</vergiDairesi>'+
			'<Tel>'+@aliciTel+'</Tel>'+
			'<fax>'+@aliciFax+'</fax>'+
			'<EMail>'+@aliciEmail+'</EMail>'+
	'</aliciBilgisi>'+
	
		@vergiler +
	--'<Vergiler>'+
	--	'<kdvTutar>'+ @faturaKdvTutar + '</kdvTutar>'+
	--	'<faturaTutar>'+@faturaTutar+'</faturaTutar>'+
	--	'<CalculationSequenceNumeric>1.0</CalculationSequenceNumeric>'+
	--	'<kdvOran>18</kdvOran>'+
	--	'<vergiTanimi>Katma Deger Vergisi</vergiTanimi>'+
	--	'<vergiKodu>0015</vergiKodu>'+
	--'</Vergiler>'+

	'<faturaToplamlari>'+
		'<faturaTutar>'+@faturaTutar +'</faturaTutar>'+
--		'<TaxExclusiveAmount currencyID="TRY">'+ @faturaTutar +'</TaxExclusiveAmount>'+
		'<faturaGeneTutar>'+@faturaGenelTutar+'</faturaGeneTutar>'+
		'<indirimToplam>0</indirimToplam>'+
	--	'<PayableAmount currencyID="TRY">'+@faturaGenelTutar+'</PayableAmount>'+
	'</faturaToplamlari>'


select 
    @faturaHareket = @faturaHareket + 
    '<Satirlar>'+
        '<sira>'+ cast(ROW_NUMBER() OVER(ORDER BY faturaId,sira) as varchar)  + '</sira>'+
        '<adet>' + cast(adet as varchar) + '</adet>'+
        '<tutar>' + cast(tutar as varchar) + '</tutar>'+
		'<kdvtutar>' + cast(kdvTutar as varchar) + '</kdvtutar>'+
        '<kdv>' + cast(kdv as varchar) + '</kdv>'+
        '<satirtutar>' + cast(satirToplam as varchar) + '</satirtutar>'+


        --'<AllowanceCharge>'+
       --     '<ChargeIndicator>false</ChargeIndicator>'+
        --    <MultiplierFactorNumeric>0.05</MultiplierFactorNumeric>
        --    <Amount currencyID="TRY">495.3</Amount>
        --    <BaseAmount currencyID="TRY">9906</BaseAmount>
        --'<AllowanceCharge/>'+
        --'<TaxTotal>'+
        --    <TaxAmount currencyID="TRY">1693.93</TaxAmount>
        --    <TaxSubtotal>
        --        <TaxableAmount currencyID="TRY">9410.7</TaxableAmount>
        --        <TaxAmount currencyID="TRY">1693.93</TaxAmount>
        --        <Percent>18</Percent>
        --        <TaxCategory>
        --            <TaxScheme>
        --                <Name>KDV</Name>
        --                <TaxTypeCode>0015</TaxTypeCode>
        --            </TaxScheme>
        --        </TaxCategory>
        --    </TaxSubtotal>
        --'<TaxTotal/>'+

            '<Tanim>'+ isnull(hizmetAdi,'') +'</Tanim>'+
            '<fiyat>'+cast(fiyat as varchar)+'</fiyat>'+
    '</Satirlar>'

	from FaturaHareket fh
	 where faturaId = @faturaId

	--select @fatura + @faturaHareket + '</Fatura>'faturaXML

	select cast(@fatura + @faturaHareket + '</Fatura>' as xml) faturaXML
end
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_FaturaXml'
GO
COMMIT
GO
