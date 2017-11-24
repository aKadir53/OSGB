BEGIN TRAN
GO
-- [CMPTR] - [09.11.2017 17:43:49]
alter -- ALTER
  view dbo.SIRKETLER_TNM_view
as
Select ST.* 
from SIRKETLER_TNM ST
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'SIRKETLER_TNM_view'
GO
COMMIT
GO
