BEGIN TRAN
GO
ALTER PROCEDURE [dbo].[sp_frmDoktorPersonelListesi] @firma varchar(10) = '',@ap int = 1,@doktor varchar(4),@sube varchar(500) = ''
AS
  if @sube = ''
  begin
    select @sube = @sube + ',' + subeKod from SIRKET_SUBE_TNM where sirketKod = @firma
  end
  select 
    h.dosyaNo, h.SirketKod, h.CINSIYETI, h.MEDENI, h.HASTAADI, h.HASTASOYADI, h.TCKIMLIKNO, h.BASLANGIC, h.Birim Birim_1, h.Bolum Bolum_1, h.Sube Sube_1, h.EV_TEL1, 
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
    h.ADI , h.tanimi,h.iseBaslama,h.sube Sube,h.subeTanim,h.doktorKod,h.doktor,h.birim,h.bolum,h.tetkikIstemGrupSablon, h.Kilo
  from dbo.PersonelKartListeView h
  where h.aktif = cast (@ap as varchar (1)) 
    and h.sirketKod like  '%' + @firma + '%' 
    and h.sube in (select datavalue from dbo.strtotable(@sube,',')) 
    and h.DoktorKod= @doktor
  order by h.SirketKod,h.sube,h.HASTAADI,h.HASTASOYADI
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_frmDoktorPersonelListesi'
GO
COMMIT
GO
