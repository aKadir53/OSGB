BEGIN TRAN
GO
ALTER VIEW dbo.Egitimci_View2
AS
select 'Dr' unvan,tckimlikNo,tanimi,durum from DOKTORlarT
union all
select 'Igu',tckimlikNo,tanimi,durum from IGU
union all
select 'Hemþire',tckimlikNo,tanimi,durum from DigerSaglikPersonel  
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'Egitimci_View2'
GO
COMMIT
GO
