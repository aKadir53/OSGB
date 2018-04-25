BEGIN TRAN
GO
ALTER TRIGGER [dbo].[CihazKontrolleriEkle]
   ON  [dbo].[CihazKontrol]
   AFTER INSERT
AS 
BEGIN
declare @cihazKod int,@kontrolid int

select @cihazKod = KontrolCihaz , @kontrolid = id from inserted

if not exists(select * from CihazKontrolDetay where kontrolid = @kontrolid)
begin 
    set nocount on
	
	--insert into CihazKontrolDetay(kontrolid,CihazBilgisiOzellik,tip)
	--select @kontrolid,Ozellik,'CB' from CihazTurleri CT
	--join Cihaz C on C.kod = CT.kod
	--join CihazDetay CD on CD.cihazKod = CT.kod
	--where C.kod = @cihazKod
	

	insert into CihazKontrolDetay(kontrolid,Soruid,KontrolSoru)
	select @kontrolid,CKS.id,CKS.Soru from Cihaz C
	join CihazTurleri CT on C.cihazturKod = CT.kod
	join CihazKontrolSorulari CKS on CKS.cihazTurKod = CT.kod
	where C.Kod = @cihazKod
   
   set nocount off

end

END
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'CihazKontrolleriEkle'
GO
COMMIT
GO
