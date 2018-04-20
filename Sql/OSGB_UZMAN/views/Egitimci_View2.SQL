BEGIN TRAN
GO
ALTER VIEW dbo.Egitimci_View2
AS
select 'Dr' unvan,tckimlikNo,tanimi,durum from DOKTORlarT
union all
select 'Igu',tckimlikNo,tanimi,durum from IGU
union all
select 'Hemþire',tckimlikNo,tanimi,durum from DigerSaglikPersonel  
union all
select max (egitimciUnvan) unvan, egitimciTC tckimlikNo, max (egitimciAdiSoyadi) tanimi, 'Aktif' durum
from dbo.Personel_Egitim_Egitimci e
where not exists (select 1 from dbo.DoktorlarT d where d.TCKimlikNo = e.egitimciTC)
  and not exists (select 1 from dbo.IGU d where d.TCKimlikNo = e.egitimciTC)
  and not exists (select 1 from dbo.DigerSaglikPersonel d where d.TCKimlikNo = e.egitimciTC)
  and not exists (select 1 from dbo.DoktorlarT d where d.tanimi = e.egitimciAdiSoyadi)
  and not exists (select 1 from dbo.IGU d where d.tanimi = e.egitimciAdiSoyadi)
  and not exists (select 1 from dbo.DigerSaglikPersonel d where d.tanimi = e.egitimciAdiSoyadi)
group by egitimciTC
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'Egitimci_View2'
GO
COMMIT
GO
