BEGIN TRAN
GO
--ALTER -- 
ALTER
  PROCEDURE [dbo].[sp_RDS] @id int,@method int = 1
AS
	select *,B.tanimi BolumTanim,K.tanimi TehlikeKAynakTanim,SB.calisanSayi SubeCalisanSayi,SB.Adres SubeAdres,
	SRK.tanimi firmaAdi,TS.tanimi SirketTehlikeSinifi,SB.subeSiciNo,RDSM.tanimi DegerlendirmeMetod,
	(select merkezAdi from merkezBilgisi) osgbfirma,TS.RiskDegerlendirmePeryot,
	case grup 
	when 2 then D.tanimi
	when 1 then I.tanimi
	else '' end  kullaniciAdi

	from RDS_SirketRisk R
	 join RDS_SirketRiskKaynakFK RD on R.id = RD.SirketRiskID
	 join RDS_SKOR S on S.Kod = RD.RDS and S.metod = @method
	 join RDS_RiskBolum B on B.kod = RD.Bolum
	left join RDS_TehlikeKaynak k on k.kod = RD.TehlikeKaynagi
	join SIRKETLER_TNM SRK on SRK.sirketKod = R.sirketKod
	join SIRKET_SUBE_TNM SB on SB.sirketKod = R.sirketKod and SB.subeKod = R.subeKod
	left join TehlikeSiniflari TS on Ts.TehlikeSinifi = SB.tehlikeSinifi
	left join RDS_Method RDSM on RDSM.kod = R.Method
	left join Users U on U.kullanici = R.hazirlayan
	left join DOKTORLART D on D.kod = U.doktor
	left join IGU I on I.kod = U.IGU
	where R.Method = @method and R.id = @id
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_RDS'
GO
COMMIT
GO
