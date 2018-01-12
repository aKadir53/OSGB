BEGIN TRAN
GO
ALTER PROCEDURE [dbo].[sp_barkodBas] @barkod varchar(10) , @kod varchar(2) = '',@tip varchar(1) = ''
AS
BEGIN
declare @k varchar(500),@kn varchar(10),@tc varchar(13),@ad varchar(30)
set @k = ''
if @tip = '1'
Begin

    Select @kn = (case when isnull(k.disLabBarkodno,'') = '' then k.barkodNo else disLabBarkodNo end) 
          ,@tc = h.TCKIMLIKNO ,@ad = k.hastaAdi, 
           @k = @k + ' ' + k.code+' '+hz.name1+',' 
	
      from LaboratuvarKabul k
	join personelKart h on h.dosyaNo = k.dosyaNo
	left join lab_gruplari G ON g.SLB = k.OZELKOD
	left join HIZMET Hz on Hz.code = k.code
    where barkodno = @barkod
    and k.sec = 1
   -- and 
    --k.OZELKOD like @kod + '%'
	--group by h.TCKIMLIKNO,k.hastaAdi,k.barkodNo,k.OZELKOD,g.SLT
    select @k , @kn, @tc,@ad
End
Else
Begin
    Select h.TCKIMLIKNO,k.hastaAdi,(case when isnull(k.disLabBarkodno,'') = '' then k.barkodNo else disLabBarkodNo end) barkodNo
   ,k.OZELKOD,g.SLT
	  from LaboratuvarKabul k
	join personelKart h on h.dosyaNo = k.dosyaNo
	left join lab_gruplari G ON g.SLB = k.OZELKOD
	where barkodno = @barkod and 
    k.OZELKOD like @kod + '%'
	group by h.TCKIMLIKNO,k.hastaAdi,
             (case when isnull(k.disLabBarkodno,'') = '' then k.barkodNo else disLabBarkodNo end),
              k.OZELKOD,g.SLT
end
END
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_barkodBas'
GO
COMMIT
GO
