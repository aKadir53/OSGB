BEGIN TRAN
GO
-- [CMPTR] - [27.10.2017 14:11:50]
alter -- ALTER
  procedure dbo.sp_IsKazalariListesi @IlkTarih datetime, @SonTarih datetime
as
begin
  select BL.tanimi [Kaza Bölümü], 
    KazaTarihi [Kaza Tarihi], 
	year (KazaTarihi) [Kaza Yýlý], 
	month (KazaTarihi) [Kaza Ayý],
    KazaSonucuBirGunIstirahatAlan [1 Gün Ýstirahat],
    KazaSonucuikiGunIstirahatAlan [2 Gün Ýstirahat],
    KazaSonucuUcGunIstirahatAlan [3 Gün Ýstirahat],
    KazaSonucuUcGunFazlaIstirahatAlan [4+x Gün Ýstirahat],
    KazaSonucuHafifYarali [Hafif Yaralý Sayýsý],
    KazaSonucuUzuvKaybi [Uzuv Kaybý],
    KazaSonucuYaraliSayisi [Yaralý Sayýsý],
    KazaSonucuOluSayisi [Ölü Sayýsý],
	IK.*
  from dbo.IsKazalari IK
  left outer join Bolumler BL on BL.kod = IK.KazaninMeydanaGelBolum
  where IK.KazaTarihi between @IlkTarih and @SonTarih
end
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_IsKazalariListesi'
GO
COMMIT
GO
