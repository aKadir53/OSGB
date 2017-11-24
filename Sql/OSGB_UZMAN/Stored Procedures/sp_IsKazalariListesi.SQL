BEGIN TRAN
GO
ALTER -- create
  procedure dbo.sp_IsKazalariListesi @IlkTarih datetime, @SonTarih datetime
as
begin
  select 
    IK.PersonelDosyaNo, 
    IK.ID, 
    IK.DuzenlemeTarihi, 
    KazaTarihi [Kaza Tarihi], 
    year (KazaTarihi) [Kaza Yýlý], 
    month (KazaTarihi) [Kaza Ayý],
    IK.KazaTarihiIsBasiSaati, 
    IK.KazaninMeydanaGelBolum, 
    BL.tanimi [Kaza Bölümü], 
    IK.KazadaYaralananUzuv, 
    IK.YaralanmaSekli, 
    IK.BirinciDereceYakin, 
    IK.BirinciDereceYakinAdres, 
    IK.MeslekHastTaniTarihi, 
    IK.MeslekHastTani, 
    IK.MeslekHastTaniileSevkEdilenPerCalBolumIs, 
    IK.MeslekHastSaptanmaSekli, 
    IK.KazaSonucuOluSayisi [Ölü Sayýsý],
    IK.KazaSonucuYaraliSayisi [Yaralý Sayýsý],
    IK.KazaSonucuUzuvKaybi [Uzuv Kaybý],
    IK.KazaSonucuHafifYarali [Hafif Yaralý Sayýsý],
    IK.KazaSonucuBirGunIstirahatAlan [1 Gün Ýstirahat],
    IK.KazaSonucuikiGunIstirahatAlan [2 Gün Ýstirahat],
    IK.KazaSonucuUcGunIstirahatAlan [3 Gün Ýstirahat],
    IK.KazaSonucuUcGunFazlaIstirahatAlan [4+x Gün Ýstirahat],
    IK.KazaGorenVarmi, 
    IK.Sahit1, 
    IK.Sahit1Adres, 
    IK.Sahit2, 
    IK.Sahit2Adres, 
    IK.Sahit3, 
    IK.Sahit3Adres, 
    IK.KazaSebebOlusSekli, 
    IK.IsverenveyaVekili
  from dbo.IsKazalari IK
  left outer join Bolumler BL on BL.kod = IK.KazaninMeydanaGelBolum
  where IK.KazaTarihi between @IlkTarih and @SonTarih
end
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_IsKazalariListesi'
GO
COMMIT
GO
