BEGIN TRAN
GO
 ALTER -- drop
  TRIGGER [dbo].[SirketISGKurulToplantiEkle] ON  [dbo].[SirketISGKurulToplanti]
AFTER INSERT
AS 
BEGIN
  set nocount on

   declare @id int,@sirketKod varchar(6)
   set @id = 0
   set @sirketKod = ''

   if exists(select * from inserted)
   begin
    select @id = id,@sirketKod = sirketKod from inserted
    insert into SirketISGKurulToplantiEkibi (ISGKurulToplantiID,EkipID)
	select @id,kod from SIRKET_SUBE_EKIP_View 
	where ISGEkipId = 10 and SirketKod = @sirketKod and Aktif = 1
   end


  set nocount off
END
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'SirketISGKurulToplantiEkle'
GO
COMMIT
GO
