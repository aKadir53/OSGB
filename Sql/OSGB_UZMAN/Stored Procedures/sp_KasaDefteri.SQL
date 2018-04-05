BEGIN TRAN
GO
--ALTER -- 
ALTER
  PROCEDURE [dbo].[sp_KasaDefteri] @tarih1 varchar(10) = null ,@tarih2 varchar(10) = null
AS

    set @tarih1 = isnull(@tarih1,convert(varchar,getdate(),112))
    set @tarih2 = isnull(@tarih2,convert(varchar,getdate(),112))
	 

	select * from (
	select Null Tarih,sum(borc) Borc,sum(alacak) Alacak, sum(borc) -sum(alacak) bakiye ,'Önceki Günden Gelen' aciklama from carihareketler
	where carikod in ('100')--(select cast(kod as varchar) from cari_hesaplar)
	and tarih < @tarih1
	
	union all
	
	select tarih,borc,alacak,null,aciklama from carihareketler
	where carikod in ('100') --(select cast(kod as varchar) from cari_hesaplar)
	and tarih between @tarih1 and @tarih2 

	
	union all

	select null,sum(borc),sum(alacak),sum(borc) -sum(alacak) bakiye,'Gün Sonu Toplam' from carihareketler
	where carikod in ('100') --(select cast(kod as varchar) from cari_hesaplar)
	and tarih between @tarih1 and @tarih2

	) Kasa

	union all
	select null,sum(borc),sum(alacak),sum(bakiye),'Devreden Kasa' 
	from (
	select Null Tarih,sum(borc) Borc,sum(alacak) Alacak,sum(borc) -sum(alacak) bakiye,'Önceki Günden Gelen' aciklama from carihareketler
	where carikod in ('100')--(select cast(kod as varchar) from cari_hesaplar)
	and tarih between @tarih1 and @tarih2 
	union all
	select Null Tarih,sum(borc) Borc,sum(alacak) Alacak, sum(borc) -sum(alacak) bakiye ,'Önceki Günden Gelen' aciklama from carihareketler
	where carikod in ('100')--(select cast(kod as varchar) from cari_hesaplar)
	and tarih < @tarih1
	) Kasa
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_KasaDefteri'
GO
COMMIT
GO
