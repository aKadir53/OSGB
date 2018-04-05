BEGIN TRAN
GO
ALTER TRIGGER [dbo].[CekEkle]
   ON  [dbo].cari_Cekler
   AFTER update, INSERT,Delete
AS 
BEGIN

  if exists(select * from deleted) 
  begin  
    insert into cari_CeklerLog(cekid,Tarih,VadeTarihi,tutar,aciklama,Tip,Durum,sirketKod,TedarikciKod,cariHareketId,date_create)
    select id,Tarih,VadeTarihi,tutar,aciklama,Tip,Durum,sirketKod,TedarikciKod,cariHareketId,getdate() from deleted
  end

  if exists(select * from inserted) 
  begin
    insert into cari_CeklerLog(cekid,Tarih,VadeTarihi,tutar,aciklama,Tip,Durum,sirketKod,TedarikciKod,cariHareketId,date_create)
    select id,Tarih,VadeTarihi,tutar,aciklama,Tip,Durum,sirketKod,TedarikciKod,cariHareketId,getdate() from inserted

  end
END
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'CekEkle'
GO
COMMIT
GO
