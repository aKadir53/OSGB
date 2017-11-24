BEGIN TRAN
GO
-- [CMPTR] - [09.11.2017 17:47:46]
alter -- ALTER
  view dbo.SIRKETLER_TNM_view
as
Select ST.* 
from SIRKETLER_TNM ST
left outer join 
  (select SirketKod, SubeDoktor
   from SIRKET_SUBE_TNM
   where not SubeDoktor is Null
   group by sirketKod, subeDoktor) SBB on SBB.sirketKod = st.SirketKod
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'SIRKETLER_TNM_view'
GO
COMMIT
GO
