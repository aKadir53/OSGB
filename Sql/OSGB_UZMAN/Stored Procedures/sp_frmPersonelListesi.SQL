BEGIN TRAN
GO
--sp_frmPersonelListesi
ALTER PROCEDURE [dbo].[sp_frmPersonelListesi] @firma varchar(10) = '',@ap int = 1,@TCKimlikNo varchar(11) = '',@sube varchar(500) = ''
AS
begin
  if @sube = ''
  begin
    select @sube = @sube + ',' + subeKod from SIRKET_SUBE_TNM where sirketKod = @firma
  end

  if @sube <> ''
  begin
    select h.dosyaNo, h.SirketKod, h.CINSIYETI, h.MEDENI, h.HASTAADI, h.HASTASOYADI, h.TCKIMLIKNO, h.BASLANGIC, h.Birim Birim_1, h.Bolum Bolum_1, h.Sube Sube_1, h.EV_TEL1, 
      h.MuayenePeryot, 
      h.ozeldurum , 
      h.Diabet,
	  h.KronikHastalik,
      h.AntiHbs,
      h.il,h.ilce,h.mahalle,h.yas,
      h.DTARIHI ,
      h.EnsonkiPeryodikMuayeneTarihi,
      h.SonrakiPeryodikMuayeneTarihi,
      h.MuayeneKalanGun,
      h.ADI , h.tanimi,h.iseBaslama,
      h.sube Sube,h.subeTanim,h.doktorKod,h.doktor,h.birim,h.bolum,h.tetkikIstemGrupSablon, h.Kilo
    from dbo.PersonelKartListeView h
    where h.aktif = cast (@ap as varchar (1)) and
    h.sirketKod like  '%' + @firma + '%'  and
    h.sube in (select datavalue from dbo.strtotable(@sube,',')) and 
    (TCKIMLIKNO  = @TCKimlikNo or IsNull (@TCKimlikNo, '') = '')
    --isnull(h.MuayenePeryot,0) - isnull((select DATEDIFF(D,cast(BHDAT as datetime),getdate()) from gelisler where dosyaNo = h.dosyaNo and TEDAVITURU = '2'),0) <= @gun 
    order by h.SirketKod,h.sube,h.HASTAADI,h.HASTASOYADI
  end


  if (@sube = '') or (@firma = '')
  begin
    select h.dosyaNo, h.SirketKod, h.CINSIYETI, h.MEDENI, h.HASTAADI, h.HASTASOYADI, h.TCKIMLIKNO, h.BASLANGIC, h.Birim Birim_1, h.Bolum Bolum_1, h.Sube Sube_1, h.EV_TEL1, 
      h.MuayenePeryot, 
      h.ozeldurum , 
      h.Diabet,
	  h.KronikHastalik,
      h.AntiHbs,
      h.il,h.ilce,h.mahalle,h.yas,
      h.DTARIHI ,
      h.EnsonkiPeryodikMuayeneTarihi,
      h.SonrakiPeryodikMuayeneTarihi,
      h.MuayeneKalanGun,
      h.ADI , h.tanimi,h.iseBaslama,
      h.sube Sube,h.subeTanim,h.doktorKod,h.doktor,h.birim,h.bolum,h.tetkikIstemGrupSablon, h.Kilo
    from dbo.PersonelKartListeView h
    where h.aktif = cast (@ap as varchar (1)) and
    --h.sirketKod like  '%' + @firma + '%' and
    (TCKIMLIKNO  = @TCKimlikNo or IsNull (@TCKimlikNo, '') = '')
    --isnull(h.MuayenePeryot,0) - isnull((select DATEDIFF(D,cast(BHDAT as datetime),getdate()) from gelisler where dosyaNo = h.dosyaNo and TEDAVITURU = '2'),0) <= @gun 
    order by h.SirketKod,h.sube,h.HASTAADI,h.HASTASOYADI
  end
end
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_frmPersonelListesi'
GO
COMMIT
GO
