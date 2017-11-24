BEGIN TRAN
GO
-- [CMPTR2] - [24.10.2017 12:22:01]
ALTER VIEW dbo.PersonelKartView
AS
SELECT        dosyaNo, HASTAADI + ' ' + HASTASOYADI AS Adi, TCKIMLIKNO, DOGUMTARIHI, Aktif
FROM            dbo.PersonelKart
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'PersonelKartView'
GO
COMMIT
GO
