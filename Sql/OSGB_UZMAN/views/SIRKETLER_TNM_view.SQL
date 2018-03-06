BEGIN TRAN
GO
ALTER -- create
  view dbo.SIRKETLER_TNM_view
with schemabinding
as
Select ST.SirketKod, ST.tanimi, SBB.subeDoktor doktor, ST.NaceKod, ST.anaFaliyet, ST.tehlikeSinifi, ST.SGKKod, ST.calisanSayisi, ST.Tel1, ST.Tel2, ST.Fax, ST.Yetkili, ST.yetkiliTel, ST.yetkilimail, ST.SEHIR, ST.ILCE, ST.MAHALLE, ST.CADDE, ST.BUCAK, ST.KOY, ST.SOKAK, ST.Adres, ST.VD, ST.VN, ST.Istigal, ST.IsguvenlikUzman, ST.SorunluRevirPersonel, ST.Aktif, ST.User_ID, ST.Date_Create, ST.IsyeriSicilNo, ST.BolgeMudurlukSicilNo, IGU, DigerSaglikPers
from dbo.SIRKETLER_TNM ST
left outer join 
  (select SirketKod, SubeDoktor, IGU, DigerSaglikPers
   from dbo.SIRKET_SUBE_TNM
   where (not SubeDoktor is Null
     or not IGU is NULL
	 or not DigerSaglikPers is NULL)
   group by sirketKod, subeDoktor, IGU, DigerSaglikPers) SBB on SBB.sirketKod = st.SirketKod
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'SIRKETLER_TNM_view'
GO
COMMIT
GO
