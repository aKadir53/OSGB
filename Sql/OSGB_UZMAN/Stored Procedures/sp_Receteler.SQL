BEGIN TRAN
GO
ALTER PROCEDURE [dbo].[sp_Receteler](@sirketKod varchar(10) = '',@IlkTarih dateTime,@SonTarih datetime,@tip VARCHAR(1) = '')
as
BEGIN

declare @tarih1 VARCHAR(10),@tarih2 VARCHAR(10)

set @tarih1 = convert(varchar,@IlkTarih,112)
set @tarih2 = convert(varchar,@SonTarih,112)

	
IF @tip = ''
BEGIN
	select r.*,d.tanimi DoktorAdi, h.HASTAADI, h.HASTASOYADI,h.TCKIMLIKNO,h.SirketKod,s.tanimi
	from recete r  
	join Personelkart h on h.dosyaNo = r.dosyaNO  
    join SIRKETLER_TNM s on s.SirketKod = h.sirketKod	
	join doktorlarT d on d.kod = r.doktor
	where h.SirketKod like  '%'+@sirketKod+'%' and convert(varchar,tarih,112) between @tarih1 and @tarih2 
	order by h.SirketKod,id DESC,h.HASTAADI,h.HASTASOYADI	
END	
	
	

IF @tip = 'G'
BEgin
	select r.receteTur, r.protokolNo, r.doktor, r.tarih, r.Tani, r.eReceteNo,
		   r.receteAltTur, r.DosyaNo, r.gelisNo,
		   'Reçete Tarihi : ' + convert(VARCHAR,r.tarih,105) + ' | Reçete ID : ' + cast(r.id AS VARCHAR) + ' | Reçete Turu : ' + r.receteTur + ' | Protokol No : ' + isnull(r.protokolNo,'') + ' | E-Reçete No : ' + r.eReceteNo  id,
		   h.HASTAADI+ ' ' + h.HASTASOYADI + ' | ' + h.TCKIMLIKNO + ' | ' + s.tanimi HASTAADI,
			   rd.ilacKodu, rd.ilacAdi, rd.kullanimZaman, rd.kullanZamanUnit,
		   rd.kullanimSekli, rky.tanimi kullanimYolu, 
		   cast(rd.kullanimAdet AS VARCHAR)  + 'X' + cast(rd.kullanimAdet2 AS VARCHAR) doz
		   , rd.adet,h.SirketKod 
	from recete r  
	join Personelkart h on h.dosyaNo = r.dosyaNO  
	JOIN receteDetay rd ON rd.ReceteID = r.id	
	JOIN ReceteKullanimYol rky ON rky.kod = rd.kullanimYolu	
	join SIRKETLER_TNM s on s.SirketKod = h.sirketKod		
	where h.SirketKod like  '%'+@sirketKod+'%' and convert(varchar,tarih,112) between @tarih1 and @tarih2 
	order by convert(varchar,tarih,112) desc
end

END
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_Receteler'
GO
COMMIT
GO
