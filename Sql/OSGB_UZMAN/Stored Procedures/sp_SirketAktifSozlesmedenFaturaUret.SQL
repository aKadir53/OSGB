BEGIN TRAN
GO
ALTER -- CREATE
  PROCEDURE [dbo].[sp_SirketAktifSozlesmedenFaturaUret] @SozlesmeId int,@ft datetime = null
AS

BEGIN TRY  
	BEGIN TRANSACTION
	declare @id int,@faturaTarihi datetime
	set @faturaTarihi = isnull(@ft,getdate())

	insert into Faturalar(sirketKod,sirketTanimi,faturaNo,FaturaTarihi,faturaTip,ozelKod,faturaTutar,kdv,faturaGenelTutar)

	select S.sirketKod,SRKT.tanimi,0,@faturaTarihi,
	1,1,0,0,0
	from SirketSozlesme S
	join SirketSozlesmeDetay SD on S.id = SD.SirketSozlesmeID
	join SIRKETLER_TNM SRKT on SRKT.sirketKod = S.sirketKod
	where S.id = @SozlesmeId 

	set @id = SCOPE_IDENTITY()
	--select @id

	insert into FaturaHareket(faturaId,hizmetAdi,hizmetKodu,fiyat,kdv,adet)

	select @id,H.NAME1,SD.hizmetKodu,SD.ToplamFiyat,H.KDV,1
	from SirketSozlesme S
	join SirketSozlesmeDetay SD on S.id = SD.SirketSozlesmeID
	join HIZMET H on H.code = SD.HizmetKodu
	where S.id = @SozlesmeId

	update faturalar
	set faturaTutar = (select sum(tutar) from FaturaHareket where faturaId = @id),
	    kdv = (select sum(kdvtutar) from FaturaHareket where faturaId = @id),
        faturaGenelTutar = (select sum(satirToplam) from FaturaHareket where faturaId = @id)
    where sira = @id


	COMMIT TRANSACTION
	select 1

END TRY
BEGIN CATCH
     if @@TRANCOUNT > 0  ROLLBACK TRANSACTION 
	 select ERROR_MESSAGE()
END CATCH  
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_SirketAktifSozlesmedenFaturaUret'
GO
COMMIT
GO
