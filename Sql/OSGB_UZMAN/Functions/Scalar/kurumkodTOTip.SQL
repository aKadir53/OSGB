BEGIN TRAN
GO
ALTER FUNCTION [dbo].[kurumkodTOTip] (@kurum varchar(6) )
RETURNS int
AS
BEGIN
declare @Kurum1 int
--set @kurum1 = 0
   select @Kurum1 = KURUMTIPI from kurumlar
   where kurum = @kurum

RETURN  (@Kurum1)

END
GO
exec sp_vw_sys_upd 'FN', 'dbo', 'kurumkodTOTip'
GO
COMMIT
GO
