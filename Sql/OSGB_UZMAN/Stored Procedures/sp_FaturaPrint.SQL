BEGIN TRAN
GO
--ALTER -- 
ALTER
  PROCEDURE [dbo].[sp_FaturaPrint] @sira varchar(max)
AS
		select dbo.ParaOku(faturaGenelTutar) yaziile,*
		from faturalar f
		join FaturaHareket fh on fh.faturaId = f.sira
		join SIRKETLER_TNM S on s.SirketKod = f.sirketKod
		where f.sira in(select datavalue from dbo.strtotable(@sira,','))
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_FaturaPrint'
GO
COMMIT
GO
