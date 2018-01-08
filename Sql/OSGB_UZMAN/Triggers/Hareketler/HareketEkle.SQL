BEGIN TRAN
GO
ALTER TRIGGER [dbo].[HareketEkle]
   ON  dbo.Hareketler
   AFTER UPDATE,INSERT
AS 
BEGIN
declare @HbsAg float,@AntiHbs float,@AntiHcv float,@AntiHiv float,@dosyaNo varchar(6),@gelisNo int,
        @code varchar(10), @gd FLOAT , @aciklama VARCHAR(500),@sira INT,@Kabul VARCHAR(10)

declare @C_ure float,@G_ure float,@kilofark float,@iKilo float , @Ca float , @P float , @alb float,
        @URR float , @Kt_VB float , @CaxP float ,@duzCa float , @Demir float , @SDBK float , @TS float , @tip varchar(1)


if exists(select * from inserted)
Begin
	select @dosyaNo = dosyaNo,@gelisNo = gelisNo,@code = code ,@gd = isnull(gd,0),@aciklama = islemAciklamasi ,
	       @sira = SIRANO,@Kabul = kabulNo from inserted
 
	IF @code = '705140'
	BEGIN
		UPDATE hastakart 
		SET KANGRUBU = (SELECT kod FROM KanGruplari WHERE Grup = @aciklama) 
		where dosyaNO = @dosyaNo AND len(@aciklama) > 0		
	END
	
	--IF @code = '903670'
	--BEGIN
	--	UPDATE hastakart 
	--	SET Na = @gd 
	--	where dosyaNO = @dosyaNo AND @gd > 0	
	--END

	
	if @code = '902210'
	begin
     update hastakart
      set gecirgenlik = 
       (select ADI from DyobKODS where KODSET = 'PERITONALGECIRGENLIK' and OtomasyonID =  
       (case 
          when @gd < 0.50 then '1'
          when @gd between 0.5 and 0.64 then '2'
          when @gd between 0.65 and 0.81 then '3'
          else '4' end))
     where dosyaNO = @dosyaNo --and tip <> 'H'         
     
    end
    
    IF len(@aciklama) > 0
    BEGIN
    	UPDATE Hareketler
    	SET	onay = 1
    	WHERE SIRANO = @sira
    END

    --IF substring(@Kabul,1,1) = 'K'
    --BEGIN
    --	UPDATE Hareketler
    --	SET	onay = 0
    --	WHERE SIRANO = @sira
    --END



	if @code = '901940'
	begin
		select @G_ure = h.gd, @C_ure = h.cd,
			   @kilofark = (select top 1 GIRISKILO from gelisdetay where dosyano = g.dosyano and gelisno = g.gelisno and KanAlindimi = 1) -
						   (select top 1 CIKISKILO from gelisdetay where dosyano = g.dosyano and gelisno = g.gelisno AND KanAlindimi = 1) ,
			   @iKilo = IdealKilo
		from inserted g
		join hareketler h on h.dosyano = g.dosyano and h.gelisNo = g.gelisNo
		join hastaKart K on K.dosyaNo = g.dosyano
		where h.code = @code   
        
        if (@G_ure<>0 and @C_ure<>0 and @iKilo<>0 and @kilofark<>0)
        begin
		   set @URR =  round((1 - (cast(@C_ure as float)/@G_ure)),2)		
		   BEGIN TRY
			if (@G_ure > 0) and (@C_ure > 0) and (@kilofark > 0)
			set @Kt_VB = round(-log(ABS((cast(@C_ure as float)/@G_ure) - (0.008 * 4))) + ((4 - (3.5 * cast(@C_ure as float)/@G_ure)) * cast(@kilofark AS FLOAT) / @iKilo),2)
	       END TRY
		   BEGIN CATCH
           -- set @Kt_VB = 0            
            --COMMIT TRANSACTION
		   END CATCH	

			if not exists(select * from LabsonucDegerlendirme where dosyaNo = @dosyaNo and gelisNO = @gelisNo) 
			begin
			  insert into LabsonucDegerlendirme (dosyaNo,gelisNo,Tarih,KiloFark,URR,KT_v)
			  select @dosyaNo,@gelisno,'',@kilofark,@URR,@Kt_VB
			end
			else
			begin
			  update LabsonucDegerlendirme
			  set KT_v = @Kt_VB, URR = @URR
			  where dosyaNo = @dosyaNo and gelisNo = @gelisno AND ISNULL(KT_v,0) = 0  
			end
        end         
    end

    -- hepatitler için normal deðer tanýmlý ise maxD ona göre - + olarak sonuc
  --  exec sp_HepatitMarkerNormalDegereGoreSonucYaz @dosyaNo,@gelisNo,@code,@gd

	if @code = '907440'
	begin
      set @HbsAg = @gd
        if isnull(@HbsAg,0) in (-1,1)
        begin
		  update hastakart
	      set HbsAg = (case @HbsAg when -1  then '-' when 1 then '+' else '' end)
          where dosyaNo = @dosyaNo
        END
        exec sp_HepatitMarkerNormalDegereGoreSonucYaz @dosyaNo,@gelisNo,@code,@gd 
    end
    else
	if @code = '906610'
    begin
	   set @AntiHbs = @gd
       if isnull(@AntiHbs,0) in (-1,1)
        begin
		  update hastakart
	      set AntiHbs = (case @AntiHbs when -1  then '-' when 1 then '+' else '' end)
    where dosyaNo = @dosyaNo
        end	
        exec sp_HepatitMarkerNormalDegereGoreSonucYaz @dosyaNo,@gelisNo,@code,@gd
    end
    else
	if @code = '906630'
    begin
	    set @AntiHcv = @gd
		if isnull(@AntiHcv,0) in (-1,1)
        begin
          update hastakart
	      set AntiHcv = (case @AntiHcv when -1  then '-' when 1 then '+' else '' end)
          where dosyaNo = @dosyaNo
        END
        exec sp_HepatitMarkerNormalDegereGoreSonucYaz @dosyaNo,@gelisNo,@code,@gd
    end
	else
	if @code = '906660'
    begin
	    set @AntiHiv = @gd
        if isnull(@AntiHiv,0) in (-1,1)
        begin
		  update hastakart
	      set Hiv = (case @AntiHiv when -1  then '-' when 1 then '+' else '' end)
          where dosyaNo = @dosyaNo
        END
        exec sp_HepatitMarkerNormalDegereGoreSonucYaz @dosyaNo,@gelisNo,@code,@gd
    end
End

END
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'HareketEkle'
GO
COMMIT
GO
