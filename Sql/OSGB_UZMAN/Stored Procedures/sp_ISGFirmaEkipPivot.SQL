BEGIN TRAN
GO
ALTER PROCEDURE [dbo].[sp_ISGFirmaEkipPivot] @Ekipid int , @sirketKod varchar(10)
AS
BEGIN

   select p.*
   from
	(	select AdiSoyadi,SB.tanimi, Ekiptanimi,SB.sirketKod,S.tanimi sirketAdi
	    from SIRKET_SUBE_EKIP_View SB
		join SIRKETLER_TNM S on s.sirketKod = SB.SirketKod
        where SB.sirketKod = @sirketKod and ISGEkipId = @Ekipid
	 ) as t

	PIVOT
	(
	max(AdiSoyadi)
	FOR tanimi IN ([Baþ Çalýþan Temsilcisi],[Ýþveren / Ýþveren Vekili],[Destek Elemaný]) 
	) AS p

END
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_ISGFirmaEkipPivot'
GO
COMMIT
GO
