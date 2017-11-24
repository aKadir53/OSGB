BEGIN TRAN
GO
-- [CMPTR2] - [24.10.2017 13:35:07]
ALTER PROCEDURE [dbo].[sp_frmKazaTutanagiYazdir] @ID int
AS

select I.*,P.*,S.*,U.tanimi UzuvAdi,B.tanimi BolumAdi from IsKazalari I
join PersonelKart P on P.dosyaNO = I.PersonelDosyaNo
join SIRKETLER_TNM S on S.sirketKod = P.sirketKod
join Bolumler B on B.kod = I.KazaninMeydanaGelBolum
join Uzuvlar U on U.kod = I.KazadaYaralananUzuv
where I.ID = @ID
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_frmKazaTutanagiYazdir'
GO
COMMIT
GO
