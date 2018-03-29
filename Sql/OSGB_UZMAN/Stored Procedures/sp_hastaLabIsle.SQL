BEGIN TRAN
GO
ALTER PROCEDURE [dbo].[sp_hastaLabIsle]
                 @dosyaNo varchar(10) , @gelisNo int,@tarih varchar(10),@grup varchar(2) = ''
AS
BEGIN

  declare @doktor varchar(10)
  declare @FL varchar(20),@sql varchar(500)
  set @FL = ''


  select @FL = FiyatListesi from SIRKETLER_TNM where SirketKod = (select sirketKod from personelKart where dosyaNO = @dosyaNo)
  select @doktor = doktor from gelisler where dosyaNO = @dosyaNo and gelisNo = @gelisNo

  if isnull(@FL,'') = ''
    set @FL = '0'
   else
    set @FL = 'SATISF'+Replicate ('0', 2- len (@FL)) + @FL

  if exists(select * from sys.tables where name = '#tmp')
  drop table #tmp

  CREATE TABLE #tmp (TANIM VARCHAR(2),CODE varchar(15),NAME1 varchar(100),FIYAT float)

  INSERT INTO dbo.#tmp
  Exec('select TANIM,CODE,NAME1,' + @FL + ' from HIZMET ')
  select * from  #tmp

  insert into hareketler (dosyaNo,gelisNo,TARIH,CODE,NAME1,ADET,tip,onay,isteyenDoktor,SATISF,KSATISF)

  select @dosyaNo,@gelisNo,@tarih,Kod,Tanimi,1,H.TANIM,0,@doktor,FIYAT,0
  from TetkikIstemSablonItem T 
  join HIZMET H on H.Code = T.kod
  join #tmp tmp on tmp.code = H.code
  where SablonGrupKod = @grup
END
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_hastaLabIsle'
GO
COMMIT
GO
