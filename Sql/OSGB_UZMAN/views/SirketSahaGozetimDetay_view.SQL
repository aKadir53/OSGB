BEGIN TRAN
GO
ALTER -- CREATE -- DROP
  VIEW dbo.SirketSahaGozetimDetay_view
with schemabinding 
AS
select sirketSahaGozetimId, sgd.id, sgd.Tespitler, sgd.Image, 
  sgd.Bolum, rb.Tanimi BolumTanimi,
  sgd.YapilacakFaliyetTuru, sft.Tanimi FaaliyetTanimi,
  sgd.KokNeden, sgd.FaliyetPlan, 
  sgd.UygulanacakFaliyetTarihi, sgd.BolumYetkilisi, 
  sgd.Sonuc, sts.tanimi SonucTanimi,
  sgd.YapilanFaliyet
from dbo.SirketSahaGozetimDetay sgd
left outer join dbo.RDS_RiskBolum rb on rb.kod = sgd.Bolum
left outer join dbo.SahaGozetimFaaliyetTuru sft on sft.kod = sgd.YapilacakFaliyetTuru
left outer join dbo.SahaGozetimTakipTetkikSonuc sts on sts.kod = sgd.Sonuc
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'SirketSahaGozetimDetay_view'
GO
COMMIT
GO
select * from SirketSahaGozetimDetay_view