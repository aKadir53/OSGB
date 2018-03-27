BEGIN TRAN
GO
ALTER VIEW dbo.SirketISGKurulToplanti_view
AS
SELECT        KT.id, KT.sirketKod, KT.kararNo, KT.kararTarihi, KT.defterSayfaNo, KT.isveren, KT.iGu, KT.hekim, KT.calisanTemsilci, KT.ustaBasi, KT.idariIslerGorevli, KT.KonuveKararlar, s.tanimi AS sirketAdi
FROM            dbo.SirketISGKurulToplanti AS KT INNER JOIN
                         dbo.SIRKETLER_TNM AS s ON s.SirketKod = KT.sirketKod
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'SirketISGKurulToplanti_view'
GO
COMMIT
GO
