BEGIN TRAN
GO
-- ================================================
-- Template generated from Template Explorer using:
-- ALTER Trigger (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- See additional Create Trigger templates for more

 CREATE -- drop
  TRIGGER [dbo].[firmaYillikCalismaPlaniEkle] ON  [dbo].[firmaYillikCalismaPlani]
AFTER DELETE,INSERT
AS 
BEGIN
  set nocount on

   declare @id int
   set @id = 0

   if exists(select * from inserted)
   begin
    select @id = id from inserted
    insert into firmaYillikCalismaPlanDetay (FirmaYillikCalismaPlanID,faliyetid)
    select @id,kod from FaaliyetKonulari
   end

   if exists(select * from deleted)
   begin
    select @id = id from deleted
    delete from firmaYillikCalismaPlanDetay where FirmaYillikCalismaPlanID = @id
   end


  set nocount off
END
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'firmaYillikCalismaPlaniEkle'
GO
COMMIT
GO
