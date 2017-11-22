BEGIN TRAN
GO
ALTER FUNCTION [dbo].[SonucAlXMLMesaageOlustur] (@labKodu int)
RETURNS VARCHAR(MAX)
AS
BEGIN
declare @xmlMessage VARCHAR(MAX)

 select @xmlMessage = 
 
 CASE @labKodu
    when 12 THEN 
		'<SOAP-ENV:Envelope xmlns:SOAP-ENV="http://www.w3.org/2003/05/soap-envelope" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
		<SOAP-ENV:Body>
		<DiyalizSonucDurum xmlns="http://tempuri.org/">
		<USER>%s</USER>
		<PASS>%s</PASS>
		<ORNEKNO>%s</ORNEKNO>
		<BASTAR>%s</BASTAR>
		<BITTAR>%s</BITTAR>
		<TC_KIMLIKNO>%s</TC_KIMLIKNO>
		</DiyalizSonucDurum>
		</SOAP-ENV:Body>
		</SOAP-ENV:Envelope>%s%s%s%s'

    		
    WHEN 11 THEN
    	'<SOAP-ENV:Envelope xmlns:SOAP-ENV="http://www.w3.org/2003/05/soap-envelope" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    	  <SOAP-ENV:Header><C_LoginSecurity xmlns="http://tempuri.org/">
    	   <Username>%s</Username>
    	   <Password>%s</Password>
    	   <ID>%s</ID></C_LoginSecurity>
    	  </SOAP-ENV:Header>
    	  <SOAP-ENV:Body>
    	   <GetLabRadResultsDate xmlns="http://tempuri.org/">
    	    <DateStart>%s</DateStart>
    	    <DateEnd>%s</DateEnd>
    	    <SSN>%s</SSN>
    	   </GetLabRadResultsDate>
    	  </SOAP-ENV:Body>
    	</SOAP-ENV:Envelope>%s%s%s%s'       
		
		
	WHEN 10 THEN
		'<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:tem="http://tempuri.org/">
   <soapenv:Header/>
   <soapenv:Body>
      <tem:SonucOku>
         <tem:giris>
            <tem:KullaniciAdi>%s</tem:KullaniciAdi>
            <tem:Sifre>%s</tem:Sifre>
            <tem:GonderenKurumKodu>%s</tem:GonderenKurumKodu>
            <tem:PDF>false</tem:PDF>
            <tem:OrnekNo>%s</tem:OrnekNo>
         </tem:giris>
      </tem:SonucOku>
   </soapenv:Body>
</soapenv:Envelope>%s%s%s%s%s%s'
           
           
                	
                
    ELSE '' end

RETURN  @xmlMessage

END
GO
exec sp_vw_sys_upd 'FN', 'dbo', 'SonucAlXMLMesaageOlustur'
GO
COMMIT
GO
