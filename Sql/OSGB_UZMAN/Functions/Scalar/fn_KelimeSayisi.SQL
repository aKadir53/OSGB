BEGIN TRAN
GO
-- fn_KelimeSayisi fonksiyonu, verilen string'in ayraçlarla ayrýlmýþ kaç kelimeden ibaret olduðunu döndürür
ALTER -- CREATE 
  FUNCTION [dbo].[fn_KelimeSayisi] (@KaynakIfade varchar (500), @Ayraclar varchar (20))
returns int
with schemabinding 
as
begin
  declare 
	@iKelimeSayisi int = 0,
	@KaynakIfadeTmp varchar (501),
	@iTmpPos int

  set @KaynakIfadeTmp = LTRIM (RTRIM (@KaynakIfade))
  -- farklý ayraçlar için ayraçlar dizisindeki karakterleri boþluk ile deðiþtirerek stringi yont.
  set @iKelimeSayisi = 1
  while @iKelimeSayisi <= len ('X' + @Ayraclar + 'X') - 2
  begin
    set @KaynakIfadeTmp = replace (@KaynakIfadeTmp, substring (@Ayraclar, @iKelimeSayisi, 1), ' ')
	set @iKelimeSayisi = @iKelimeSayisi + 1
  end

  SET @iKelimeSayisi = 0
	
  if substring (@KaynakIfadeTmp, Len ('X' + @KaynakIfadeTmp + 'X') - 2, 1) <> ' ' 
    set @KaynakIfadeTmp = @KaynakIfadeTmp + ' '

  while (@KaynakIfadeTmp <> '')
  begin
    SET @iTmpPos = CHARINDEX (' ', @KaynakIfadeTmp)
	if @iTmpPos > 0
	begin
	  set @KaynakIfadeTmp = LTRIM (substring (@KaynakIfadeTmp, @iTmpPos + 1, len ('X' + @KaynakIfadeTmp + 'X') - 2))
	end
	else begin
	  set @KaynakIfadeTmp = ''
	end
	SET @iKelimeSayisi = @iKelimeSayisi + 1
  end
  return (@iKelimeSayisi)
end
GO
-- fn_KelimeSayisi () fonksiyonu deðiþiklik takip sistemi güncellemesi
exec sp_vw_sys_upd 'FN', 'dbo', 'fn_KelimeSayisi'
GO
COMMIT
GO
