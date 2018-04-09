BEGIN TRAN
GO
--ALTER --
 ALTER
  PROCEDURE [dbo].[sp_CariHesapBorcAlacakToplam] 
AS
select carikod,S.tanimi, sum(borc) B,sum(alacak) A,sum(borc-alacak) BK 
from cariHareketler ch
left join SIRKETLER_TNM s on s.SirketKod = ch.carikod
group by  carikod,S.tanimi
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_CariHesapBorcAlacakToplam'
GO
COMMIT
GO
