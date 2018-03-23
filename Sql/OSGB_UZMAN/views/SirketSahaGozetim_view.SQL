BEGIN TRAN
GO
ALTER VIEW dbo.SirketSahaGozetim_view
AS
SELECT        SG.id, SG.sirketKod, SG.date_create, SG.update_date, SG.gecerlilik_date, SG.hazirlayan, SG.isveren, S.tanimi AS SirketAdi
FROM            dbo.SirketSahaGozetim AS SG INNER JOIN
                         dbo.SIRKETLER_TNM AS S ON S.SirketKod = SG.sirketKod
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'SirketSahaGozetim_view'
GO
COMMIT
GO
