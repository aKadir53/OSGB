BEGIN TRAN
GO
ALTER VIEW dbo.FaturalarView
AS
SELECT        f.sira, f.sirketKod, f.faturaNo, f.FaturaTarihi, f.faturatip, f.faturaVade, f.faturaTutar, f.kdv, f.indirim, f.faturaGenelTutar, f.ozelKod, f.olusturma, f.kullanici, f.degistirme, f.dkullanici, f.aciklama, f.Guid, f.sirketTanimi, 
                         ft.kod, ft.tanimi AS FaturaTipTanimi
FROM            dbo.Faturalar AS f INNER JOIN
                         dbo.FaturaTipleri AS ft ON ft.kod = f.faturatip
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'FaturalarView'
GO
COMMIT
GO
