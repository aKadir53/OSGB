BEGIN TRAN
GO
ALTER -- create -- drop
  view [dbo].[SahaGozetimRaporlariView]
with schemabinding
as
  select 
    -- baþlýk
    sgr.ID RaporlarID, sgr.FirmaKodu, srk.tanimi FirmaAdi, sgr.DenetimiYapanKullanici, U.ADISOYADI DenetimiYapan, sgr.DenetimTarihi, sgr.Date_Create, sgr.GozetimDefterNo,
    -- detay
    sr.ID, sr.Konu_Sira, ss.Konu, sr.UygunMu, sr.Tespitler, sr.Oneriler,
    ssgr.Tanimi SozlemSoruGrubu, ssagr.Tanimi GozlemSoruAltGrubu,
	ss.Sira SoruSiraNo, ssagr.Sira GrupSiraNo
  from dbo.SahaGozlemRaporlari sgr
  inner join dbo.SahaGozlemRaporu sr on sr.raporlarID = sgr.Id
  inner join dbo.SahaGozlemSorular ss on ss.ID = sr.Konu_Sira
  inner join dbo.SIRKETLER_TNM srk on srk.SirketKod = sgr.FirmaKodu
  inner join dbo.Users U on U.Kullanici = sgr.DenetimiYapanKullanici
  left outer join dbo.SahaGozlemSoruGrup ssgr on ssgr.GozlemGrup = ss.GozlemGrup
  left outer join dbo.SahaGozlemSoruAltGrup ssagr on ssagr.GozlemGrup = ss.GozlemGrup
    and ssagr.GozlemAltGrup = ss.GozlemAltGrup
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'SahaGozetimRaporlariView'
GO
COMMIT
GO
