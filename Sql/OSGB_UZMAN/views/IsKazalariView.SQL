BEGIN TRAN
GO
ALTER VIEW dbo.IsKazalariView
AS
SELECT        I.PersonelDosyaNo, I.ID, I.DuzenlemeTarihi, I.KazaTarihi, P.HASTAADI, P.HASTASOYADI
FROM            dbo.IsKazalari AS I INNER JOIN
                         dbo.PersonelKart AS P ON P.dosyaNo = I.PersonelDosyaNo
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'IsKazalariView'
GO
COMMIT
GO
