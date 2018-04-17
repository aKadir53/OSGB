BEGIN TRAN
GO
ALTER -- CREATE -- DROP
  VIEW dbo.SirketSahaGozetimDetay_view
with schemabinding 
AS
SELECT sgd.sirketSahaGozetimId, sgd.id, sgd.Tespitler, sgd.Image, sgd.DokumanTip, 
  sgd.Bolum, rb.tanimi AS BolumTanimi, 
  sgd.YapilacakFaliyetTuru, sft.tanimi AS FaaliyetTanimi, 
  sgd.KokNeden, sgd.FaliyetPlan, 
  sgd.UygulanacakFaliyetTarihi, sgd.BolumYetkilisi, 
  sgd.Sonuc, sts.tanimi AS SonucTanimi, 
  sgd.YapilanFaliyet
FROM dbo.SirketSahaGozetimDetay AS sgd 
LEFT OUTER JOIN dbo.RDS_RiskBolum AS rb ON rb.kod = sgd.Bolum 
LEFT OUTER JOIN dbo.SahaGozetimFaaliyetTuru AS sft ON sft.kod = sgd.YapilacakFaliyetTuru 
LEFT OUTER JOIN dbo.SahaGozetimTakipTetkikSonuc AS sts ON sts.kod = sgd.Sonuc
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'SirketSahaGozetimDetay_view'
GO
COMMIT
GO
select * from SirketSahaGozetimDetay_view