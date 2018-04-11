BEGIN TRAN
GO
ALTER -- 
--CREATE
  PROCEDURE [dbo].[sp_FaturaOdeme] @BorcluHesap varchar(10)='' ,@AlacakliHesap varchar(10)='',@tutar float,@aciklama varchar(300)='',
									  @tarih datetime = null,@cek varchar(1) = 'H',@vadeTarih datetime=null,
									  @evrakTipi int,@evrakNo varchar(15) = '',@cekDurum int = 7,@cekId int = 0
AS
  
    set @tarih = isnull(@tarih,getdate())
	
	if @BorcluHesap <> ''
	begin
	 insert into cariHareketler (cariKod,aciklama,borc,alacak,tarih,evrakTipi,evrakNo)
	 values(@BorcluHesap,@aciklama,0,@tutar,@tarih,@evrakTipi,@evrakNo)
	end

	if @AlacakliHesap <> ''
	begin	
	 insert into cariHareketler (cariKod,aciklama,borc,alacak,tarih,evrakTipi,evrakNo)
	 values (@AlacakliHesap,@aciklama,@tutar,0,@tarih, @evrakTipi, @evrakNo
	  
	  )
    end
	
	

	if @cek = 'E'
	begin
		 if @cekId = 0
		 begin
		  insert into cari_cekler(Tarih,VadeTarihi,tutar,aciklama,Tip,Durum,sirketKod,cariHAreketId)
		  values(@tarih,@vadeTarih,@tutar,@aciklama,'C',@cekDurum,@AlacakliHesap,SCOPE_IDENTITY())
		 end	
	end

	if @cek = 'O'
	begin
		update cari_cekler
	    set Durum = @cekDurum,cariHAreketId = SCOPE_IDENTITY()
	    where id = @cekId
    end
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_FaturaOdeme'
GO
COMMIT
GO
