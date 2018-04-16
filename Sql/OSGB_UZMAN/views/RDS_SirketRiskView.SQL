BEGIN TRAN
GO
ALTER VIEW dbo.RDS_SirketRiskView
AS
SELECT        SR.id, SR.sirketKod, S.tanimi AS sirketAdi, SR.date_create AS Tarih, SR.gecerlilik_date AS GTarih, M.tanimi AS Method, SR.hazirlayan, SR.Onay, SR.paylasilan, SR.hazirlayanDoktor
FROM            dbo.RDS_SirketRisk AS SR INNER JOIN
                         dbo.SIRKETLER_TNM AS S ON S.SirketKod = SR.sirketKod INNER JOIN
                         dbo.RDS_Method AS M ON M.kod = SR.Method
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'RDS_SirketRiskView'
GO
COMMIT
GO
