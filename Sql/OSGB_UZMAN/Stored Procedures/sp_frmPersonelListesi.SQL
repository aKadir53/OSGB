BEGIN TRAN
GO
-- [CMPTR2] - [25.09.2017 16:36:02]
ALTER PROCEDURE [dbo].[sp_frmPersonelListesi] @ap varchar(5) = '1',@ktip varchar(2) = '1'
AS
select *,(case when isnull(diger,'') = '' then '0' else '1' end) ozeldurum , 
(case when (CHARINDEX('5',h.GELHAST) > 0 OR CHARINDEX('7',h.GELHAST) > 0) THEN '1' ELSE '' END) Diabet,
(case when isnull(AntiHbs,'') = '' THEN '0' ELSE AntiHbs END) 'AntiHbs' 

from Personelkart h
 join gelisler g on g.dosyano = h.dosyano --and g.gelisno = (select max(gelisno) from gelisler where dosyano = h.dosyano)
 left join Kurumlar k on k.kurum = h.kurum
 --LEFT JOIN makinalar m ON m.makinaNo = h.makinaNo
where aktif in
(select datavalue from dbo.strtotable((case when @ap = '1' then '1,2' else '0' end),','))
and h.SirketKod = @ktip
order by h.HASTAADI,h.HASTASOYADI
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_frmPersonelListesi'
GO
COMMIT
GO
