BEGIN TRAN
GO
 ALTER
 -- drop
  TRIGGER [dbo].[SirketRDSEkibiEkle] ON  [dbo].[RDS_SirketRisk]
AFTER INSERT,UPDATE
AS 
BEGIN
  set nocount on

   declare @id int,@sirketKod varchar(6)
   set @id = 0
   set @sirketKod = ''

   if exists(select * from deleted)
   begin
     select @id = id,@sirketKod = sirketKod from inserted
     delete from SirketRDSEkibi where SirketRiskID = @id

   end

   if exists(select * from inserted)
   begin
    select @id = id,@sirketKod = sirketKod from inserted
    insert into SirketRDSEkibi (SirketRiskID,EkipID)
	select @id,kod from SIRKET_SUBE_EKIP_View 
	where ISGEkipId = 1 and SirketKod = @sirketKod and Aktif = 1
   end




  set nocount off
END
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'SirketRDSEkibiEkle'
GO
COMMIT
GO
