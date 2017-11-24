BEGIN TRAN
GO
-- [CMPTR2] - [24.10.2017 12:21:07]
ALTER VIEW dbo.PersonelKartView
AS
SELECT        dosyaNo, HASTAADI + ' ' + HASTASOYADI AS Adi, TCKIMLIKNO, DOGUMTARIHI
FROM            dbo.PersonelKart
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'PersonelKartView'
GO
COMMIT
GO
