BEGIN TRAN
GO
ALTER VIEW dbo.cari_CariKartView
AS
SELECT        SirketKod AS Kod, tanimi
FROM            dbo.SIRKETLER_TNM
union all
select KOD,tanimi from cari_Tedarikciler
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'cari_CariKartView'
GO
COMMIT
GO
