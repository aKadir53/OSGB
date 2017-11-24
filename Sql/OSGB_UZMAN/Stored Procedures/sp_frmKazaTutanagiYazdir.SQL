BEGIN TRAN
GO
-- [CMPTR2] - [24.10.2017 22:50:43]
ALTER PROCEDURE [dbo].[sp_frmKazaTutanagiYazdir] @ID int
AS

select * from IsKazalari I
join PersonelKart P on P.dosyaNo = I.PersonelDosyaNo
join SIRKETLER_TNM S on S.Sirketkod = P.SirketKod
join SIRKET_SUBE_TNM sb on sb.sirketKod = S.SirketKod and sb.subeKod = P.Sube
join Bolumler b on b.kod = P.Bolum
join Uzuvlar U on U.kod = I.KazadaYaralananUzuv

where I.ID = @ID
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_frmKazaTutanagiYazdir'
GO
COMMIT
GO
