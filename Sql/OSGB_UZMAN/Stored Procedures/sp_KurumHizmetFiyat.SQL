BEGIN TRAN
GO
ALTER PROCEDURE [dbo].[sp_KurumHizmetFiyat] @dosyaNo varchar(10),@TANIM varchar(2) = ''
AS
BEGIN
	
	declare @FL varchar(20),@sql varchar(500)
	set @FL = ''


	select @FL = FiyatListesi from SIRKETLER_TNM where SirketKod = (select sirketKod from personelKart where dosyaNO = @dosyaNo)
	
	if isnull(@FL,'') = ''
    set @FL = '0'
	else
	set @FL = 'SATISF'+@FL

		if exists(select * from sys.tables where name = '#tmp')
		drop table #tmp
		CREATE TABLE #tmp (TANIM VARCHAR(2),CODE varchar(15),NAME1 varchar(100),FIYAT float)

		INSERT INTO dbo.#tmp
		Exec('select TANIM,CODE,NAME1,' + @FL + ' from HIZMET where TANIM like ' + '''%'+@TANIM+'%''')
		select * from  #tmp

END
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_KurumHizmetFiyat'
GO
COMMIT
GO
