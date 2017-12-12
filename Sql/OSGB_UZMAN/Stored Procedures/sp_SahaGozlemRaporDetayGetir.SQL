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
    inner join dbo.SahaGozlemSorular ss on 1 = 1
    where sgr.ID = @RaporlarID
      and not exists (select 1 from dbo.SahaGozlemRaporu sr2 where sr2.RaporlarID = sgr.ID and sr2.Konu_Sira = ss.ID)
    order by ss.ID
  end
  set nocount off
  select sr.ID, sr.Konu_Sira, ss.Konu, sr.Uygunmu, sr.Tespitler, sr.Oneriler
  from dbo.SahaGozlemRaporu sr
  inner join dbo.SahaGozlemSorular ss on ss.ID = sr.Konu_Sira
  where sr.RaporlarID = @RaporlarID
  order by ss.ID
end
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_SahaGozlemRaporDetayGetir'
GO
COMMIT
GO
