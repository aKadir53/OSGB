BEGIN TRAN
GO
-- [CMPTR2] - [06.10.2017 10:53:19]
ALTER PROCEDURE [dbo].[sp_HastaReceteSilToXML](@receteId int)
as
BEGIN
	declare @tesisKodu varchar(10),@receteBaslik varchar(2000),
	@receteIlacBilgisi varchar(2000),
	@receteTaniBilgisi varchar(1000),
	@receteAck varchar(1000),
	@doktorTc varchar(20),
	@pin varchar(4),
	@user varchar(20),
	@sifre varchar(20)

	select @tesisKodu = value from WebServisErisimBilgileri where SLK = '99' and SLB = '00'


	select 
	        @receteBaslik = 
							'<imzaliEreceteSilBilgisi>'+
							'<tesisKodu>'+@tesisKodu+'</tesisKodu>' +
							'<doktorTcKimlikNo>'+d.tcKimlikNo+'</doktorTcKimlikNo>' +
							'<ereceteNo>'+eReceteNo+'</ereceteNo>' +
							'</imzaliEreceteSilBilgisi>',
			@doktorTc = d.tcKimlikNo,
			@user = d.eReceteKullanici,
			@sifre = d.eReceteSifre,
			@pin = d.pin	
	from recete r  
	join Personelkart h on h.dosyaNo = r.dosyaNO
	left join gelisler g on g.dosyaNo = r.dosyaNO and g.gelisNo = r.gelisNo  
	left join doktorlarT d on d.kod = r.doktor	
	where r.id = @receteId


	select 
		'<?xml version="1.0" encoding="iso-8859-9"?>'+
	    @receteBaslik
		ReceteSil,@tesisKodu tesisKodu,@user doktorKullanici,@sifre doktorSifre,@pin pin,@doktorTc doktorTc

END
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_HastaReceteSilToXML'
GO
COMMIT
GO
