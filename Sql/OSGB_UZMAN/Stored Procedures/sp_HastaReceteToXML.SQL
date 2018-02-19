BEGIN TRAN
GO
ALTER PROCEDURE [dbo].[sp_HastaReceteToXML](@receteId int)
as
BEGIN
	declare @tesisKodu varchar(10),@receteBaslik varchar(max),
	@receteIlacBilgisi varchar(max),
	@receteTaniBilgisi varchar(max),
	@receteAck varchar(max),
	@doktorTc varchar(20),
	@pin varchar(10),
	@user varchar(20),
	@sifre varchar(20),
	@cardType varchar(100)

--	select @tesisKodu = value from WebServisErisimBilgileri where SLK = '99' and SLB = '00'

	set @receteIlacBilgisi = ''
	set @receteTaniBilgisi = ''
	set @receteAck = ''

	select 
	        @receteBaslik = 
			'<protokolNo>'+ dbo.PrepareXMLValue (isnull(r.protokolNo,'0')) +'</protokolNo>'+
			'<provizyonTipi>'+'1'+'</provizyonTipi>'+
			'<receteAltTuru>'+ dbo.PrepareXMLValue (r.receteAltTur) +'</receteAltTuru>'+
			'<receteTarihi>'+ dbo.fn_FormattedTarih('DD.MM.YYYY',r.tarih) +'</receteTarihi>'+
			'<receteTuru>'+ dbo.PrepareXMLValue (r.receteTur) +'</receteTuru>'+
			 case when isnull(g.TakýpNo,'') = '' then '<takipNo/>' else '<takipNo>'+ dbo.PrepareXMLValue (isnull(g.TakýpNo,'')) +'</takipNo>' end +
			'<tcKimlikNo>'+ dbo.PrepareXMLValue (h.TCKIMLIKNO) +'</tcKimlikNo>'+
			'<tesisKodu>'+ dbo.PrepareXMLValue (d.Tesiskodu) +'</tesisKodu>'+
			'<seriNo>'+'1'+'</seriNo>'+
			'<doktorBransKodu>'+ dbo.PrepareXMLValue (d.bransKodu) +'</doktorBransKodu>'+
			'<doktorSertifikaKodu>0</doktorSertifikaKodu>' +
		--	'<doktorAdi/>'+
		--	'<doktorSoyadi/>'+
			'<doktorTcKimlikNo>'+ dbo.PrepareXMLValue (d.tcKimlikNo) + '</doktorTcKimlikNo>',
			@doktorTc = d.tcKimlikNo,
			@user = d.eReceteKullanici,
			@sifre = d.eReceteSifre,
			@pin = d.pin, 
			@tesisKodu = d.Tesiskodu,
			@cardType = d.cardType
	from recete r  
	join Personelkart h on h.dosyaNo = r.dosyaNO
	left join gelisler g on g.dosyaNo = r.dosyaNO and g.gelisNo = r.gelisNo  
	left join doktorlarT d on d.kod = r.doktor	
	where r.id = @receteId

	-- reçete ilaç bilgileri
	select 
	        @receteIlacBilgisi = @receteIlacBilgisi +
				'<ereceteIlacBilgisi>'+
				'<adet>' + cast(rd.adet as varchar) +'</adet>'+
				'<barkod>' +dbo.PrepareXMLValue (rd.ilacKodu) +'</barkod>'+
				'<ilacAdi>'+ dbo.PrepareXMLValue (rd.ilacAdi) +'</ilacAdi>'+
				'<kullanimDoz1>'+ cast(rd.kullanimAdet2 as varchar) +'</kullanimDoz1>'+
				'<kullanimPeriyotBirimi>' + dbo.PrepareXMLValue (kullanZamanUnit)  + '</kullanimPeriyotBirimi>'+
				'<kullanimSekli>'+ dbo.PrepareXMLValue (rd.kullanimYolu) +'</kullanimSekli>'+
				'<kullanimDoz2>'+ cast(rd.kullanimAdet as varchar) +'</kullanimDoz2>'+
				'<kullanimPeriyot>'+ dbo.PrepareXMLValue (rd.kullanimZaman) +'</kullanimPeriyot>'+
                isnull(dbo.ereceteIlacAciklamaBilgisi(rd.id),'') +
				'</ereceteIlacBilgisi>'	
	from recete r
	left JOIN receteDetay rd ON rd.ReceteID = r.id	
	where r.id = @receteId



  -- reçete taný bilgisi
	select 
	        @receteTaniBilgisi = @receteTaniBilgisi +
			'<ereceteTaniBilgisi>'+
			'<taniAdi>'+ dbo.PrepareXMLValue (rd.tani) +'</taniAdi>'+
			'<taniKodu>'+ dbo.PrepareXMLValue (rd.taniKodu) +'</taniKodu>'+
			'</ereceteTaniBilgisi>'
	
	from recete r
	left JOIN receteTani rd ON rd.ReceteID = r.id	
	where r.id = @receteId


	-- reçete açýklama
	select 
	        @receteAck = @receteAck +
				'<ereceteAciklamaBilgisi>'+
				'<aciklama>'+ dbo.PrepareXMLValue (rd.aciklama) +'</aciklama>'+
				'<aciklamaTuru>'+ dbo.PrepareXMLValue (rd.aciklamaTip) +'</aciklamaTuru>'+
				'</ereceteAciklamaBilgisi>'	
	from recete r
	left JOIN ReceteAciklama rd ON rd.ReceteID = r.id	
	where r.id = @receteId


	select 
		'<?xml version="1.0" encoding="iso-8859-9"?>'+
		'<ereceteBilgisi>'+
	    @receteBaslik + @receteIlacBilgisi + @receteTaniBilgisi + isnull(@receteAck,'') +
		'</ereceteBilgisi>'

		 Recete,@tesisKodu tesisKodu,@user doktorKullanici,@sifre doktorSifre,@pin pin,@doktorTc doktorTc,isnull(@receteAck,''),@cardType cardType

END
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_HastaReceteToXML'
GO
COMMIT
GO
