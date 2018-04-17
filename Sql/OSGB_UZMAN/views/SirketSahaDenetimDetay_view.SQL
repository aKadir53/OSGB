BEGIN TRAN
GO
ALTER VIEW dbo.SirketSahaDenetimDetay_view
AS
SELECT        sgd.sirketSahaDenetimId, sgd.id, sgd.TehlikeliDurum, sgd.Yonetmelik, sgd.IlgiliKisi, sgd.isinDurumu, sgd.Image, sgd.Bolum, rb.kod, rb.tanimi
FROM            dbo.SirketSahaDenetimDetay AS sgd LEFT OUTER JOIN
                         dbo.RDS_RiskBolum AS rb ON rb.kod = sgd.Bolum
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'SirketSahaDenetimDetay_view'
GO
COMMIT
GO
