BEGIN TRAN
GO
ALTER -- CREATE
  PROCEDURE [dbo].[sp_SirketAktifSozlesmeler] @Tarih datetime
AS
select S.id,S.SirketKod,SRKT.tanimi,Baslangic,Bitis,S.SozlesmeTanimi,FaturaKesimAyGunu,
       case when datepart(DAY,@Tarih) = FaturaKesimAyGunu then @Tarih else getdate()+(FaturaKesimAyGunu - datepart(DAY,@Tarih)) end faturaTarihi,
	   F.sira FaturaID,
	   (select sum(toplamFiyat) from SirketSozlesmeDetay where SirketSozlesmeID = S.id) SozlesmeTutar,
	   S.Aktif
	from SirketSozlesme S
	join SirketSozlesmeDetay SD on S.id = SD.SirketSozlesmeID
	join SIRKETLER_TNM SRKT on SRKT.sirketKod = S.sirketKod
	left join Faturalar F on F.sirketKod = S.sirketKod and convert(varchar,F.FaturaTarihi,112) = 
			case when datepart(DAY,@Tarih) = FaturaKesimAyGunu then convert(varchar,@Tarih,112) else convert(varchar,@Tarih+(FaturaKesimAyGunu - datepart(DAY,@Tarih)),112) end
	where @Tarih between Baslangic and Bitis and S.Aktif = 1--and FaturaKesimAyGunu = datepart(DAY,GETDATE()) 
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_SirketAktifSozlesmeler'
GO
COMMIT
GO
