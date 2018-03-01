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
		@aliciTel varchar(50),@aliciFax varchar(50),@aliciEmail varchar(50),
		@faturaTutar varchar(10),@faturaKdvTutar varchar(10),@faturaGenelTutar varchar(10),
		@faturaHareket varchar(max),@fatura varchar(max)

set @faturaSatir = '1'
set @faturaHareket = ''
set @fatura = ''

select @saticiVergiNo = isnull(vergiNo,'') , @saticiAdres = isnull(Adres,'') , @saticiKapiNo = isnull(KapiNo,'') ,
       @saticiILCE = isnull(ILCE,''),@saticiIL = isnull(Il,''),@saticiPostaKodu = isnull(PostaKodu,''),
	   @saticiUrl = isnull(webUrl,''),@saticiAdi = isnull(MerkezAdi,''),@saticiVergiDairesi = isnull(vergiDairesi,''),
	   @saticiTel = isnull(Telefon,''),@saticiFax = isnull(Fax,''),@saticiEMail = isnull(e_mail,'')
from MerkezBilgisi

select @faturaNo = 'GIB' + substring(dbo.fn_formattedTarih('YYYYMMDD',faturaTarihi),1,4) + REPLICATE('0',9 - LEN(sira))+CAST(sira as varchar) ,
       @guid = Guid,
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
	   @faturaGenelTutar = cast(faturaGenelTutar as varchar)
from Faturalar f
join SIRKETLER_TNM s on s.sirketKod = f.sirketKod 
join SKRS_IL_KODLARI IK on IK.KODU = s.SEHIR
join SKRS_ILCE_KODLARI ILK on ILK.KODU = s.ILCE
where f.sira = @faturaId

--select @faturaNo,@guid,@faturaTarihi,@faturaSaati,@aliciVergiNo,@aliciAdi,@aliciVergiDairesi,@faturaTutar,@faturaKdvTutar,@faturaGenelTutar,
--@saticiUrl,@saticiVergiNo,@saticiAdi,@saticiAdres,@saticiKapiNo,@saticiILCE,@saticiIL,@saticiPostaKodu,@saticiVergiDairesi,@saticiTel,@saticiFax,@saticiEmail,
--@aliciUrl,@aliciVergiNo,@aliciAdi,@aliciAdres,@aliciKapiNo,@aliciILCE,@aliciIL,@aliciPostaKodu,@aliciVergiDairesi,@aliciTel,@aliciFax,@aliciEmail

