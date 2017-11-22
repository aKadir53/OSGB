BEGIN TRAN
GO
ALTER FUNCTION [dbo].[SonucAlXMLMesaageParamsOlustur] (@labKodu int,@Params VARCHAR(500))
RETURNS VARCHAR(500)
AS
BEGIN
declare @xParams VARCHAR(500),@username VARCHAR(20),@sifre VARCHAR(20),@id VARCHAR(20),
        @t1 VARCHAR(10),@t2 VARCHAR(10),@tc VARCHAR(20),@barkod VARCHAR(20)


       SELECT  @username = DataValue FROM dbo.StrToTable(@params,',') WHERE ValueAt = 1
       SELECT  @sifre = DataValue FROM dbo.StrToTable(@params,',') WHERE ValueAt = 2
       SELECT  @id = DataValue FROM dbo.StrToTable(@params,',') WHERE ValueAt = 3
       SELECT  @barkod = DataValue FROM dbo.StrToTable(@params,',') WHERE ValueAt = 4
       SELECT  @t1 = DataValue FROM dbo.StrToTable(@params,',') WHERE ValueAt = 5
       SELECT  @t2 = DataValue FROM dbo.StrToTable(@params,',') WHERE ValueAt = 6
       SELECT  @tc = DataValue FROM dbo.StrToTable(@params,',') WHERE ValueAt = 7

       
 select @xParams =
 
 case @labKodu 
    WHEN 12 then 
       @username + ',' + @sifre + ',' + case when @barkod = '0' THEN '' ELSE @barkod end + ',' +
       convert(varchar,CAST(@t1 AS DATETIME),104) + ',' + convert(varchar,CAST(@t2 AS DATETIME),104)+ ',' +
       @tc + ',,,,'     

    WHEN 11 then 
       @username + ',' + @sifre + ',' + @id + ',' +
       replace(convert(varchar,CAST(@t1 AS DATETIME),102),'.','-') + ',' + 
       replace(convert(varchar,CAST(@t2 AS DATETIME),102),'.','-')+ ',' +
       @tc + ',,,,' 

	WHEN 10 THEN
		@username + ','  +@sifre + ',' + @id + ',' + @barkod  + ',,,,,,'

ELSE '' end

RETURN  @xParams

END
GO
exec sp_vw_sys_upd 'FN', 'dbo', 'SonucAlXMLMesaageParamsOlustur'
GO
COMMIT
GO
