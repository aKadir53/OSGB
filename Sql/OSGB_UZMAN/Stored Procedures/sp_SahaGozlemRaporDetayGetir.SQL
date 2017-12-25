BEGIN TRAN
GO
ALTER -- create
  procedure dbo.sp_SahaGozlemRaporDetayGetir @RaporlarID int
as
begin
  set nocount on
  if not exists (select 1 from dbo.SahaGozlemRaporu sgrx where sgrx.RaporlarID = @RaporlarID)
  begin
    insert into dbo.SahaGozlemRaporu (RaporlarID, Konu_Sira, Uygunmu, Tespitler, Oneriler)
    select sgr.ID RaporlarID, ss.ID Konu_Sira, 1 Uygunmu, null Tespitler, null Oneriler
    from dbo.SahaGozlemRaporlari sgr
    inner join dbo.SahaGozlemSorular ss on sgr.GozlemGrup = ss.GozlemGrup
    left join dbo.SahaGozlemSoruAltGrup sagr on sagr.GozlemGrup = ss.GozlemGrup
      and sagr.GozlemAltGrup = ss.GozlemAltGrup
    where sgr.ID = @RaporlarID
      and not exists (select 1 from dbo.SahaGozlemRaporu sr2 where sr2.RaporlarID = sgr.ID and sr2.Konu_Sira = ss.ID)
    order by sagr.Sira, ss.Sira, ss.ID
  end
  set nocount off
  select sr.ID, sr.Konu_Sira, sagr.Sira GrupSira, 
	sagr.Tanimi GrupBaslik, 
	ss.Sira SoruSira, 
	ss.Konu Konu,
	sr.Uygunmu, sr.Tespitler, sr.Oneriler, 
	IsNull (replicate ('0', len (max (sagr.Sira) over ()) - len (cast (sagr.Sira as varchar (10)))) + cast (sagr.Sira as varchar (10)) + '. ', '') + sagr.Tanimi GrupBaslikRakamli,
    IsNull (replicate ('0', len (max (ss.Sira) over (partition by sagr.sira order by sagr.sira)) - len (cast (ss.Sira as varchar (10)))) + cast (ss.Sira as varchar (10)) + '. ', '') + ss.Konu KonuRakamli
  from dbo.SahaGozlemRaporu sr
  inner join dbo.SahaGozlemSorular ss on ss.ID = sr.Konu_Sira
  left join dbo.SahaGozlemSoruAltGrup sagr on sagr.GozlemGrup = ss.GozlemGrup
    and sagr.GozlemAltGrup = ss.GozlemAltGrup
  where sr.RaporlarID = @RaporlarID
  order by sagr.sira, ss.sira, ss.ID
end
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_SahaGozlemRaporDetayGetir'
GO
COMMIT
GO
exec dbo.sp_SahaGozlemRaporDetayGetir 18
go
