BEGIN TRAN
GO
ALTER PROCEDURE [dbo].[sp_DosyaNoYaz] @DosyaNo float, @t varchar(10) = 'DN'
AS
begin
  set nocount on
  if @t = 'DN'
  begin
    update PARAMETRELER
    set SLX = @DosyaNo
    where SLK='00' and SLB='01' and SLT='DOSYANO'
  end

  if @t = 'FN'
  begin
    update PARAMETRELER
    set SLX = @DosyaNo
    where SLK='00' and SLB='01' and SLT='FIRMANO'
  end

  if @t = 'DR'
  begin
    update PARAMETRELER
    set SLX = @DosyaNo
    where SLK='00' and SLB='01' and SLT='DOKTORNO'
  end


  if @t = 'IG'
  begin
    update PARAMETRELER
    set SLX = @DosyaNo
    where SLK='00' and SLB='01' and SLT='IGUNO'
  end

 if @t = 'DS'
  begin
    update PARAMETRELER
    set SLX = @DosyaNo
    where SLK='00' and SLB='01' and SLT='DIGERSAGLIKNO'
  end

 if @t = 'TE'
  begin
    update PARAMETRELER
    set SLX = @DosyaNo
    where SLK='00' and SLB='01' and SLT='TEDARIKCI'
  end

  set nocount off
end
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_DosyaNoYaz'
GO
COMMIT
GO
