BEGIN TRAN
GO
ALTER -- CREATE 
  PROCEDURE [dbo].sp_ReceteIstatistik @MedulaKriter bit, @OSGB bit, @Sirket bit = 1, @Sube bit = 1, @Doktor bit = 1
as
begin
  select 
    case when IsNull (@OSGB, 0) = 1 then merkezkodu else NULL end merkezkodu, 
    case when IsNull (@OSGB, 0) = 1 then MerkezAdi else NULL end MerkezAdi, 
	case when IsNull (@Sirket, 0) = 1 or IsNull (@Sube, 0) = 1then Sirket else NULL end Sirket, 
	case when IsNull (@Sube, 0) = 1 then Sube else NULL end Sube, 
	case when IsNull (@Doktor, 0) = 1 then Doktor else NULL end Doktor, 
	Medula, 
	Sum (Sayi) Sayi, 
	min (InsertDatetime) InsertDatetime1, 
	max (InsertDatetime) InsertDatetime2
  from dbo.ReceteIstatistik
  where (@MedulaKriter is null or Medula = @MedulaKriter)
  group by
    case when IsNull (@OSGB, 0) = 1 then merkezkodu else NULL end, 
    case when IsNull (@OSGB, 0) = 1 then MerkezAdi else NULL end, 
	case when IsNull (@Sirket, 0) = 1 or IsNull (@Sube, 0) = 1then Sirket else NULL end, 
	case when IsNull (@Sube, 0) = 1 then Sube else NULL end, 
	case when IsNull (@Doktor, 0) = 1 then Doktor else NULL end,
	Medula
  order by Sayi desc
end
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_ReceteIstatistik'
GO
--exec sp_ReceteIstatistik 1, 1, 0, 0, 1
go
COMMIT
GO
