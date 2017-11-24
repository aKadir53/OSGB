BEGIN TRAN
GO
ALTER VIEW [dbo].[Doktorlar]
AS
SELECT     kod AS kod, tanimi AS ADI, tescilNo AS TescilNo, bransKodu AS Brans, durum AS durum, sertifika AS sertifika, tcKimlikNo AS TCKimlik, receteBrans AS ReceteBrans, null AS SertifikaNo, 
                      null AS Tip, TDisID AS TdisID, uzman AS Uzman
from DoktorlarT
/*
-- select *
SELECT     SLB AS kod, SLT AS ADI, SLX AS TescilNo, SLY AS Brans, SLYY AS durum, SLZ AS sertifika, SLVV AS TCKimlik, SLT1 AS ReceteBrans, SLZZ AS SertifikaNo, 
SLXX AS Tip, SLXXX AS TdisID, SLXXV AS Uzman
FROM         dbo.Parametreler
WHERE     (SLK = '02')
--*/
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'Doktorlar'
GO
COMMIT
GO
