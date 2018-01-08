BEGIN TRAN
GO
ALTER  FUNCTION [dbo].[labsonucNormalDurum] (@sonuc varchar(50) , @ref varchar(100))
RETURNS int
AS
BEGIN
   declare @alt float , @ust float , @tire int , @s int , @ss float
   set @s = 0
   set @tire = charindex('-',@ref)
   if @tire > 0
   begin 
    set @alt = cast(rtrim(substring(replace(@ref,',','.'),1,@tire-1)) as float)
    set @ust = cast(rtrim(ltrim(substring(replace(@ref,',','.'),@tire+1,10))) as float) 
    set @sonuc = replace(@sonuc,',','.')
    
    if isnumeric(@sonuc) = 1
    begin
		set @ss = cast(@sonuc as float)
		if @ss < @alt 
		 set @s = -1
		else
		if @ss > @ust
		 set @s = 1
		else
		 set @s = 0
    end
    else set @s = 0 





    end


 return @s


END
GO
exec sp_vw_sys_upd 'FN', 'dbo', 'labsonucNormalDurum'
GO
COMMIT
GO
