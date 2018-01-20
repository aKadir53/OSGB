BEGIN TRAN
GO
ALTER -- create -- drop
  view [dbo].[SahaGozetimRaporlariView]
with schemabinding
as
  select
    -- baþlýk
    sgr.ID RaporlarID, sgr.FirmaKodu, srk.tanimi FirmaAdi, sgr.SubeKod SubeKodu, srsb.subeTanim SubeTanimi, sgr.DenetimiYapanKullanici, U.ADISOYADI DenetimiYapan, sgr.DenetimTarihi, sgr.Date_Create, sgr.GozetimDefterNo,
    -- detay
    sr.ID, sr.Konu_Sira, ss.Konu, sr.UygunMu, sr.Tespitler, sr.Oneriler,
    ssgr.Tanimi GozlemSoruGrubu, ssagr.Tanimi GozlemSoruAltGrubu,
	ss.Sira SoruSiraNo, ssagr.Sira GrupSiraNo
  -- select * 
  from dbo.SahaGozlemRaporlari sgr
  inner join dbo.SahaGozlemSoruGrup ssgr on sgr.GozlemGrup = ssgr.GozlemGrup
  inner join dbo.SahaGozlemRaporu sr on sr.raporlarID = sgr.Id
  inner join dbo.SahaGozlemSorular ss on ss.ID = sr.Konu_Sira
  inner join dbo.SIRKET_SUBE_TNM srsb on srsb.SirketKod = sgr.FirmaKodu
    and srsb.SubeKod = sgr.SubeKod
  inner join dbo.SIRKETLER_TNM srk on srk.SirketKod = srsb.SirketKod
  inner join dbo.Users U on U.Kullanici = sgr.DenetimiYapanKullanici
  left outer join dbo.SahaGozlemSoruAltGrup ssagr on ssagr.GozlemGrup = ss.GozlemGrup
    and ssagr.GozlemAltGrup = ss.GozlemAltGrup
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'SahaGozetimRaporlariView'
GO
COMMIT
GO
