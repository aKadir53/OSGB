BEGIN TRAN
GO
ALTER VIEW dbo.Kontrol_Islem_View
AS
SELECT        K.id, K.tarih, K.sirketKod, K.subeKod, K.doktor, K.IGU, K.KontrolTip, K.KontrolTuru, s.tanimi AS Sirket, KK.tanimi AS KontrolTuruAdi, s.tanimi + CHAR(13) + KK.tanimi AS Tanim
FROM            dbo.Kontrol_Islem AS K INNER JOIN
                         dbo.SIRKETLER_TNM AS s ON s.SirketKod = K.sirketKod INNER JOIN
                         dbo.Kontrolislemleri AS KK ON KK.kod = K.KontrolTuru
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'Kontrol_Islem_View'
GO
COMMIT
GO
