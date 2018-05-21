BEGIN TRAN
GO
ALTER PROCEDURE [dbo].[sp_DBUpdateID] @id int , @tarih varchar(10)
AS
BEGIN
	update Parametreler set SLX = @id,SLT = @tarih where SLK = 'GT' and SLB = '0000'
END
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_DBUpdateID'
GO
COMMIT
GO
