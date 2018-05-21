BEGIN TRAN
GO
ALTER VIEW [dbo].[AktifPasifTanim_View]
AS
SELECT        kod, tanimi
FROM            (SELECT        0 AS kod, 'Pasif' AS tanimi
                          UNION ALL
                          SELECT        1 AS Expr1, 'Aktif' AS Expr2) AS tt
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'AktifPasifTanim_View'
GO
COMMIT
GO
