BEGIN TRAN
GO
ALTER -- CREATE
  procedure dbo.sp_KullaniciGrupYetkileriPivot @KullaniciVeyaGrup bit, @MenuVeyaModul bit, @KullaniciGrubunuGoster bit
as
begin
  declare @sql varchar (max) = ''
  IF @KullaniciVeyaGrup = 0 or @KullaniciVeyaGrup is null
    select @SQL = @sql + case when @sql = '' then '' else ', ' end + '[' + U.Kullanici + case when @KullaniciGrubunuGoster = 1 then ISNULL (' ('+UG.ADI+')', '') else '' end + ']' 
	from dbo.Users U
	left outer join dbo.UserGroups UG on UG.KODU = U.Grup
	order by --case when IsNull (@KullaniciGrubunuGoster, 0) = 1 then ISNULL (UG.ADI, '') else '' end, 
	  U.Kullanici
   else
    select @SQL = @sql + case when @sql = '' then '' else ', ' end + '[' + ADI + ']' from UserGroups order by ADI
  set @sql = 
    'select '+case when IsNull (@MenuveyaModul, 0) = 0 then 'case when IsNull (Kapsam, 0) = 0 then KAYITID * 10000 else (IsNull (Kapsam, 0) * 10000) + KAYITID end xx, ' else '' end+'*'+ char (13) + Char (10) +
    'from'+ char (13) + Char (10) +
    '('+ char (13) + Char (10) +
    'select '+case when IsNull (@MenuveyaModul, 0) = 0 then 'KAYITID, Kapsam, Menu' else 'Modul, Islem' end+', '+
	  CASE 
	    when @KullaniciVeyaGrup = 1 then 'GrupAdi AS Kullanici' 
		else 
		  case when @KullaniciGrubunuGoster = 1 then 'Kullanici + ISNULL ('' (''+ Grubu +'')'', '''') AS Kullanici' 
		  else 'Kullanici'
		end
	  end+', Izin'+ char (13) + Char (10) +
    'from User' + CASE when @KullaniciVeyaGrup = 1 then 'Group' else '' end + case when IsNull (@MenuveyaModul, 0) = 0 then 'Menu' else '' end + 'Settings_'+case when IsNull (@MenuveyaModul, 0) = 0 then 'Menu' else 'Modul' end+'Baglanti_view'+ char (13) + Char (10) +
    ') AS x'+ char (13) + Char (10) +
    'PIVOT (MAX (Izin)'+ char (13) + Char (10) +
    'FOR Kullanici in ('+@sql+'))'+ char (13) + Char (10) +
    'AS y'+ char (13) + Char (10) +
    'order by '+case when IsNull (@MenuveyaModul, 0) = 0 then 'xx' else 'Modul, Islem' end
  --PRINT (@SQL+Char (13) + char (10) + 'GO')
  EXEC (@SQL)
end
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_KullaniciGrupYetkileriPivot'
GO
COMMIT
GO
exec sp_KullaniciGrupYetkileriPivot 0, 0, 1
go
exec sp_KullaniciGrupYetkileriPivot 0, 0, 0
go
exec sp_KullaniciGrupYetkileriPivot 1, 0, 0
go
exec sp_KullaniciGrupYetkileriPivot 0, 1, 1
go
exec sp_KullaniciGrupYetkileriPivot 0, 1, 0
go
exec sp_KullaniciGrupYetkileriPivot 1, 1, 0
go
