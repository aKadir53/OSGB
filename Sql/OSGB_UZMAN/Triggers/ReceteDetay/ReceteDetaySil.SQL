BEGIN TRAN
GO
ALTER TRIGGER [dbo].[ReceteDetaySil]
   ON  dbo.ReceteDetay
   AFTER DELETE,INSERT
AS 
BEGIN
declare @dosyano varchar(6),@Id INT,@doz INT ,
		@gelisno INT,@barkod VARCHAR(20),@IlackoduToReceteBilgisi VARCHAR(500),
		@IlackoduToReceteBilgisiTetkikSonuc VARCHAR(500),@taniKod VARCHAR(20),
		@tani VARCHAR(100),@etkenMadde VARCHAR(100),@receteId VARCHAR(10)


        set @taniKod = ''
        set @tani = ''
        SET @IlackoduToReceteBilgisi = ''
        SET @IlackoduToReceteBilgisiTetkikSonuc = ''
        SET @barkod = ''
        SET @receteId = ''

  --if exists(select * from inserted)
  --begin
  --  SELECT @dosyaNo = r.DosyaNo,@gelisno = r.gelisNo , @barkod  = i.ilacKodu,@Id = i.id , @doz = i.kullanimAdet,@receteId = i.ReceteID
  --  FROM INSERTED i
  --  JOIN Recete r ON r.id = i.ReceteID
    
  --  SET @IlackoduToReceteBilgisi = (select dbo.IlackoduToReceteBilgisi(@barkod,@dosyano,@gelisno,@doz))
  --  IF len(@IlackoduToReceteBilgisi) > 0
  --  begin
  --    INSERT INTO ReceteIlacAciklama (receteDetayId,aciklamaTip,aciklama)
  --    VALUES(@Id,'2', @IlackoduToReceteBilgisi)
  --  end
    
  --  SET @IlackoduToReceteBilgisiTetkikSonuc = (select dbo.IlackoduToReceteBilgisiTetkikSonuc(@barkod,@dosyano,@gelisno))
  --  IF len(@IlackoduToReceteBilgisiTetkikSonuc) > 0
  --  begin
  --    INSERT INTO ReceteIlacAciklama (receteDetayId,aciklamaTip,aciklama)
  --    VALUES(@Id,'4', @IlackoduToReceteBilgisiTetkikSonuc)   
  --  end
  
  
  --   SELECT @taniKod = isnull(ICD,'')  FROM ilacListesi i
  --   join icd_teshisleri icd on icd.ICDKODU = i.ICD 
  --   WHERE barkod = @barkod
    
  --   IF len(@taniKod) > 0
  --   BEGIN
  --   	IF not EXISTS (SELECT * FROM ReceteTani WHERE receteId = @receteId AND taniKodu = @taniKod)
  --   	begin
  --   	  INSERT INTO ReceteTani(receteId,taniKodu,tani)
  --   	  VALUES(@receteId,@taniKod,@tani)
  --   	end
  --   END   
     
  --   SET @taniKod = ''
     
  --   select @taniKod = isnull(Tani,''), @tani = isnull(icd.TANI,'') from ILACLAR I 
  --   join icd_teshisleri icd on icd.ICDKODU = I.Tani 
  --   where code = @barkod
     
  --   IF len(@taniKod) > 0
  --   BEGIN
  --   	IF not EXISTS (SELECT * FROM ReceteTani WHERE receteId = @receteId AND taniKodu = @taniKod)
  --   	begin
  --   	  INSERT INTO ReceteTani(receteId,taniKodu,tani)
  --   	  VALUES(@receteId,@taniKod,substring(@tani,1,50))
  --   	end
  --   END 
  
     
  --END
  
  
  
  
  if exists(select * from deleted)
  begin

     DELETE FROM ReceteIlacAciklama WHERE recetedetayId IN (SELECT id FROM DELETED)                     

  end 	
	
END
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'ReceteDetaySil'
GO
COMMIT
GO
