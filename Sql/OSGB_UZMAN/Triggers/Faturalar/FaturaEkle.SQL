BEGIN TRAN
GO
ALTER TRIGGER [dbo].[FaturaEkle]
   ON  [dbo].[Faturalar]
   AFTER UPDATE,INSERT,Delete
AS 
BEGIN
declare @faturaTip int ,@faturaGenelTutar float

if exists(select * from deleted) 
begin
  select @faturaTip = faturaTip,@faturaGenelTutar = faturaGenelTutar from deleted  
  
  delete from carihareketler where evrakId = (select sira from deleted)
  
  if @faturaTip = 1
  begin 
   update SIRKETLER_TNM
   set toplamBorc = toplamBorc - @faturaGenelTutar
   where sirketKod in (select sirketKod from deleted) and toplamBorc > 0
  end
  else
  begin
   update SIRKETLER_TNM
   set toplamAlacak = toplamAlacak - @faturaGenelTutar
   where sirketKod in (select sirketKod from deleted) and toplamAlacak > 0
  end

end

if exists(select * from inserted) 
begin
  select @faturaTip = faturaTip,@faturaGenelTutar = faturaGenelTutar from inserted
    
  insert into cariHareketler(carikod,tarih,borc,alacak,evrakNo,evrakId,evrakTipi,hareketTipi)
  select sirketKod,convert(varchar,faturatarihi,112),faturageneltutar,0,faturaNo,sira,faturatip,ozelKod from inserted 

  if @faturaTip = 1
  begin 
   update SIRKETLER_TNM
   set toplamBorc = toplamBorc + @faturaGenelTutar
   where sirketKod in (select sirketKod from inserted)
  end
  else
  begin
   update SIRKETLER_TNM
   set toplamAlacak = toplamAlacak + @faturaGenelTutar
   where sirketKod in (select sirketKod from inserted)
  end
 
end



END
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'FaturaEkle'
GO
COMMIT
GO
