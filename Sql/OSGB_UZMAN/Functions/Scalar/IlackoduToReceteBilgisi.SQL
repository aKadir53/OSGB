BEGIN TRAN
GO
ALTER FUNCTION [dbo].[IlackoduToReceteBilgisi] (@kod varchar(20) , @dosyaNo varchar(6) , @gelisNo int , @doz int = 1)
RETURNS varchar(500)
AS
BEGIN
declare @durum varchar(500)

declare @Ferritin float , @HGB float , @bDoz1 float , @bDoz2 float , @iDoz1 float , @iDoz2 float , 
        @iDozP varchar(10) , @bDozP varchar(10) , @Birim varchar(50) , @idealKilo float , @unite float,
        @uniteDozH float , @uniteDoz float , @kulDoz float , @etken varchar(250),
        @KulPerAdet varchar(2),@grup INT,@aciklama VARCHAR(50)
        
        set @bdoz1 = 0
        SET @bDoz2 = 0
        SET @iDoz1 = 0
        SET @iDoz2 = 0
        SET @unite = 0
        SET @uniteDoz = 0
        SET @uniteDozH = 0
        SET @bDozP = ''
        SET @iDozP = ''
        SET @Birim = ''
        SET @aciklama = ''
        
        

select @Ferritin = Gd from hareketler
where dosyaNO = @dosyaNo  and gelisNO = @gelisNo and code  = '901220' AND isnull(KabulNo,'') = ''

select @HGB = Gd from hareketler
where dosyaNO = @dosyaNo and gelisNO = @gelisNo and code  = '901620.3' AND isnull(KabulNo,'') = ''

select @idealKilo = IdealKilo  from Personelkart
where dosyano = @dosyaNo

select @unite = --cast(UNITE as float) * 
               @doz from ILACLAR where code = @kod

select @etken = ETKENMADDE,@grup = GRUP from ILACLAR where code = @kod

IF len(@etken) > 0 AND @grup = '1'
begin 

	select @bDoz1 = bDoz1 , @bDoz2 = bDoz2 , @bDozP = bDozPeryot , 
		   @iDoz1 = iDoz1 , @iDoz2 = iDoz2 , @iDozP = iDozPeryot,
		   @Birim = Birim , @aciklama = isnull(Aciklama,'')
	  from ETkenMaddeSutKurallari
	where EtkenMadde = @etken


	set @uniteDozH = round((@unite / @idealKilo),9)


	set @durum = ''

	if @hgb < 11
	begin
	  
	   if @etken = 'METOKSIPOLIETILEN GLIKOL EPOETIN BETA'
	   set @KulPerAdet = '15'
	   else set @KulPerAdet = ''

	   set @uniteDoz = @idealKilo * @bDoz2 
	   select top 1 @kulDoz = round((UNITE / @idealKilo),2) from ILACLAR
	   where ETKENMADDE = @etken and cast(UNITE as float) >= @uniteDoz
	   order by cast(UNITE as float)
	   
	   
	   if not @uniteDozH between @bDoz1 and @kulDoz
		  set @durum = 'Hata : Baþlangýç Tedavi Ýçin Doz Aþýmý , ['  + cast(@bDoz1 as varchar) + '-' + cast(@bDoz2 as varchar)+ 
		   '] - Hesaplanan Doz :' + cast(@uniteDozH as varchar) + ' ' + @birim  + '/' +(case when @hgb < 11 then substring(@bDozP,5,10) else substring(@iDozP,5,10) end)  
		  + ' Kuru Kilo : ' + cast(@idealKilo as varchar) + ' Kg ' + cast(@uniteDoz as varchar)
	end

	if @hgb >11 and @hgb <11.9
	begin
	 
	   set @uniteDoz = @idealKilo * @iDoz2 
	   select top 1 @kulDoz = round((UNITE / @idealKilo),2) from ILACLAR
	   where ETKENMADDE = @etken and cast(UNITE as float) >= @uniteDoz
	   order by cast(UNITE as float)


	  if not @uniteDozH between @iDoz1 and @kulDoz
		  set @durum = 'Hata : Ýdame Tedavi için Doz Aþýmý , ['  + cast(@bDoz1 as varchar) + '-' + cast(@bDoz2 as varchar)  + '] - Hesaplanan Doz : ' + cast(@unite as varchar) +' '+ @birim + '' + (case when @hgb < 11 then substring(@bDozP,5,10) else substring(@iDozP,5,10) end) 
		  + ' Kuru Kilo : ' + cast(@idealKilo as varchar)
	end

	if @durum = ''

	select @durum = 
	'Kuru Kilo : ' +  cast(@idealKilo as varchar) + ' Kg x ' +
	cast(@uniteDozH as varchar) + ' ' + @birim + '/' +
	(case when @hgb < 11 then @KulPerAdet +' ' +substring(@bDozP,5,10) else substring(@iDozP,5,10) end) +  
	 ' - Total Doz :' + cast((round(@uniteDozH*@idealKilo,0)) as varchar) + ' '+
	replace(@birim,'kg','') + '/' + (case when @hgb < 11 then @KulPerAdet + ' ' + substring(@bDozP,5,10) else substring(@iDozP,5,10) end) + 

	(case when @hgb < 11 then ' - Baþlangýç Tedavisi ' else 
	  (case when @hgb >=11 and @hgb <=11.9 then ' - Ýdame Tedavisi '  else '' end) end)
end



return(@durum)

end
GO
exec sp_vw_sys_upd 'FN', 'dbo', 'IlackoduToReceteBilgisi'
GO
COMMIT
GO
