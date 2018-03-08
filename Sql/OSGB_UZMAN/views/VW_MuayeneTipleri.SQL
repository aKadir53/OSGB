BEGIN TRAN
GO
ALTER--create
  view [dbo].[VW_MuayeneTipleri]
with schemabinding
AS
Select Kod, Tanimi Tanim, AnemnezEkranTipi
from dbo.MuayeneTipleri
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'VW_MuayeneTipleri'
GO
COMMIT
GO
