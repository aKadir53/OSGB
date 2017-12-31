BEGIN TRAN
GO
ALTER PROCEDURE [dbo].[sp_HastaReceteSil_Imzasiz](@receteId int)
as
BEGIN
	declare @tesisKodu varchar(10),@receteBaslik varchar(2000),
	@receteIlacBilgisi varchar(2000),
	@receteTaniBilgisi varchar(1000),
	@receteAck varchar(1000),
	@doktorTc varchar(20),
	@user varchar(20),
	@sifre varchar(20)

--	select @tesisKodu = value from WebServisErisimBilgileri where SLK = '99' and SLB = '00'

	set @receteIlacBilgisi = ''
	set @receteTaniBilgisi = ''
	set @receteAck = ''

	select 
	        @receteBaslik = r.eReceteNo,		
			@doktorTc = d.tcKimlikNo,
			@user = d.eReceteKullanici,
			@sifre = d.eReceteSifre,
			@tesisKodu = d.Tesiskodu
	from recete r  
	join Personelkart h on h.dosyaNo = r.dosyaNO
	left join gelisler g on g.dosyaNo = r.dosyaNO and g.gelisNo = r.gelisNo  
	left join doktorlarT d on d.kod = r.doktor	
	where r.id = @receteId



	select 
	     @receteBaslik ReceteSil,@tesisKodu tesisKodu,@user doktorKullanici,@sifre doktorSifre,@doktorTc doktorTc

END
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_HastaReceteSil_Imzasiz'
GO
COMMIT
GO
