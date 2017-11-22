BEGIN TRAN
GO
ALTER PROCEDURE [dbo].[sp_gelisYazdir]  @dosyaNo varchar(6) , @gelisNo varchar(6) , @tip varchar(1)
AS
--declare @dosyaNo varchar(6) , @gelisNo varchar(6)
--set @dosyaNo = '000068'
--set @gelisNo = '3'

if @tip = 'H'
begin
	select *,'P704230' as ButKodu,'Hemodiyaliz(Biokarbonatli)' as Hizmet,GL.takýpNo as TakipNo,
	convert(varchar,convert(datetime,Utarih,112),104) as UygulamaTarihi,
	convert(varchar,convert(datetime,RaporTarihi,112),104) as RaporT,
	convert(varchar,convert(datetime,RaporGecerlik,112),104) as RaporG,

	(case H.KurumTip
	  WHEN '1' THEN 'SSK'
	  WHEN '2' THEN 'Baðkur'
	  WHEN '3' THEN 'Emekli Sandýðý'
	  WHEN '4' THEN 'Yeþil Kart'
	  WHEN '5' THEN '18 Y.A. ve S.G.O.'
	  WHEN '6' THEN 'Muhasebat(Ç.D.Mem)'
	  WHEN '7' THEN 'Diðer'
	  WHEN '8' THEN 'Özel'
	END)DevKurum,'1062' as BransKodu,G.sirano,'Tedavi' as ITuru,
	DBO.kurumbilgi('FirmaAdi') as FirmaAdi , G.TalepSira

	from HastaKart H
	   inner join Gelisdetay G on G.dosyaNo = H.dosyaNo and G.gelisNo = @gelisno
	   inner join Gelisler GL on GL.dosyaNo = H.dosyaNo and GL.gelisNo = G.gelisNo
	where H.dosyaNo = @dosyaNo and g.gelisNo = @gelisno and G.durum = 1

end


if @tip = 'T'
begin
	select *,'P704230' as ButKodu,'Hemodiyaliz(Biokarbonatli)' as Hizmet,GL.takýpNo as TakipNo,
	convert(varchar,convert(datetime,Utarih,112),104) as UygulamaTarihi,
	--convert(varchar,convert(datetime,RaporTarihi,112),104) as RaporT,
	--convert(varchar,convert(datetime,RaporGecerlik,112),104) as RaporG,

	(case H.KurumTip
	  WHEN '1' THEN 'SSK'
	  WHEN '2' THEN 'Baðkur'
	  WHEN '3' THEN 'Emekli Sandýðý'
	  WHEN '4' THEN 'Yeþil Kart'
	  WHEN '5' THEN '18 Y.A. ve S.G.O.'
	  WHEN '6' THEN 'Muhasebat(Ç.D.Mem)'
	  WHEN '7' THEN 'Diðer'
	  WHEN '8' THEN 'Özel'
	END)DevKurum,'1062' as BransKodu,G.sirano,'Tedavi' as ITuru,
	DBO.kurumbilgi('FirmaAdi') as FirmaAdi , G.TalepSira

	from HastaKart H
	   inner join Gelisdetay G on G.dosyaNo = H.dosyaNo --and G.gelisNo = @gelisno
	   inner join Gelisler GL on GL.dosyaNo = H.dosyaNo and GL.gelisNo = G.gelisNo
	where  G.durum = 1

end
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_gelisYazdir'
GO
COMMIT
GO
