BEGIN TRAN
GO
ALTER FUNCTION [dbo].[doktorSeansOnayKontrol] (@doktor varchar(4),@seans INT , @tarih DATETIME , 
                                                @kontrol VARCHAR(5) = '0')
RETURNS varchar(100)
AS
BEGIN

DECLARE @gun INT , @gun1 VARCHAR(3),
        @ilks INT ,@sons INT , @izinKontrol VARCHAR(100) , @seansKontrol VARCHAR(100) , @sonuc VARCHAR(100)


SELECT @gun = DATEPART(dw,@tarih)
--SELECT @gun

SELECT @gun1 =
(CASE @gun
  WHEN 2 then pazartesi
  WHEN 3 then sali
  WHEN 4 then carsamba
  WHEN 5 then persembe
  WHEN 6 then cuma
  WHEN 7 then cumartesi
 ELSE '' END)  
FROM Doktorlar d
JOIN DoktorEreceteSifre des1 on des1.doktorKodu = d.kod
WHERE kod = @doktor


SELECT @ilks =
(CASE WHEN CHARINDEX('-', @gun1) > 0 THEN 
      SUBSTRING(@gun1,1, CHARINDEX('-', @gun1)-1) ELSE @gun1 END),
       
@sons = (CASE WHEN CHARINDEX('-', @gun1) > 0 THEN       
       SUBSTRING(@gun1,CHARINDEX('-', @gun1)+1,1) ELSE @gun1 END)
       
--SELECT @ilks,@sons       
SELECT @seansKontrol = (CASE when (@seans BETWEEN  @ilks and @sons) THEN '0' ELSE '2 - Seans Doktorun Çalýþma Zamaný Dýþýndadýr' END)        
     
IF EXISTS(SELECT * from DoktorIzinTablosu WHERE @tarih BETWEEN baslangic AND bitis AND doktorKodu = @doktor)
set @izinKontrol = '1- Doktor izinlidir' ELSE set @izinKontrol = '0'       
       
       
IF @seansKontrol = '0'
BEGIN
 IF @izinKontrol = '0'
 set @sonuc = '0'
 ELSE set @sonuc = @izinKontrol	
END       
ELSE SET @sonuc = @seansKontrol       
       
IF @kontrol = '-1'
SET @sonuc = 0
    
       
       


return(@sonuc)

end
GO
exec sp_vw_sys_upd 'FN', 'dbo', 'doktorSeansOnayKontrol'
GO
COMMIT
GO
