BEGIN TRAN
GO
ALTER FUNCTION [dbo].[fn_fosfosbagAjan] (@dosyaNo varchar(6) , @gelisNo int)
RETURNS varchar(5000)
AS
BEGIN
declare @fosfor varchar(5000)
SET @fosfor = ''
					
	 SELECT @fosfor = @fosfor +	 
	   '<FOSFOR_BAGLAYICI_AJAN_BILGISI>'+
	     '<FOSFOR_BAGLAYICI_AJAN version="1" codeSystemGuid="57ac14e2-c27f-4aa1-8044-169bfc826d9e" code="' + case when isnull(datavalue,'') = '5' THEN '98' ELSE isnull(datavalue,'') end + '" value="' + isnull(ADI,'') + '" />'+
	   '</FOSFOR_BAGLAYICI_AJAN_BILGISI>'   
				 
	 from dbo.StrToTable((select substring(gelisler.FosforBagAjan,2,20) FROM gelisler WHERE dosyaNo = @dosyaNo AND gelisNo = @gelisNo),',') t
	 LEFT JOIN SKRS_FOSFOR_BAGLAYICI_AJAN Aty ON Aty.KODU = case when datavalue = '5' THEN '98' ELSE datavalue end
	 WHERE len(t.DataValue) > 0						 
				 


return(@fosfor)

end
GO
exec sp_vw_sys_upd 'FN', 'dbo', 'fn_fosfosbagAjan'
GO
COMMIT
GO
