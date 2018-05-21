BEGIN TRAN
GO
ALTER PROCEDURE [dbo].[sp_isgKurulEkibiMailBilgileri] @ISGKurulToplantiID int
AS
BEGIN
   declare @mail varchar(max) 
    set @mail = ''
    select @mail = case when isnull(eMail,'') <> '' then  @mail + case when  @mail = '' then '' else ',' end  + eMail else @mail end  
	from SirketISGKurulToplantiEkibi E
	join SirketISGKurulToplanti T on T.id = E.ISGKurulToplantiID
	join SIRKET_SUBE_EKIP_View SE on SE.kod = E.EkipID and SE.SirketKod = T.sirketKod
    where E.ISGKurulToplantiID =@ISGKurulToplantiID and SE.ISGEkipId = 10

    select  @mail = case when isnull(EPosta,'') <> '' then  @mail + case when  @mail = '' then '' else ',' end  + EPosta else @mail end  
	from SirketISGKurulToplanti T
	left join IGU I on I.kod = T.iGu
	--left join DoktorlarT DR on DR.kod = T.hekim
    where T.id = @ISGKurulToplantiID 

    select  @mail = case when isnull(EPosta,'') <> '' then  @mail + case when  @mail = '' then '' else ',' end  + EPosta else @mail end  
	from SirketISGKurulToplanti T
    left join DoktorlarT DR on DR.kod = T.hekim
    where T.id = @ISGKurulToplantiID 
    select @mail 

END
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_isgKurulEkibiMailBilgileri'
GO
COMMIT
GO
