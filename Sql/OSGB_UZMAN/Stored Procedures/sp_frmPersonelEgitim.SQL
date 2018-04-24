BEGIN TRAN
GO
-- sp_frmPersonelEgitim sp'sinin güncellenmesi
ALTER -- create
  procedure [dbo].[sp_frmPersonelEgitim] @EgitimId int = 0, @PersonelDosyaNo varchar (6) = ''
as 
begin
  select st.tanimi SirketAdi, pk.HASTAADI + ' ' + pk.HASTASOYADI PersonelAdiSoyadi, cast (convert (varchar, E.BaslamaTarihi, 112) as datetime) BaslamaTarihi, 
    cast (E.Sure as varchar) + ' Saat' Sure, E.EgitimYeri, E.EgitimIcerigi, 
    STUFF (
      (select ', ' + egitimciAdiSoyadi + IsNull (' ('+pex.egitimciUnvan+')', '')
       from Personel_Egitim_Egitimci pex
       where pex.EgitimID = E.id
       for xml path ('')), 1, 2, '') EgitimiVeren, null EgitimiVeren2, 
    IsNull (e.SertifikaNo + '/', '') + pe.PersonelDosyaNo SertifikaNo,
    left (convert (varchar, E.BaslamaTarihi, 108),5) BaslamaSaati,
    st.Adres Adresi, st.Tel1, st.Tel2, st.Fax, st.yetkilimail EPosta, e.EgitimTuru, 
    cast ('' as varchar (10)) SOZ, e.Sure SureSaat, et.tanimi EgitimAdi, e.BaslamaTarihi BaslamaZamani, pk.SirketKod, pk.dosyaNo,
    pe.EgitimId,EgitimKod,et.tanimi EgitimTuruAdi,
    dbo.egitimCheckStateToTanim(EgitimKod,EgitimTuru) egitimTanimlari,
    E.GecerlilikTarihi
  from dbo.Egitimler E
  inner join dbo.EgitimGrup_Tnm et on et.kod = e.EgitimTuru
  inner join dbo.Personel_Egitim pe on pe.EgitimID = e.id
  left join dbo.PersonelKart pk on pk.DosyaNo = pE.personelDosyaNo
  inner join dbo.SIRKETLER_TNM st on st.SirketKod = pk.SirketKod
  where (IsNull (@EgitimId, 0) = 0 or E.id = @EgitimId)
    and (IsNull (@PersonelDosyaNo, '') = '' or pe.PersonelDosyaNo = @PersonelDosyaNo)
  order by et.tanimi, e.id, PersonelAdiSoyadi
end
GO
-- sp_frmPersonelEgitim sp'sinin deðiþiklik takip sistemi güncellemesi
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_frmPersonelEgitim'
GO
COMMIT
GO