select
@fatura = 
'<Invoice xmlns="urn:oasis:names:specification:ubl:schema:xsd:Invoice-2" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:ext="urn:oasis:names:specification:ubl:schema:xsd:CommonExtensionComponents-2" xmlns:ds="http://www.w3.org/2000/09/xmldsig#" xmlns:xades="http://uri.etsi.org/01903/v1.3.2#" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xsi:schemaLocation="urn:oasis:names:specification:ubl:schema:xsd:Invoice-2 ..\xsdrt\maindoc\UBL-Invoice-2.1.xsd" xmlns:n4="http://www.altova.com/samplexml/other-namespace" >'+
	'<ext:UBLExtensions>'+
		'<ext:UBLExtension>'+
			'<ext:ExtensionContent>'+
				'<n4:auto-generated_for_wildcard/>'+
			'</ext:ExtensionContent>'+
		'</ext:UBLExtension>'+
	'</ext:UBLExtensions>'+
	'<cbc:UBLVersionID>2.1</cbc:UBLVersionID>'+
	'<cbc:CustomizationID>TR1.2</cbc:CustomizationID>'+
	'<cbc:ProfileID>TICARIFATURA</cbc:ProfileID>'+
	'<cbc:ID>'+@faturaNo+'</cbc:ID>'+
	'<cbc:CopyIndicator>false</cbc:CopyIndicator>'+
	'<cbc:UUID>'+@guid+'</cbc:UUID>'+
	'<cbc:IssueDate>'+@faturaTarihi+'</cbc:IssueDate>'+
	'<cbc:IssueTime>'+@faturaSaati+'</cbc:IssueTime>'+
	'<cbc:InvoiceTypeCode>SATIS</cbc:InvoiceTypeCode>'+
	'<cbc:DocumentCurrencyCode>TRY</cbc:DocumentCurrencyCode>'+
	'<cbc:LineCountNumeric>'+@faturaSatir+'</cbc:LineCountNumeric>'+
	--'<cac:DespatchDocumentReference>'+
	--	<cbc:ID>180921</cbc:ID>
	--	<cbc:IssueDate>2009-01-02</cbc:IssueDate>
	'<cac:DespatchDocumentReference/>'+
	--'<cac:Signature>'+
	--	'<cbc:ID schemeID="VKN_TCKN">'+@saticiVergiNo+'</cbc:ID>'+
	--	'<cac:SignatoryParty>'+
	--		'<cac:PartyIdentification>'+
	--			'<cbc:ID schemeID="VKN">'+@saticiVergiNo+'</cbc:ID>'+
	--		'</cac:PartyIdentification>'+
	--		'<cac:PostalAddress>'+
	--			'<cbc:StreetName>'+@saticiAdres+'</cbc:StreetName>'+
	--			'<cbc:BuildingNumber>'+@saticiKapiNo+'</cbc:BuildingNumber>'+
	--			'<cbc:CitySubdivisionName>'+@saticiILCE+'</cbc:CitySubdivisionName>'+
	--			'<cbc:CityName>'+@saticiIL+'</cbc:CityName>'+
	--			'<cbc:PostalZone>'+@saticiPostaKodu+'</cbc:PostalZone>'+
	--			'<cac:Country>'+
	--				'<cbc:Name>Türkiye</cbc:Name>'+
	--			'</cac:Country>'+
	--		'</cac:PostalAddress>'+
	--	'</cac:SignatoryParty>'+
	--	'<cac:DigitalSignatureAttachment>'+
	--		'<cac:ExternalReference>'+
	--			'<cbc:URI>#Signature</cbc:URI>'+
	--		'</cac:ExternalReference>'+
	--	'</cac:DigitalSignatureAttachment>'+
	'<cac:Signature/>'+
 	'<cac:AccountingSupplierParty>'+
		'<cac:Party>'+
			isnull('<cbc:WebsiteURI>'+@saticiUrl+'</cbc:WebsiteURI>','')+
			'<cac:PartyIdentification>'+
				isnull('<cbc:ID schemeID="VKN">'+@saticiVergiNo+'</cbc:ID>','')+
			'</cac:PartyIdentification>'+
			'<cac:PartyName>'+
				isnull('<cbc:Name>'+@saticiAdi+'</cbc:Name>','')+
			'</cac:PartyName>'+
			'<cac:PostalAddress>'+
				'<cbc:ID>1234567890</cbc:ID>'+
				isnull('<cbc:StreetName>'+@saticiAdres+'</cbc:StreetName>','')+
				isnull('<cbc:BuildingNumber>'+@saticiKapiNo+'</cbc:BuildingNumber>','')+
				isnull('<cbc:CitySubdivisionName>'+@saticiILCE+'</cbc:CitySubdivisionName>','')+
				isnull('<cbc:CityName>'+@saticiIL+'</cbc:CityName>','')+
				isnull('<cbc:PostalZone>'+@saticiPostaKodu+'</cbc:PostalZone>','')+
				'<cac:Country>'+
					'<cbc:Name>Türkiye</cbc:Name>'+
				'</cac:Country>'+
			'</cac:PostalAddress>'+
			'<cac:PartyTaxScheme>'+
				'<cac:TaxScheme>'+
					isnull('<cbc:Name>'+@saticiVergiDairesi+'</cbc:Name>','')+
				'</cac:TaxScheme>'+
			'</cac:PartyTaxScheme>'+
			'<cac:Contact>'+
				isnull('<cbc:Telephone>'+@saticiTel+'</cbc:Telephone>','')+
				isnull('<cbc:Telefax>'+@saticiFax+'</cbc:Telefax>','')+
				isnull('<cbc:ElectronicMail>'+@saticiEmail+'</cbc:ElectronicMail>','')+
			'</cac:Contact>'+
		'</cac:Party>'+
	'</cac:AccountingSupplierParty>'+
	'<cac:AccountingCustomerParty>'+
		'<cac:Party>'+
			isnull('<cbc:WebsiteURI>'+@aliciUrl+'</cbc:WebsiteURI>','')+
			'<cac:PartyIdentification>'+
				isnull('<cbc:ID schemeID="VKN">'+ @aliciVergiNo +'</cbc:ID>','')+
			'</cac:PartyIdentification>'+
			'<cac:PartyName>'+
				isnull('<cbc:Name>'+ @aliciAdi + '</cbc:Name>','')+
			'</cac:PartyName>'+
			'<cac:PostalAddress>'+
				'<cbc:ID>1234567890</cbc:ID>'+
				isnull('<cbc:StreetName>'+@aliciAdres +'</cbc:StreetName>','')+
				isnull('<cbc:BuildingNumber>'+@aliciKapiNo +'</cbc:BuildingNumber>','')+
				isnull('<cbc:CitySubdivisionName>'+@aliciILCE +'</cbc:CitySubdivisionName>','')+
				isnull('<cbc:CityName>'+@aliciIL +'</cbc:CityName>','')+
				'<cbc:PostalZone>'+@aliciPostaKodu+'</cbc:PostalZone>'+
				'<cac:Country>'+
					'<cbc:Name>Türkiye</cbc:Name>'+
				'</cac:Country>'+
			'</cac:PostalAddress>'+
			'<cac:PartyTaxScheme>'+
				'<cac:TaxScheme>'+
					isnull('<cbc:Name>'+@aliciVergiDairesi+'</cbc:Name>','')+
				'</cac:TaxScheme>'+
			'</cac:PartyTaxScheme>'+
			'<cac:Contact>'+
				isnull('<cbc:Telephone>' + @aliciTel +'</cbc:Telephone>','')+
				isnull('<cbc:Telefax>'+@aliciFax+'</cbc:Telefax>','')+
				isnull('<cbc:ElectronicMail>' +@aliciEmail +'</cbc:ElectronicMail>','')+
			'</cac:Contact>'+
		'</cac:Party>'+
	'</cac:AccountingCustomerParty>'+
	--'<cac:PaymentMeans>'+
	--	<cbc:PaymentMeansCode>1</cbc:PaymentMeansCode>
	--	<cac:PayeeFinancialAccount>
	--		<cbc:ID>5652214414</cbc:ID>
	--		<cbc:CurrencyCode>TRY</cbc:CurrencyCode>
	--		<cbc:PaymentNote>RRR Bankasý Beþiktaþ Þubesi TL Hesabý</cbc:PaymentNote>
	--	</cac:PayeeFinancialAccount>
	'<cac:PaymentMeans/>'+
	--'<cac:PaymentTerms>'+
	--	<cbc:Note>Fatura düzenlenme tarihinden itibaren 20 gün içerisinde ödenecektir.</cbc:Note>
	--	<cbc:PaymentDueDate>2008-11-25</cbc:PaymentDueDate>
	'<cac:PaymentTerms/>'+
	'<cac:TaxTotal>'+
		'<cbc:TaxAmount currencyID="TRY">'+ @faturaKdvTutar + '</cbc:TaxAmount>'+
		'<cac:TaxSubtotal>'+
			'<cbc:TaxableAmount currencyID="TRY">'+@faturaTutar+'</cbc:TaxableAmount>'+
			'<cbc:TaxAmount currencyID="TRY">'+@faturaKdvTutar+'</cbc:TaxAmount>'+
			'<cbc:CalculationSequenceNumeric>1.0</cbc:CalculationSequenceNumeric>'+
			'<cbc:Percent>18</cbc:Percent>'+
			'<cac:TaxCategory>'+
				'<cac:TaxScheme>'+
					'<cbc:Name>Katma Deðer Vergisi</cbc:Name>'+
					'<cbc:TaxTypeCode>0015</cbc:TaxTypeCode>'+
				'</cac:TaxScheme>'+
			'</cac:TaxCategory>'+
		'</cac:TaxSubtotal>'+
	'</cac:TaxTotal>'+
	'<cac:LegalMonetaryTotal>'+
		'<cbc:LineExtensionAmount currencyID="TRY">'+@faturaTutar +'</cbc:LineExtensionAmount>'+
		'<cbc:TaxExclusiveAmount currencyID="TRY">'+ @faturaTutar +'</cbc:TaxExclusiveAmount>'+
		'<cbc:TaxInclusiveAmount currencyID="TRY">'+@faturaGenelTutar+'</cbc:TaxInclusiveAmount>'+
	--	<cbc:AllowanceTotalAmount currencyID="TRY">786.90 </cbc:AllowanceTotalAmount>
		'<cbc:PayableAmount currencyID="TRY">'+@faturaGenelTutar+'</cbc:PayableAmount>'+
	'</cac:LegalMonetaryTotal>'


