BEGIN TRAN
GO
--ALTER -- 
ALTER
  PROCEDURE [dbo].[sp_FaturaPrint] @sira varchar(max),@vergiler varchar(1) = ''
AS
		
	if @vergiler = ''
	begin	
		select dbo.ParaOku(faturaGenelTutar) yaziile,*
		from faturalar f
		join FaturaHareket fh on fh.faturaId = f.sira
		join SIRKETLER_TNM S on s.SirketKod = f.sirketKod
		where f.sira in(select datavalue from dbo.strtotable(@sira,','))
    end

	if @vergiler = 'E'
	begin
	   select faturaId,kdv,sum(kdvTutar) from FaturaHareket where faturaId in (select datavalue from dbo.strtotable(@sira,',')) 
	   group by faturaId,kdv

	end
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_FaturaPrint'
GO
COMMIT
GO
