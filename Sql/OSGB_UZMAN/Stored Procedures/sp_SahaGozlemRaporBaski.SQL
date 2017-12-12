BEGIN TRAN
GO
ALTER -- create -- drop
  procedure dbo.sp_SahaGozlemRaporBaski @RaporlarID int
as
begin
  Select RaporlarID, FirmaKodu, FirmaAdi, DenetimiYapanKullanici, DenetimiYapan, DenetimTarihi, Date_Create, GozetimDefterNo, ID, Konu_Sira, Konu, Uygunmu, Tespitler, Oneriler
  from dbo.SahaGozetimRaporlariView
  where RaporlarID = @RaporlarID
  order by konu_sira
end
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_SahaGozlemRaporBaski'
GO
COMMIT
GO
