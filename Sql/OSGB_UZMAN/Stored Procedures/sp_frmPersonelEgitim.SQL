BEGIN TRAN
GO
-- [CMPTR] - [25.10.2017 16:18:47]
alter -- ALTER
  procedure dbo.sp_frmPersonelEgitim @EgitimId int, @PersonelDosyaNo varchar (6) = null
as 
begin
  select pe.* 
  from dbo.Egitimler E
  inner join dbo.Egitim_Tnm et on et.Kod = e.EgitimKod
  inner join dbo.Personel_Egitim pe on pe.EgitimID = e.id
  inner join dbo.PersonelKart pk on pk.Sirketkod = E.sirketkod
    and pk.DosyaNo = pE.personelDosyaNo
  where E.id = @EgitimId
end
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_frmPersonelEgitim'
GO
COMMIT
GO
