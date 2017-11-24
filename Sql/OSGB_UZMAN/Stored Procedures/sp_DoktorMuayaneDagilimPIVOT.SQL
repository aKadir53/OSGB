BEGIN TRAN
GO
ALTER PROCEDURE [dbo].[sp_DoktorMuayaneDagilimPIVOT] @Yil varchar(10),@DoktorKodu varchar(4) = ''
AS
BEGIN

declare @ay1 datetime,@ay2 datetime,@f int
declare @t table (ay varchar(2),yil varchar(4))

declare @t1 datetime , @t2 datetime
set @f = -1

set @ay2 = cast(@yil as datetime)
set @ay1 = DATEADD(MM, -6, @ay2)

while not @ay1 > @ay2 
begin
   insert into @t
   SELECT MONTH(@ay1),YEAR(@ay1)  
   set @ay1 = DATEADD(MM, 1, @ay1)
end

set @ay1 = DATEADD(MM, -5, @ay2)


IF @f = -1
BEGIN
 set @ay2 = cast(substring(@yil,1,4)+'1231' as datetime)
 set @ay1 = cast(substring(@yil,1,4)+'0101' as datetime)	
END


if @f = 0
begin
 select (replicate('0',2-len(ay)) +ay) ay,yil,dbo.aytoadi(replicate('0',2-len(ay)) +ay) ad from @t
 order by yil+(replicate('0',2-len(ay)) +ay)  desc
END

   select p.*
   from
	(

		select count(*) s , d.tanimi Doktor,Tanim,dbo.aytoadi(substring(g.bhdat,5,2)) tarIh from VW_MuayeneTipleri mt
		join gelisler g on g.TEDAVITURU = mt.Kod
		join DoktorlarT d on d.kod = g.doktor
		where g.doktor like '%'+@DoktorKodu+'%'
		group by d.tanimi,Tanim,bhdat

	 ) as t

	PIVOT
	(
	max(s)
	FOR tarIh IN ([OCAK],[SUBAT],[MART],[NISAN],[MAYIS],[HAZIRAN],[TEMMUZ],[AGUSTOS],[EYLUL],[EKIM],[KASIM],[ARALIK]) 
	) AS p
  
  order by Doktor




END
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_DoktorMuayaneDagilimPIVOT'
GO
COMMIT
GO
