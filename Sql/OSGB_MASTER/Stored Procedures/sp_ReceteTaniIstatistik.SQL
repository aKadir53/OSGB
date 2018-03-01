BEGIN TRAN
GO
ALTER -- CREATE 
  PROCEDURE [dbo].sp_ReceteTaniIstatistik @OSGB bit, @Sirket bit = 1, @Sube bit = 1, @Doktor bit = 1, @Tani bit = 1, @Yil bit = 1, @Ay bit = 1, @gun bit = 0
as
begin
  select 
    case when IsNull (@OSGB, 0) = 1 then merkezkodu else NULL end merkezkodu, 
    case when IsNull (@OSGB, 0) = 1 then MerkezAdi else NULL end MerkezAdi, 
    case when IsNull (@Sirket, 0) = 1 or IsNull (@Sube, 0) = 1 then Sirket else NULL end Sirket, 
    case when IsNull (@Sube, 0) = 1 then Sube else NULL end Sube, 
    case when IsNull (@Doktor, 0) = 1 then Doktor else NULL end Doktor, 
    case when IsNull (@Tani, 0) = 1 then TaniKodu else NULL end TaniKodu, 
    case when IsNull (@Tani, 0) = 1 then Tani else NULL end TaniAdi, 
    case when IsNull (@yil, 0) = 1 or (@yil is null and (IsNull (@Ay, 0) = 1 or IsNull (@gun, 0) = 1)) then year (ReceteTarih) else NULL end Yil, 
    case when IsNull (@Ay, 0) = 1 or (@Ay is null and (IsNull (@gun, 0) = 1)) then Month (ReceteTarih) else NULL end Ay, 
    case when IsNull (@Gun, 0) = 1 then day (ReceteTarih) else NULL end Gun, 
    SUM (case when IsNull (Medula, 0) = 0 then 0 else sayi end) [Med(+)],
    SUM (case when IsNull (Medula, 0) = 1 then 0 else sayi end) [Med(-)],
    Sum (Sayi) TaniSayi, 
    min (InsertDatetime) InsertDatetime1, 
    max (InsertDatetime) InsertDatetime2
  from dbo.ReceteTaniIstatistik
  group by
    case when IsNull (@OSGB, 0) = 1 then merkezkodu else NULL end, 
    case when IsNull (@OSGB, 0) = 1 then MerkezAdi else NULL end, 
    case when IsNull (@Sirket, 0) = 1 or IsNull (@Sube, 0) = 1then Sirket else NULL end, 
    case when IsNull (@Sube, 0) = 1 then Sube else NULL end, 
    case when IsNull (@Doktor, 0) = 1 then Doktor else NULL end,
    case when IsNull (@Ay, 0) = 1 or (@Ay is null and (IsNull (@gun, 0) = 1)) then Month (ReceteTarih) else NULL end,
    case when IsNull (@yil, 0) = 1 or (@yil is null and (IsNull (@Ay, 0) = 1 or IsNull (@gun, 0) = 1)) then year (ReceteTarih) else NULL end,
    case when IsNull (@Gun, 0) = 1 then day (ReceteTarih) else NULL end, 
    case when IsNull (@Tani, 0) = 1 then TaniKodu else NULL end, 
    case when IsNull (@Tani, 0) = 1 then Tani else NULL end
  order by TaniSayi desc
end
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_ReceteTaniIstatistik'
GO
exec sp_ReceteTaniIstatistik 0, 0, 0, 0, 1, 0, 0, 0
go
COMMIT
GO
