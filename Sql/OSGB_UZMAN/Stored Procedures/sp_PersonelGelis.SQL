BEGIN TRAN
GO
ALTER PROCEDURE [dbo].[sp_PersonelGelis] @dosyaNO varchar(10)
AS
select dosyaNO,gelisNo,cast(BHDAT as datetime) Tarih,
(case TEDAVITURU
   when '1' then 'Ýþe Giriþ'
   when '2' then 'Peryodik'
   when '3' then 'Normal'
   else 'Normal' end) as TEDAVITURU
from gelisler
where dosyaNo = @dosyaNO 
order by BHDAT desc
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_PersonelGelis'
GO
COMMIT
GO
