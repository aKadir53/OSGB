BEGIN TRAN
GO
ALTER PROCEDURE [dbo].[sp_ISGFirmaEkip] @Ekipid int , @sirketKod varchar(10)
AS
BEGIN
	select SE.id kod,AdiSoyadi,GT.tanimi,eMail,Telefon,TCKimlikNo tanimi,GT.aciklama,S.tanimi sirketAdi  from SIRKET_SUBE_EKIP SE
	join FirmaISGEkipGorevTnm GT on Gt.kod = SE.ISGEkipGorevID
   join SIRKETLER_TNM S on s.sirketKod = SE.SirketKod
	where SE.sirketKod = @sirketKod and SE.ISGEkipId = @Ekipid
END
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_ISGFirmaEkip'
GO
COMMIT
GO
