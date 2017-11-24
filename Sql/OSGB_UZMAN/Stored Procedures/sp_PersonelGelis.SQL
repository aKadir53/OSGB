BEGIN TRAN
GO
-- [CMPTR2] - [28.09.2017 22:50:52]
alter PROCEDURE [dbo].[sp_PersonelGelis] @dosyaNO varchar(10)
AS
select dosyaNO,gelisNo,cast(BHDAT as datetime) Tarih,
case TEDAVITURU
   when '1' then 'Ýþe Giriþ'
   when '2' then 'Peryodik'
   when '3' then 'Normal'
   else 'Normal' end TEDAVITURU
from gelisler
where dosyaNo = @dosyaNO 
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_PersonelGelis'
GO
COMMIT
GO
