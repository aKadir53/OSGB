BEGIN TRAN
GO
ALTER PROCEDURE [dbo].[sp_frmKazaTutanagiYazdir] @ID int
AS

select I.*,P.*,S.*,sb.*,b.tanimi KazaMeydanaGelBolum, u.tanimi uzuv, 
dbo.fn_yasTarih(cast(P.DOGUMTARIHI as datetime),I.KazaTarihi) yas
from IsKazalari I
join PersonelKart P on P.dosyaNo = I.PersonelDosyaNo
left join SIRKETLER_TNM S on S.SirketKod = P.SirketKod
join SIRKET_SUBE_TNM sb on sb.sirketKod = P.SirketKod and sb.subeKod = P.Sube
left join Bolumler b on b.kod = I.KazaninMeydanaGelBolum
--left join Bolumler bb on b.kod = I.MeslekHastTaniileSevkEdilenPerCalBolumIs
left join Uzuvlar U on U.kod = I.KazadaYaralananUzuv

where I.ID = @ID
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_frmKazaTutanagiYazdir'
GO
COMMIT
GO
