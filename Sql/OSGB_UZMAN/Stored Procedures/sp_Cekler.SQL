BEGIN TRAN
GO
ALTER --
 --CREATE
  PROCEDURE [dbo].[sp_Cekler] @durum int = null
AS

select c.*,cd.*,S.Tanimi kimden,T.tanimi kime from cari_cekler c
join cari_CekDurum cd on cd.kod = c.Durum
left join SIRKETLER_TNM S on S.sirketKod = c.sirketKod
left join cari_Tedarikciler T on T.kod = c.TedarikciKod
where (C.durum = @durum) or (isnull(@durum,9) = 9)
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_Cekler'
GO
COMMIT
GO
