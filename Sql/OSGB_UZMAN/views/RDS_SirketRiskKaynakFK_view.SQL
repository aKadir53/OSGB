BEGIN TRAN
GO
ALTER VIEW dbo.RDS_SirketRiskKaynakFK_view
AS
SELECT        SR.id, RB.tanimi AS RiskBolum, TK.tanimi AS TehlikeKaynak, SR.Tehlike, SR.Risk_tanim, SR.Image, SR.SirketRiskID
FROM            dbo.RDS_SirketRiskKaynakFK AS SR INNER JOIN
                         dbo.RDS_RiskBolum AS RB ON RB.kod = SR.Bolum INNER JOIN
                         dbo.RDS_TehlikeKaynak AS TK ON TK.kod = SR.TehlikeKaynagi
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'RDS_SirketRiskKaynakFK_view'
GO
COMMIT
GO
