BEGIN TRAN
GO
ALTER -- create -- drop
 procedure dbo.sp_ReceteIstatistikTopla
as
begin
  declare abc cursor for
  Select name
  from master.dbo.sysdatabases 
  where name like 'OSGB[_]%' 
    and name <> 'OSGB_MASTER'
  order by name 

  declare 
    @DBName varchar (200),
    @SQL2 varchar (2000)

  open abc

  fetch abc into @DBName
  while @@fetch_status = 0
  begin
    PRINT '['+@DBName+']'
    set NOCOUNT ON
    SET @SQL2 = 
      'delete i'+char (13) + char (10) +
      'from OSGB_MASTER.dbo.ReceteIstatistik i'+char (13) + char (10) +
      'inner join '+'['+@DBName+']'+'.dbo.MerkezBilgisi mm on mm.MerkezKodu = i.MerkezKodu'
    EXEC (@SQL2)
    SET @SQL2 = 
      'delete i'+char (13) + char (10) +
      'from OSGB_MASTER.dbo.ReceteIlacIstatistik i'+char (13) + char (10) +
      'inner join '+'['+@DBName+']'+'.dbo.MerkezBilgisi mm on mm.MerkezKodu = i.MerkezKodu'
    EXEC (@SQL2)
    SET @SQL2 = 
      'delete i'+char (13) + char (10) +
      'from OSGB_MASTER.dbo.ReceteTaniIstatistik i'+char (13) + char (10) +
      'inner join '+'['+@DBName+']'+'.dbo.MerkezBilgisi mm on mm.MerkezKodu = i.MerkezKodu'
    EXEC (@SQL2)
    SET @SQL2 = 
      'insert into OSGB_MASTER.dbo.ReceteIstatistik (merkezkodu, MerkezAdi, Sirket, Sube, Doktor, Medula, ReceteTarih, Sayi)'+char (13) + char (10) +
      'select mm.merkezkodu, mm.MerkezAdi, s.tanimi Sirket, ss.SubeTanim Sube, d.Tanimi Doktor, '+char (13) + char (10) +
      '  cast (case when IsNull (Ereceteno, ''0000'') = ''0000'' then 0 else 1 end as bit) Medula, r.Tarih,'+char (13) + char (10) +
      '  count (*) Sayi'+char (13) + char (10) +
      '-- select *'+char (13) + char (10) +
      'from '+'['+@DBName+']'+'.dbo.recete R'+char (13) + char (10) +
      'inner join '+'['+@DBName+']'+'.dbo.PersonelKart pk on pk.dosyano = r.dosyano'+char (13) + char (10) +
      'inner join '+'['+@DBName+']'+'.dbo.SIRKET_SUBE_TNM ss on ss.sirketKod = pk.Sirketkod'+char (13) + char (10) +
      '  and ss.SubeKod = pk.sube'+char (13) + char (10) +
      'inner join '+'['+@DBName+']'+'.dbo.SIRKETLER_TNM s on s.sirketKod  = ss.SirketKod '+char (13) + char (10) +
      'inner join '+'['+@DBName+']'+'.dbo.doktorlart d on d.kod = R.doktor'+char (13) + char (10) +
      'inner join '+'['+@DBName+']'+'.dbo.merkezBilgisi mm on 1 = 1'+char (13) + char (10) +
      'group by r.Tarih, mm.merkezkodu, mm.MerkezAdi, s.tanimi, ss.SubeTanim, d.Tanimi, cast (case when IsNull (Ereceteno, ''0000'') = ''0000'' then 0 else 1 end as bit)'+char (13) + char (10) +
      'order by s.Tanimi, ss.SubeTanim, d.Tanimi'
    EXEC (@SQL2)
    SET @SQL2 = 
      'insert into OSGB_MASTER.dbo.ReceteIlacIstatistik (merkezkodu, MerkezAdi, Sirket, Sube, Doktor, Medula, ReceteTarih, ilacKodu, ilacAdi, KullanimYolu, Sayi)'+char (13) + char (10) +
      'select mm.merkezkodu, mm.MerkezAdi, s.tanimi Sirket, ss.SubeTanim Sube, d.Tanimi Doktor, '+char (13) + char (10) +
      '  cast (case when IsNull (Ereceteno, ''0000'') = ''0000'' then 0 else 1 end as bit) Medula, r.Tarih,'+char (13) + char (10) +
      '  rd.ilacKodu, max (rd.ilacAdi) ilacAdi, case when count (distinct rd.KullanimYolu) = 1 then max (rd.KullanimYolu) else null end KullanimYolu, count (*) Sayi'+char (13) + char (10) +
      '-- select *'+char (13) + char (10) +
      'from '+'['+@DBName+']'+'.dbo.recete R'+char (13) + char (10) +
      'inner join '+'['+@DBName+']'+'.dbo.ReceteDetay rd on rd.ReceteID = r.iD'+char (13) + char (10) +
      'inner join '+'['+@DBName+']'+'.dbo.PersonelKart pk on pk.dosyano = r.dosyano'+char (13) + char (10) +
      'inner join '+'['+@DBName+']'+'.dbo.SIRKET_SUBE_TNM ss on ss.sirketKod = pk.Sirketkod'+char (13) + char (10) +
      '  and ss.SubeKod = pk.sube'+char (13) + char (10) +
      'inner join '+'['+@DBName+']'+'.dbo.SIRKETLER_TNM s on s.sirketKod  = ss.SirketKod '+char (13) + char (10) +
      'inner join '+'['+@DBName+']'+'.dbo.doktorlart d on d.kod = R.doktor'+char (13) + char (10) +
      'inner join '+'['+@DBName+']'+'.dbo.merkezBilgisi mm on 1 = 1'+char (13) + char (10) +
      'group by r.Tarih, mm.merkezkodu, mm.MerkezAdi, s.tanimi, ss.SubeTanim, d.Tanimi,'+char (13) + char (10) +
      '  rd.ilacKodu, '+char (13) + char (10) +
      '  cast (case when IsNull (Ereceteno, ''0000'') = ''0000'' then 0 else 1 end as bit)'+char (13) + char (10) +
      'order by s.Tanimi, ss.SubeTanim, d.Tanimi'
    EXEC (@SQL2)
    SET @SQL2 = 
      'insert into OSGB_MASTER.dbo.ReceteTaniIstatistik (merkezkodu, MerkezAdi, Sirket, Sube, Doktor, Medula, ReceteTarih, TaniKodu, Tani, Sayi)'+char (13) + char (10) +
      'select mm.merkezkodu, mm.MerkezAdi, s.tanimi Sirket, ss.SubeTanim Sube, d.Tanimi Doktor, '+char (13) + char (10) +
      '  cast (case when IsNull (Ereceteno, ''0000'') = ''0000'' then 0 else 1 end as bit) Medula, r.Tarih,'+char (13) + char (10) +
      '  rd.TaniKodu, max (rd.Tani) Tani, count (*) Sayi'+char (13) + char (10) +
      '-- select *'+char (13) + char (10) +
      'from '+'['+@DBName+']'+'.dbo.recete R'+char (13) + char (10) +
      'inner join '+'['+@DBName+']'+'.dbo.ReceteTani rd on rd.ReceteID = r.iD'+char (13) + char (10) +
      'inner join '+'['+@DBName+']'+'.dbo.PersonelKart pk on pk.dosyano = r.dosyano'+char (13) + char (10) +
      'inner join '+'['+@DBName+']'+'.dbo.SIRKET_SUBE_TNM ss on ss.sirketKod = pk.Sirketkod'+char (13) + char (10) +
      '  and ss.SubeKod = pk.sube'+char (13) + char (10) +
      'inner join '+'['+@DBName+']'+'.dbo.SIRKETLER_TNM s on s.sirketKod  = ss.SirketKod '+char (13) + char (10) +
      'inner join '+'['+@DBName+']'+'.dbo.doktorlart d on d.kod = R.doktor'+char (13) + char (10) +
      'inner join '+'['+@DBName+']'+'.dbo.merkezBilgisi mm on 1 = 1'+char (13) + char (10) +
      'group by r.Tarih, mm.merkezkodu, mm.MerkezAdi, s.tanimi, ss.SubeTanim, d.Tanimi,'+char (13) + char (10) +
      '  rd.TaniKodu, '+char (13) + char (10) +
      '  cast (case when IsNull (Ereceteno, ''0000'') = ''0000'' then 0 else 1 end as bit)'+char (13) + char (10) +
      'order by s.Tanimi, ss.SubeTanim, d.Tanimi'
    EXEC (@SQL2)
	SET NOCOUNT OFF
    fetch abc into @DBName
  end
  close abc

  deallocate abc
end
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_ReceteIstatistikTopla'
GO
COMMIT
GO
