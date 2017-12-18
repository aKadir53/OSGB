BEGIN TRAN
GO
ALTER -- create -- drop
  procedure dbo.sp_SahaGozlemRaporBaski @RaporlarID int
as
begin
  Select RaporlarID, FirmaKodu, FirmaAdi, DenetimiYapanKullanici, DenetimiYapan, DenetimTarihi, Date_Create, GozetimDefterNo, ID, Konu_Sira, Konu, 
    Uygunmu, Tespitler, Oneriler, GozlemSoruGrubu, GozlemSoruAltGrubu, SoruSiraNo, GrupSiraNo
  from dbo.SahaGozetimRaporlariView
  where RaporlarID = @RaporlarID
  order by GrupSiraNo, SoruSiraNo, konu_sira
end
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_SahaGozlemRaporBaski'
GO
COMMIT
GO
