BEGIN TRAN
GO
ALTER FUNCTION [dbo].[fn_P704230Count] (@rtarih VARCHAR(6))
RETURNS int
AS
BEGIN
declare @sutKoduSayisi int

		SELECT @sutKoduSayisi = COUNT(*) 
		FROM GelisDetay g
	--	JOIN gelisler gel ON gel.dosyaNo = g.dosyaNo AND gel.gelisNo = g.gelisNo
		JOIN hastakart h ON h.dosyaNo = g.dosyaNo    
		left join Kurumlar k on k.kurum = h.kurum    
		WHERE substring(RTarih,1,6) = SUBSTRING(@rtarih,1,6) AND HemodiyalizTip = 'M' 
		      AND g.durum = 1 AND k.KURUMTIPI in ('1','99')
            --  AND len(isnull(gel.TakýpNo,'')) > 0

return(@sutKoduSayisi)

end
GO
exec sp_vw_sys_upd 'FN', 'dbo', 'fn_P704230Count'
GO
COMMIT
GO
