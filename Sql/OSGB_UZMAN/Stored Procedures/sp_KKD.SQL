BEGIN TRAN
GO
ALTER -- 
--ALTER
  PROCEDURE [dbo].[sp_KKD] @id int
AS
	select KKD.*,R.*,S.*,D.tanimi doktorAdi,I.tanimi IGU from RDS_KKD_Sirket KKD
	join RDS_SirketRisk R on R.id = KKD.sirketRiskId
	join SIRKETLER_TNM S on S.sirketKod = R.sirketKod
	join DoktorlarT D on D.kod = R.hazirlayanDoktor
	join IGU I on I.kod = R.hazirlayan
	where sirketRiskId = @id
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_KKD'
GO
COMMIT
GO
