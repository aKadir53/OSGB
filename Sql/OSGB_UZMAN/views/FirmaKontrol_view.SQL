BEGIN TRAN
GO
ALTER VIEW dbo.FirmaKontrol_view
AS
SELECT        ck.id, ck.tarih, ck.sirketKod, ck.subeKod, ck.doktor, ck.IGU, S.tanimi AS Sirket
FROM            dbo.Kontrol_Islem AS ck LEFT OUTER JOIN
                         dbo.SIRKETLER_TNM AS S ON S.SirketKod = ck.sirketKod
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'FirmaKontrol_view'
GO
COMMIT
GO
