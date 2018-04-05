BEGIN TRAN
GO
ALTER TRIGGER [dbo].[FaturaEkle]
   ON  [dbo].[Faturalar]
   AFTER UPDATE,INSERT,Delete
AS 
BEGIN
declare @faturaTip int ,@faturaGenelTutar float,@sirketKod varchar(10)

  if exists(select * from deleted) 
  begin
  
    delete from carihareketler where evrakId = (select sira from deleted)
  
    --declare x cursor for
    --select sirketKod,faturaGenelTutar,faturaTip from deleted
    --open x
    --fetch next from x
    --INTO @sirketKod,@faturaGenelTutar,@faturaTip

    --while @@fetch_status = 0
    --begin
    --  update SIRKETLER_TNM
    --  set toplamBorc = (select sum(borc) from cariHareketler where cariKod = @sirketKod),
    --    toplamAlacak = (select sum(Alacak) from cariHareketler where cariKod = @sirketKod)
    --  where sirketKod = @sirketKod
    --  fetch next from x
    --  INTO @sirketKod,@faturaGenelTutar,@faturaTip 
    --end
    --close x
    --DEALLOCATE x

  end

  if exists(select * from inserted) 
  begin

    insert into cariHareketler(carikod,tarih,borc,alacak,evrakNo,evrakId,evrakTipi,hareketTipi)
    select sirketKod,convert(varchar,faturatarihi,112),faturageneltutar,0,faturaNo,sira,faturatip,ozelKod from inserted 

    --declare x cursor for
    --select sirketKod,faturaGenelTutar,faturaTip from inserted
    --open x
    --fetch next from x
    --INTO @sirketKod,@faturaGenelTutar,@faturaTip

    --while @@fetch_status = 0
    --begin
    --  update SIRKETLER_TNM
    --  set toplamBorc = (select sum(borc) from cariHareketler where cariKod = @sirketKod),
    --  toplamAlacak = (select sum(Alacak) from cariHareketler where cariKod = @sirketKod)
    --  where sirketKod = @sirketKod
    --  fetch next from x
    --  INTO @sirketKod,@faturaGenelTutar,@faturaTip 
    --end
    --close x
    --DEALLOCATE x

  end
END
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'FaturaEkle'
GO
COMMIT
GO
