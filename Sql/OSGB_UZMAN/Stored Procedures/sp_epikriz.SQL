BEGIN TRAN
GO
ALTER PROCEDURE [dbo].[sp_epikriz] @dosyaNo varchar(6),@dataset varchar(20),@gelisNo int = 1
AS
BEGIN
  if @dataset = 'Baslýk'
  Begin
		select len(replace(seansGunleri,'0','')) as seansSayi,gd.sonseans,
		h.*,r.*,gd.*,g.*,
				(case h.KANGRUBU
				  WHEN 0 THEN 'A Rh(+)'
				  WHEN 1 THEN 'A Rh(-)'
				  WHEN 2 THEN 'AB Rh(+)'
				  WHEN 3 THEN 'AB Rh(-)'
				  WHEN 4 THEN 'B Rh(+)'
				  WHEN 5 THEN 'B Rh(-)'
				  WHEN 6 THEN '0 Rh(+)'
				  WHEN 7 THEN '0 Rh(-)'                  
				END)KANG,

				(case when substring(h.SeansGunleri,2,1) = '1' then '(Pazartesi)' else '' end) + '' +
				(case when substring(h.SeansGunleri,3,1) = '1' then '(Salý)' else '' end) + '' +
				(case when substring(h.SeansGunleri,4,1) = '1' then '(Çarþamba)' else '' end) + '' +
				(case when substring(h.SeansGunleri,5,1) = '1' then '(Perþembe)' else '' end) + '' +
				(case when substring(h.SeansGunleri,6,1) = '1' then '(Cuma)' else '' end) + '' +
				(case when substring(h.SeansGunleri,7,1) = '1' then '(Cumartesi)' else '' end) + '' +
				(case when substring(h.SeansGunleri,1,1) = '1' then '(Pazar)' else '' end)
				as Gunler,
				(case h.KurumTip
				  WHEN '1' THEN 'SSK'
				  WHEN '2' THEN 'Baðkur'
				  WHEN '3' THEN 'Emekli Sandýðý'
				  WHEN '4' THEN 'Yeþil Kart'
				  WHEN '5' THEN '18 Y.A. ve S.G.O.'
				  WHEN '6' THEN 'Muhasebat(Ça.Dv.Memur)'
				  WHEN '7' THEN 'Diðer'
				  WHEN '8' THEN 'Özel'
				END)Kurum,

				(case h.Durum
				  WHEN '1' THEN 'Çalýþan'
				  WHEN '2' THEN 'Emekli'
				  WHEN '3' THEN 'SSK Kurum Per'
				  WHEN '4' THEN 'Diðer'
				  WHEN '5' THEN 'Özel'
				END)DurumS,
        (
			select kt_v from gelisler g
			join LabsonucDegerlendirme sd on sd.dosyaNo = g.dosyaNo and sd.gelisNo = g.gelisNo
			where g.dosyaNo = @dosyaNo
			and g.gelisNo = @gelisNo

        ) ktv ,
        (
			select urr from gelisler g
			join LabsonucDegerlendirme sd on sd.dosyaNo = g.dosyaNo and sd.gelisNo = g.gelisNo
			where g.dosyaNo = @dosyaNo
			and g.gelisNo = @gelisNo

        ) urr

		from HastaKart H
		left join 
		(select top 1 *, UTarih as sonseans from gelisdetay 
		where dosyaNo = @dosyaNO and durum='1'
		order by UTarih desc
		)
		gd on gd.dosyaNo = H.dosyaNo
        left join gelisler g on g.dosyaNo = h.dosyaNo and g.gelisNo = @gelisno
        left join Raporlar R on R.dosyaNo = H.dosyaNo and R.aktif = 1
		where h.dosyaNo = @dosyaNo
  end

  if @dataset = 'Tahlil'
  Begin

		select l.* , 
		(select top 1 
		
		(case when l.tip = 3 then islemAciklamasi else 
			
			(CASE WHEN code IN ('907440','906610','906630','906660') AND gd = 1 THEN 'Pozitif' ELSE
			  (CASE WHEN code IN ('907440','906610','906630','906660') AND gd = -1 THEN 'Negatif' ELSE cast(gd as varchar) end) END) END) 		 
		       from hareketler where dosyaNO = @dosyaNo and code = l.butkodu and gelisNo <= @gelisNo and onay = 1 order by TARIH desc),
			
		
		(select top 1 cast(cd as varchar) from hareketler where dosyaNO = @dosyaNo and code = l.butkodu and gelisNo <= @gelisNo and onay = 1 order by TARIH desc),

		(select top 1 TARIH from hareketler where dosyaNO = @dosyaNo and code = l.butkodu and gelisNo <= @gelisNo and onay = 1 order by TARIH desc)
        from labtestler l
		where uygulamaSuresi > 0 and l.tip = 2


  End


  if @dataset = 'Radyoloji'
  Begin

		select l.* , 
		(select top 1 (case when l.tip = 3 then islemAciklamasi else cast(gd as varchar) end)  from hareketler where dosyaNO = @dosyaNo and code = l.butkodu and gelisNo <= @gelisNo and onay = 1 order by TARIH desc),
		(select top 1 cast(cd as varchar) from hareketler where dosyaNO = @dosyaNo and code = l.butkodu and gelisNo <= @gelisNo and onay = 1 order by TARIH desc),

		(select top 1 TARIH from hareketler where dosyaNO = @dosyaNo and code = l.butkodu and gelisNo <= @gelisNo and onay = 1 order by TARIH desc)
		from labtestler l 
		where uygulamaSuresi > 0 and l.tip = 3


  End


  if @dataset = 'TahlilHesap'
  Begin
		select * from gelisler g
        join LabsonucDegerlendirme sd on sd.dosyaNo = g.dosyaNo and sd.gelisNo = g.gelisNo
		where g.dosyaNo = @dosyaNo
		and g.gelisNo = @gelisNo
  End

  if @dataset = 'Ilac'
  Begin		
--        select * from hareketlerIS
--		where dosyaNo = @dosyaNo and gelisNo in (select max(gelisNo) from gelisler where dosyaNO = @dosyaNo)

        select * from HastaIlacTedavi HIT 
        --left join ILACLAR I on HIT.ilac = I.code 
		where dosyaNo = @dosyaNo and gelisNo = @gelisNo

  End
  
  if @dataset = 'Kurum'
  Begin		
        select * , (select SLB from parametreler where SLK = '99') as kurumKodu
		from merkezBilgisi
  End

  if @dataset = 'Asi'
  Begin		
    Select * from HastaAsi
    where DosyaNo = @dosyaNo

  End


  if @dataset = 'Kons'
  Begin
		select * from gelisler g
        join KonsultasyonForm sd on sd.dosyaNo = g.dosyaNo and sd.gelisNo = g.gelisNo
		where g.dosyaNo = @dosyaNo
		and g.gelisNo = @gelisNo
  End

END
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_epikriz'
GO
COMMIT
GO
