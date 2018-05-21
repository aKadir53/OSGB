BEGIN TRAN
GO
ALTER VIEW [dbo].[SirketISGKurulToplanti_view]
AS
SELECT        KT.id, KT.sirketKod, KT.kararNo, KT.kararTarihi, KT.defterSayfaNo, KT.isveren, KT.iGu, KT.hekim, KT.calisanTemsilci, KT.ustaBasi, KT.idariIslerGorevli, KT.KonuveKararlar, s.tanimi AS sirketAdi, 
                         KT.GundemMaddeleri, DR.tanimi AS DoktorAdi, I.tanimi AS IGUAdi, KT.ToplantiNo, KT.ToplantiZamani, KT.ToplantiYeri, KT.ToplantiBaskani
FROM            dbo.SirketISGKurulToplanti AS KT INNER JOIN
                         dbo.SIRKETLER_TNM AS s ON s.SirketKod = KT.sirketKod INNER JOIN
                         dbo.DoktorlarT AS DR ON DR.kod = KT.hekim INNER JOIN
                         dbo.IGU AS I ON I.kod = KT.iGu
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'SirketISGKurulToplanti_view'
GO
COMMIT
GO
