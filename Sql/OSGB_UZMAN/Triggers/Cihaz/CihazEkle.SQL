BEGIN TRAN
GO
ALTER TRIGGER [dbo].[CihazEkle]
   ON  [dbo].[Cihaz]
   AFTER INSERT,update
AS 
BEGIN
declare @cihazTurKod int,@kod int

select @cihazTurKod = cihazTurKod , @kod= kod from inserted

--if not exists(select * from CihazDetay where cihazKod = @kod)
--begin 
    set nocount on
	insert into CihazDetay(cihazKod,OzellikKod,Ozellik)

	select @kod,CB.kod,CB.Ozellik from CihazTurleri CT
	join CihazBilgileri CB on CT.kod = CB.cihazTurKod
	left join CihazDetay CD on CD.cihazKod = @kod and CD.OzellikKod = CB.kod
	where CB.cihazTurKod = @cihazTurKod and CD.cihazKod is null
	order by CB.sira
	
	set nocount off
--end

END
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'CihazEkle'
GO
COMMIT
GO
