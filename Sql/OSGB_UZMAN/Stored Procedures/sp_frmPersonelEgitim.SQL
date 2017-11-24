BEGIN TRAN
GO
-- [CMPTR] - [25.10.2017 16:35:57]
alter -- ALTER
  procedure dbo.sp_frmPersonelEgitim @EgitimId int, @PersonelDosyaNo varchar (6) = null
as 
begin
  select st.tanimi SirketAdi, pk.HASTAADI + ' ' + pk.HASTASOYADI PersonelAdiSoyadi, * 
  from dbo.Egitimler E
  inner join dbo.Egitim_Tnm et on et.Kod = e.EgitimKod
  inner join dbo.Personel_Egitim pe on pe.EgitimID = e.id
  inner join dbo.PersonelKart pk on pk.Sirketkod = E.sirketkod
    and pk.DosyaNo = pE.personelDosyaNo
  inner join SIRKETLER_TNM st on st.SirketKod = e.SirketKod
  where E.id = @EgitimId
    and (@PersonelDosyaNo is null or pe.PersonelDosyaNo = @PersonelDosyaNo)
end
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_frmPersonelEgitim'
GO
COMMIT
GO
