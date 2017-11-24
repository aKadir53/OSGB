BEGIN TRAN
GO
ALTER VIEW [dbo].[PersonelKartView]
AS
SELECT        dosyaNo, HASTAADI + ' ' + HASTASOYADI AS Adi, TCKIMLIKNO, DOGUMTARIHI, Aktif, SirketKod
FROM            dbo.PersonelKart
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'PersonelKartView'
GO
COMMIT
GO
