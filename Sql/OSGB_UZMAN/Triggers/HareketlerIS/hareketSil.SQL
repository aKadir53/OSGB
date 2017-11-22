BEGIN TRAN
GO
ALTER TRIGGER [dbo].[hareketSil]
   ON  [dbo].[HareketlerIS]
   AFTER UPDATE, DELETE,INSERT
AS 
BEGIN
declare @siraNo int , @TANIM varchar(3), @adet float,@code varchar(20) , 
        @akod varchar(2),@d varchar(6),@g int ,@dt int,
        @durum int , @hizmetGrup varchar(2),@partiKodu varchar(20)


  if exists(select * from deleted)
  begin

 
	  
      delete from IlacSarfCikis where SIRANO in (select SIRANO from deleted)
   
    -- stok çýkýþ iade ( hareketler satýr sil)
		select @akod = akod , @TANIM = TANIM ,@adet = adet , @code = code , @partiKodu = isnull(partiKodu,'000000') from deleted

        if @TANIM in ('09','16')
		begin

		   update stokdepotoplam
			  set topCik = topCik - @adet
		   where stokkodu = @code and Akod = @akod and stokseri = @partiKodu


		 end
       -- stok çýkýþ iade ( hareketler satýr sil)

  End
--
  if exists(select * from inserted)
  Begin


		  --insert into IlacSarfCikis (dosyaNo, gelisNo, SIRANO, gelisDetayNo, KARTTURU, AKOD, TANIM, GRUP, CODE, yapanDoktor, isteyenDoktor, ADET, UNITE, NAME1, SATISF, 
				--			  KSATISF, KDV, TARIH, Kurum, HZLNO, USER_ID, DATE_CREATE, USER_ID_UPDATE, DATE_UPDATE, MAKNO, KFATNO, ISLENDIMI, kesi, islemDurum, 
				--			  indirimOrani, indirimTutar, eskiFiyat, ICODE, T, katkiPayi, islemSiraNo, gssTutar, gelisId, indSebeb, hizmetCalisOnayi)
		  

		  --select dosyaNo, gelisNo, SIRANO, gelisDetayNo, KARTTURU, AKOD, TANIM, GRUP, CODE, yapanDoktor, isteyenDoktor, ADET, UNITE, NAME1, SATISF, 
				--			  KSATISF, KDV, TARIH, Kurum, HZLNO, USER_ID, DATE_CREATE, USER_ID_UPDATE, getdate(), MAKNO, KFATNO, ISLENDIMI, kesi, islemDurum, 
				--			  indirimOrani, indirimTutar, eskiFiyat, ICODE, T, katkiPayi, islemSiraNo, gssTutar, gelisId, indSebeb, hizmetCalisOnayi 
		  --from inserted
    --      where TANIM in ('09','16')

		select @akod = akod , @TANIM = TANIM ,@adet = adet , @code = code , @partiKodu = isnull(partiKodu,'000000') from inserted
    	
        --stok çýkýþ
        if @TANIM in ('09','16')
		begin
				if exists(select * from stokDepoToplam where stokkodu = @code and akod = @akod and stokseri = @partiKodu)
				begin
				  update stokdepotoplam
					set topCik = topCik + @adet
				  where stokkodu = @code and Akod = @akod and stokSeri = @partiKodu
				end 
				else
				begin
					insert into stokdepoToplam(stokkodu,Akod,topGir,topCik,stokSeri)
					values(@code,@akod,0,@adet,@partiKodu)
				end 
        end 
        --stok çýkýþ


  End



END
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'hareketSil'
GO
COMMIT
GO