select 
    @faturaHareket = @faturaHareket + 
    '<cac:InvoiceLine>'+
        '<cbc:ID>'+ cast(ROW_NUMBER() OVER(ORDER BY faturaId,sira) as varchar)  + '</cbc:ID>'+
        '<cbc:InvoicedQuantity unitCode="NIU">' + cast(adet as varchar) + '</cbc:InvoicedQuantity>'+
        '<cbc:LineExtensionAmount currencyID="TRY">' + cast(tutar as varchar) + '</cbc:LineExtensionAmount>'+
        --'<cac:AllowanceCharge>'+
       --     '<cbc:ChargeIndicator>false</cbc:ChargeIndicator>'+
        --    <cbc:MultiplierFactorNumeric>0.05</cbc:MultiplierFactorNumeric>
        --    <cbc:Amount currencyID="TRY">495.3</cbc:Amount>
        --    <cbc:BaseAmount currencyID="TRY">9906</cbc:BaseAmount>
        '<cac:AllowanceCharge/>'+
        --'<cac:TaxTotal>'+
        --    <cbc:TaxAmount currencyID="TRY">1693.93</cbc:TaxAmount>
        --    <cac:TaxSubtotal>
        --        <cbc:TaxableAmount currencyID="TRY">9410.7</cbc:TaxableAmount>
        --        <cbc:TaxAmount currencyID="TRY">1693.93</cbc:TaxAmount>
        --        <cbc:Percent>18</cbc:Percent>
        --        <cac:TaxCategory>
        --            <cac:TaxScheme>
        --                <cbc:Name>KDV</cbc:Name>
        --                <cbc:TaxTypeCode>0015</cbc:TaxTypeCode>
        --            </cac:TaxScheme>
        --        </cac:TaxCategory>
        --    </cac:TaxSubtotal>
        '<cac:TaxTotal/>'+
        '<cac:Item>'+
            '<cbc:Name>'+ isnull(hizmetAdi,'') +'</cbc:Name>'+
        '</cac:Item>'+
        '<cac:Price>'+
            '<cbc:PriceAmount currencyID="TRY">'+cast(fiyat as varchar)+'</cbc:PriceAmount>'+
        '</cac:Price>'+
    '</cac:InvoiceLine>'

	from FaturaHareket fh

	--select @fatura + @faturaHareket + '</Invoice>'

	select cast(@fatura + @faturaHareket+'</Invoice>' as xml) faturaXML
end
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_FaturaXml'
GO
COMMIT
GO
