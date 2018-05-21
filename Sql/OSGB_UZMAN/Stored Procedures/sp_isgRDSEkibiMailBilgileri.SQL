BEGIN TRAN
GO
ALTER PROCEDURE [dbo].[sp_isgRDSEkibiMailBilgileri] @RDSID int
AS
BEGIN
   declare @mail varchar(max) 
    set @mail = ''
    select @mail = case when isnull(eMail,'') <> '' then  @mail + case when  @mail = '' then '' else ',' end  + eMail else @mail end  
	from SirketRDSEkibi E
	join RDS_SirketRisk T on T.id = E.SirketRiskID
	join SIRKET_SUBE_EKIP_View SE on SE.kod = E.EkipID and SE.SirketKod = T.sirketKod
    where E.SirketRiskID =@RDSID and SE.ISGEkipId = 1

    select  @mail = case when isnull(EPosta,'') <> '' then  @mail + case when  @mail = '' then '' else ',' end  + EPosta else @mail end  
	from RDS_SirketRisk T
	left join IGU I on I.kod = T.hazirlayan
	--left join DoktorlarT DR on DR.kod = T.hekim
    where T.id = @RDSID 

    select  @mail = case when isnull(EPosta,'') <> '' then  @mail + case when  @mail = '' then '' else ',' end  + EPosta else @mail end  
	from RDS_SirketRisk T
    left join DoktorlarT DR on DR.kod = T.hazirlayanDoktor
    where T.id = @RDSID 
    select @mail 

END
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_isgRDSEkibiMailBilgileri'
GO
COMMIT
GO
