BEGIN TRAN
GO
-- Cihaz kontrol formlarý baþlýk view'ý
ALTER -- CREATE -- DROP
  VIEW dbo.CihazKontrol_view
with schemabinding
AS
select ck.id, ck.sirketKod, s.Tanimi Sirket, ck.FaaliyetAlani, ck.TehlikeSinifi, ck.Tarih, ck.KontrolCihaz, c.tanimi CihazAciklamasi, ct.tanimi CihazTuru, ck.sorumluYonetici, ck.sorumlu
from dbo.CihazKontrol ck
LEFT outer join dbo.SIRKETLER_TNM S on s.SirketKod = ck.SirketKod
left outer join dbo.Cihaz C on C.kod = ck.KontrolCihaz
left outer join dbo.CihazTurleri ct on ct.kod = c.CihazTurKod
GO
-- deðiþiklik takip sistemi güncellemesi
exec sp_vw_sys_upd 'V ', 'dbo', 'CihazKontrol_view'
GO
COMMIT -- Rollback
GO
select * 
from CihazKontrol_view
