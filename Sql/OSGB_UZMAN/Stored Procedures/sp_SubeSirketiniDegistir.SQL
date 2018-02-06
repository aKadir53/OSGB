BEGIN TRAN
go
-- Þube taþýma birleþtirme stored proc sp_SubeSirketiniDegistir
ALTER -- create 
  procedure dbo.sp_SubeSirketiniDegistir @iTip tinyint, @KaynakSirketKod varchar (10), @KaynakSubeKod varchar (2), @HedefSirketKod varchar (10), @HedefSubeKod varchar (2)
as
begin
  -- Ümit ÖZTÜRK 2018-01-26 firma kartlarý arasýnda þube transferi yapmaya yarayan sp
  if @@TRANCOUNT <= 0
  begin
    raiserror ('Bu prosedür transaction içinde çalýþýr', 18, 1)
    return (0)
  end

  set nocount on

  declare @iTipInt int = 0

  if @iTip = 0
  begin
    create table #t 
      (iTip int identity (1, 1) not null, 
       primary key clustered (iTip),
       RowsetHata bit,
       Rowset Bit,
       RowsetEditInput bit default 0,
       Aciklama varchar (200),
       HataMesaji varchar (200))
       
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 0 RowsetHata, 0 Rowset, 'Þube Tanýmlarý Personel Kartý Baðlantý Kontrolleri devre dýþý býrakýlýyor' Aciklama, null HataMesaji
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 0 RowsetHata, 0 Rowset, 'Þube Tanýmlarý Saha Gözlem Raporlarý Baðlantý Kontrolleri devre dýþý býrakýlýyor' Aciklama, null HataMesaji
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 0 RowsetHata, 0 Rowset, 'Þube Tanýmlarý Dýþ Aktarým Parametreleri Baðlantý Kontrolleri devre dýþý býrakýlýyor' Aciklama, null HataMesaji
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 0 RowsetHata, 0 Rowset, 'Þube Tanýmlarý Güncelleniyor' Aciklama, null HataMesaji
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 0 RowsetHata, 0 Rowset, 'Dýþ Aktarým Parametre Tablosu yeni þube yapýsýna göre güncelleniyor' Aciklama, null HataMesaji
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 0 RowsetHata, 0 Rowset, 'Personel Kayýtlarý yeni þube yapýsýna göre güncelleniyor' Aciklama, null HataMesaji
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 0 RowsetHata, 0 Rowset, 'Geliþ (Muayene) Kayýtlarý yeni þube yapýsýna göre güncelleniyor' Aciklama, null HataMesaji
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 0 RowsetHata, 0 Rowset, 'Saha Gözlem Raporu kayýtlarý yeni þube yapýsýna göre güncelleniyor' Aciklama, null HataMesaji
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 0 RowsetHata, 0 Rowset, 'Þube Tanýmlarý Dýþ Aktarým Parametreleri Baðlantý Kontrolleri aktifleþtiriliyor' Aciklama, null HataMesaji
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 0 RowsetHata, 0 Rowset, 'Þube Tanýmlarý Saha Gözlem Raporlarý Baðlantý Kontrolleri aktifleþtiriliyor' Aciklama, null HataMesaji
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 0 RowsetHata, 0 Rowset, 'Þube Tanýmlarý Personel Kartý Baðlantý Kontrolleri aktifleþtiriliyor' Aciklama, null HataMesaji

    set nocount off
    select * 
    from #t
    order by iTip
    set nocount on

    drop table #t
  end


  set @iTipInt = @iTipInt + 1

  if @iTip = @iTipInt or @iTip is Null
  begin
    alter table PersonelKart nocheck constraint FK_PersonelKart_PersonelKart
  end

  set @iTipInt = @iTipInt + 1

  if @iTip = @iTipInt or @iTip is Null
  begin
    alter table SahaGozlemRaporlari nocheck constraint FK_SahaGozlemRaporlari_SIRKET_SUBE_TNM
  end

  set @iTipInt = @iTipInt + 1

  if @iTip = @iTipInt or @iTip is Null
  begin
    alter table DisAktarim_Parametre nocheck constraint FK_DisAktarim_Parametre_SIRKET_SUBE_TNM
  end

  set @iTipInt = @iTipInt + 1

  if @iTip = @iTipInt or @iTip is Null
  begin
    update su
      SET su.SirketKod = @HedefSirketKod,
          su.SubeKod = @HedefSubeKod,
          su.SubeTanim = su.SubeTanim + '2'
    from SIRKET_SUBE_TNM su
    WHERE su.SirketKod = @KaynakSirketKod
      and su.SubeKod = @KaynakSubeKod
  end

  set @iTipInt = @iTipInt + 1

  if @iTip = @iTipInt or @iTip is Null
  begin
    update su
      SET su.SirketKod = @HedefSirketKod,
          su.SubeKod = @HedefSubeKod
    from DisAktarim_Parametre su
    WHERE su.SirketKod = @KaynakSirketKod
      and su.SubeKod = @KaynakSubeKod
  end

  set @iTipInt = @iTipInt + 1

  if @iTip = @iTipInt or @iTip is Null
  begin
    update su
      SET su.SirketKod = @HedefSirketKod,
          su.Sube = @HedefSubeKod
    from PersonelKart su
    WHERE su.SirketKod = @KaynakSirketKod
      and su.Sube = @KaynakSubeKod
  end

  set @iTipInt = @iTipInt + 1

  if @iTip = @iTipInt or @iTip is Null
  begin
    update g set g.SirketKod = pk.SirketKod
    from gelisler g
    inner join personelkart pk on pk.dosyaNo = g.dosyano
    where g.SirketKod <> pk.SirketKod
  end

  set @iTipInt = @iTipInt + 1

  if @iTip = @iTipInt or @iTip is Null
  begin
    update su
      SET su.FirmaKodu = @HedefSirketKod,
          su.SubeKod = @HedefSubeKod
    from SahaGozlemRaporlari su
    WHERE su.FirmaKodu = @KaynakSirketKod
      and su.SubeKod = @KaynakSubeKod
  end

  set @iTipInt = @iTipInt + 1

  if @iTip = @iTipInt or @iTip is Null
  begin
    alter table DisAktarim_Parametre check constraint FK_DisAktarim_Parametre_SIRKET_SUBE_TNM
  end

  set @iTipInt = @iTipInt + 1

  if @iTip = @iTipInt or @iTip is Null
  begin
    alter table SahaGozlemRaporlari check constraint FK_SahaGozlemRaporlari_SIRKET_SUBE_TNM
  end

  set @iTipInt = @iTipInt + 1

  if @iTip = @iTipInt or @iTip is Null
  begin
    alter table PersonelKart check constraint FK_PersonelKart_PersonelKart
  end

  set nocount off

end
GO
-- sp_SubeSirketiniDegistir deðiþiklik takip sistemi güncellemesi
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_SubeSirketiniDegistir'
GO
COMMIT--ROLLBACK
GO
