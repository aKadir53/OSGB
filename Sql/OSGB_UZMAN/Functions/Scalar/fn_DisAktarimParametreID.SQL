BEGIN TRAN
GO
-- fn_DisAktarimParametreID () fonksiyonu
ALTER --CREATE 
  FUNCTION dbo.fn_DisAktarimParametreID ()
RETURNS int
WITH SCHEMABINDING 
AS
BEGIN
  return ((Select ID from dbo.DisAktarim_Parametre where SPID = @@SPID and Aktif = 1))
END
GO
-- fn_DisAktarimParametreID () fonksiyonu deðiþiklik takip sistemi güncellemesi
exec sp_vw_sys_upd 'FN', 'dbo', 'fn_DisAktarimParametreID'
GO
COMMIT
GO
