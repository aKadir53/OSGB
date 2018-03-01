BEGIN TRAN
GO
-- Eðitimci seçim view'ý
ALTER -- CREATE -- DROP
  VIEW dbo.Egitimci_view
with schemabinding
AS
SELECT tanimi Tanimi1, Tanimi + ' (Dr.)' Tanimi2
from dbo.doktorlarT
union all
SELECT tanimi Tanimi1, Tanimi + ' (ISG)' Tanimi2
from dbo.IGU
union all
SELECT tanimi Tanimi1, Tanimi + ' (sp)' Tanimi2
from dbo.DigerSaglikPersonel
union all
Select Egitimci, Egitimci
from dbo.Egitimler ee
where not exists (Select 1 from dbo.DoktorlarT tt where tt.tanimi = ee.Egitimci)
  and not exists (Select 1 from dbo.IGU tt where tt.tanimi = ee.Egitimci)
  and not exists (Select 1 from dbo.DigerSaglikPersonel tt where tt.tanimi = ee.Egitimci)
GO
-- deðiþiklik takip sistemi güncellemesi
exec sp_vw_sys_upd 'V ', 'dbo', 'Egitimci_view'
GO
COMMIT -- Rollback
GO
select * 
from Egitimci_view
