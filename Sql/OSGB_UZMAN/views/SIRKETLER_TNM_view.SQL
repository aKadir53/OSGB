BEGIN TRAN
GO
-- [CMPTR] - [09.11.2017 17:42:27]
ALTER
  view dbo.SIRKETLER_TNM_view
as
Select * 
from SIRKETLER_TNM
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'SIRKETLER_TNM_view'
GO
COMMIT
GO
