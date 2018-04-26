BEGIN TRAN
GO
([dbo].[fn_DisAktarimParametreID]())
GO
exec sp_vw_sys_upd 'D ', 'dbo', 'DF_DisAktarim_IlacListesi_DisAktarimParametreID'
GO
COMMIT
GO
