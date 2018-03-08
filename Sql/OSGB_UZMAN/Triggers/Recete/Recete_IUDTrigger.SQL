BEGIN TRAN
GO
ALTER TRIGGER dbo.Recete_IUDTrigger ON dbo.Recete 
   AFTER INSERT,DELETE,UPDATE
AS 
BEGIN
  SET NOCOUNT ON

  insert into dbo.ReceteAciklama (receteId, aciklamaTip, aciklama)
  select i.id, 1, s.Tanimi
  from inserted i
  inner join dbo.PersonelKart pk on pk.DosyaNo = i.DosyaNo
  inner join dbo.SIRKETLER_TNM s on s.SirketKod = pk.SirketKod
  where not exists (select 1 from deleted d where d.id = i.id)
    and not exists (Select 1 from dbo.ReceteAciklama ra where ra.ReceteId = i.id and ra.AciklamaTip = 1 and ra.aciklama = s.Tanimi)

  SET NOCOUNT OFF
END
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'Recete_IUDTrigger'
GO
COMMIT
GO
