BEGIN TRAN
GO
ALTER -- create
  procedure dbo.sp_IsKazalariRaporlari @IlkTarih datetime, @SonTarih datetime, @TarihGoster bit = 0, @YilGoster bit = 0, @AyGoster bit = 0, @BolumGoster bit = 1
as
begin
  select case when @BolumGoster = 1 then BL.tanimi else null end [Kaza Bölümü], 
    case when @TarihGoster = 1 then KazaTarihi else null end [Kaza Tarihi], 
	case when @TarihGoster = 1 or @YilGoster = 1 or @AyGoster = 1  then year (KazaTarihi) else null end [Kaza Yýlý], 
	case when @TarihGoster = 1 or @AyGoster = 1  then month (KazaTarihi) else null end [Kaza Ayý],
    count (*) [Kaza Sayisi], 
    sum (KazaSonucuBirGunIstirahatAlan) [1 Gün Ýstirahat],
    sum (KazaSonucuikiGunIstirahatAlan) [2 Gün Ýstirahat],
    sum (KazaSonucuUcGunIstirahatAlan) [3 Gün Ýstirahat],
    sum (KazaSonucuUcGunFazlaIstirahatAlan) [4+x Gün Ýstirahat],
    sum (KazaSonucuHafifYarali) [Hafif Yaralý Sayýsý],
    sum (KazaSonucuUzuvKaybi) [Uzuv Kaybý],
    sum (KazaSonucuYaraliSayisi) [Yaralý Sayýsý],
    sum (KazaSonucuOluSayisi) [Ölü Sayýsý]
  from dbo.IsKazalari IK
  left outer join Bolumler BL on BL.kod = IK.KazaninMeydanaGelBolum
  where IK.KazaTarihi between @IlkTarih and @SonTarih
  group by case when @BolumGoster = 1 then BL.tanimi else null end, 
    case when @TarihGoster = 1 then KazaTarihi else null end,
    case when @TarihGoster = 1 or @YilGoster = 1 or @AyGoster = 1  then year (KazaTarihi) else null end,
	case when @TarihGoster = 1 or @AyGoster = 1  then month (KazaTarihi) else null end,
	case when @BolumGoster = 1 then BL.tanimi else null end
end
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_IsKazalariRaporlari'
GO
COMMIT
GO
