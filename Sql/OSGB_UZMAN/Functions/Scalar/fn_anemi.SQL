BEGIN TRAN
GO
ALTER FUNCTION [dbo].[fn_anemi] (@dosyaNo varchar(6) , @gelisNo int)
RETURNS varchar(5000)
AS
BEGIN
declare @anemi varchar(5000)
SET @anemi = ''
					
	 SELECT @anemi = @anemi +
		'<ANEMI_TEDAVISI_YONTEMI_BILGISI> ' +
		  '<ANEMI_TEDAVISI_YONTEMI version="1" codeSystemGuid="6037979e-61af-473e-ac5a-f58839804c34" code="' + isnull(datavalue,'') + '" value="' + isnull(ADI,'') + '" />'+
		'</ANEMI_TEDAVISI_YONTEMI_BILGISI>' 						 
	 from dbo.StrToTable((select substring(Anemi,2,20) FROM gelisler WHERE dosyaNo = @dosyaNo AND gelisNo = @gelisNo),',') t
	 LEFT JOIN SKRS_ANEMI_TEDAVISI_YONTEMI Aty ON Aty.KODU = t.DataValue 
	 WHERE len(t.DataValue) > 0						 
				 


return(@anemi)

end
GO
exec sp_vw_sys_upd 'FN', 'dbo', 'fn_anemi'
GO
COMMIT
GO
