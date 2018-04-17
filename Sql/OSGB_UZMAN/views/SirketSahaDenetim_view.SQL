BEGIN TRAN
GO
ALTER VIEW dbo.SirketSahaDenetim_view
AS
SELECT        SG.id, SG.sirketKod, SG.subeKod, SG.date_create, SG.update_date, SG.hazirlayan, SG.isveren, S.tanimi AS SirketAdi, L.logo
FROM            dbo.SirketSahaDenetim AS SG INNER JOIN
                         dbo.SIRKETLER_TNM AS S ON S.SirketKod = SG.sirketKod INNER JOIN
                         dbo.FirmaLogo AS L ON L.sirketKod = S.SirketKod
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'SirketSahaDenetim_view'
GO
COMMIT
GO
