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

 create -- drop
  TRIGGER [dbo].[firmaYillikEgitimPlaniEkle] ON  [dbo].[firmaYillikEgitimPlani]
AFTER DELETE,INSERT
AS 
BEGIN
  set nocount on

   declare @id int
   set @id = 0

   if exists(select * from inserted)
   begin
    select @id = id from inserted
    insert into firmaYillikEgitimPlanDetay (FirmaYillikEgitimPlanID,egitimTanimi,egitimKonulari,egitimeKatilacaklar)
    select @id,tanimi,konu,Katilacaklar from EgitimPlanKonulari
   end

   if exists(select * from deleted)
   begin
    select @id = id from deleted
    delete from firmaYillikEgitimPlanDetay where FirmaYillikEgitimPlanID = @id
   end


  set nocount off
END
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'firmaYillikEgitimPlaniEkle'
GO
COMMIT
GO
