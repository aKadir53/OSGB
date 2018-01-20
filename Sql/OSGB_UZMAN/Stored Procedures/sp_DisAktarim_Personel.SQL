begin tran
go
-- sp_DisAktarim_Personel sp'si
alter procedure dbo.sp_DisAktarim_Personel @iTip tinyint
as
begin
  -- Ümit ÖZTÜRK 2018-01-15 ÝSG Kâtip Excel'i aktarým tablosundan doktor, iþ güvenlik uzmaný, firma, þube ve kullanýcý kartlarýnýn açýlmasý vazifelerini üstlenmiþ olan sp
  if @@TRANCOUNT <= 0
  begin
    raiserror ('Bu prosedür transaction içinde çalýþýr', 18, 1)
    return (0)
  end

  set nocount on
  if @iTip = 0
  begin
    create table #t 
      (iTip int identity (1, 1) not null, 
       primary key clustered (iTip),
       RowsetHata bit,
       Rowset Bit,
       Aciklama varchar (200),
       HataMesaji varchar (200))
       
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 1 RowsetHata, 1 Rowset, 'Ýçe Görevlendirmeler Ayarlanýyor' Aciklama, null HataMesaji

    set nocount off
    select * 
    from #t
    order by iTip
    set nocount on

    drop table #t
  end
  -- Ýçe görevlendirme olanlarýn hizmet alan kurum adýný ve þubelerini, tekrarlayan kayýt olarak görmemesi için doldur...
  if @iTip = 1 or @iTip is Null
  begin
    select 'BU SP HAZIR DEÐÝL' HATA
  end
  set nocount off

end
go
exec sp_DisAktarim_Personel 0
go
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_DisAktarim_Personel'
go
rollback
go

