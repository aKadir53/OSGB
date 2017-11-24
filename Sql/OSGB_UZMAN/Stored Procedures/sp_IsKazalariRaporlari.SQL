BEGIN TRAN
GO
-- [CMPTR] - [27.10.2017 12:24:21]
alter -- ALTER
  procedure dbo.sp_IsKazalariRaporlari @IlkTarih datetime, @SonTarih datetime, @TarihGoster bit = 0, @YilGoster bit = 0, @AyGoster bit = 0, @BolumGoster bit = 1
as
begin
  select case when @BolumGoster = 1 then BL.tanimi else null end KazaBolumu, 
    case when @TarihGoster = 1 then KazaTarihi else null end KazaTarihi, 
	case when @TarihGoster = 1 or @YilGoster = 1 or @AyGoster = 1  then year (KazaTarihi) else null end KazaYil, 
	case when @TarihGoster = 1 or @AyGoster = 1  then month (KazaTarihi) else null end KazaAy,
    count (*) KazaSayisi, 
    sum (KazaSonucuUcGunFazlaIstirahatAlan) KazaSonucuUcGunFazlaIstirahatAlan,
    sum (KazaSonucuUcGunIstirahatAlan) KazaSonucuUcGunIstirahatAlan,
    sum (KazaSonucuikiGunIstirahatAlan) KazaSonucuikiGunIstirahatAlan,
    sum (KazaSonucuBirGunIstirahatAlan) KazaSonucuBirGunIstirahatAlan,
    sum (KazaSonucuHafifYarali) KazaSonucuHafifYarali,
    sum (KazaSonucuUzuvKaybi) KazaSonucuUzuvKaybi,
    sum (KazaSonucuYaraliSayisi) KazaSonucuYaraliSayisi,
    sum (KazaSonucuOluSayisi) KazaSonucuOluSayisi
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
