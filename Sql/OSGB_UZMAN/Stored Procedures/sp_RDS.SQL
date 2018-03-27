BEGIN TRAN
GO
--ALTER -- 
ALTER
  PROCEDURE [dbo].[sp_RDS] @id int
AS
	select *,B.tanimi BolumTanim,K.tanimi TehlikeKAynakTanim,

	case grup 
	when 2 then D.tanimi
	when 1 then I.tanimi
	else '' end  kullaniciAdi

	from RDS_SirketRisk R
	join RDS_SirketRiskKaynakFK RD on R.id = RD.SirketRiskID
	join RDS_SKOR S on S.Kod = RD.RDS and S.metod = 1
	join RDS_RiskBolum B on B.kod = RD.Bolum
	join RDS_TehlikeKaynak k on k.kod = RD.TehlikeKaynagi
	join SIRKETLER_TNM SRK on SRK.sirketKod = R.sirketKod
	left join Users U on U.kullanici = hazirlayan
	left join DOKTORLART D on D.kod = U.doktor
	left join IGU I on I.kod = U.IGU
	where Method = 1 and R.id = @id
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_RDS'
GO
COMMIT
GO
