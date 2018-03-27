BEGIN TRAN
GO
ALTER -- CREATE
  PROCEDURE [dbo].[sp_SirketAktifSozlesmeler] @Tarih datetime
AS
select distinct S.id,S.SirketKod,SRKT.tanimi,Baslangic,Bitis,S.SozlesmeTanimi,FaturaKesimAyGunu,
       convert(varchar,case when datepart(DAY,@Tarih) = FaturaKesimAyGunu then @Tarih else getdate() end ,112) faturaTarihi,
	   F.sira FaturaID,
	   (select sum(toplamFiyat) from SirketSozlesmeDetay where SirketSozlesmeID = S.id and Tip = 'D') SozlesmeTutar,
	   S.Aktif
	from SirketSozlesme S
	join SirketSozlesmeDetay SD on S.id = SD.SirketSozlesmeID
	join SIRKETLER_TNM SRKT on SRKT.sirketKod = S.sirketKod
	left join Faturalar F on F.sirketKod = S.sirketKod and datepart(MONTH,@Tarih) = datepart(MONTH,F.FaturaTarihi) and F.ozelKod = 1

	where @Tarih between Baslangic and Bitis and S.Aktif = 1--and FaturaKesimAyGunu = datepart(DAY,GETDATE())
	and Tip = 'D' 
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_SirketAktifSozlesmeler'
GO
COMMIT
GO
