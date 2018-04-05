BEGIN TRAN
GO
ALTER TRIGGER [dbo].[CariEkle]
   ON  [dbo].cariHareketler
   AFTER UPDATE,INSERT,Delete
AS 
BEGIN
  declare @faturaTip int ,@faturaGenelTutar float,@sirketKod varchar(10)


  if exists(select * from deleted) 
  begin
      select @sirketKod = carikod from deleted
      update SIRKETLER_TNM
      set toplamBorc = (select sum(borc) from cariHareketler where cariKod = @sirketKod),
        toplamAlacak = (select sum(Alacak) from cariHareketler where cariKod = @sirketKod)
      where sirketKod = @sirketKod

  end

  if exists(select * from inserted) 
  begin
      select @sirketKod = carikod from inserted
      update SIRKETLER_TNM
      set toplamBorc = (select sum(borc) from cariHareketler where cariKod = @sirketKod),
        toplamAlacak = (select sum(Alacak) from cariHareketler where cariKod = @sirketKod)
      where sirketKod = @sirketKod

  end
END
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'CariEkle'
GO
COMMIT
GO
