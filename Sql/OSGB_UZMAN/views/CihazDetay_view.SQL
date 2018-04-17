BEGIN TRAN
GO
ALTER -- CREATE -- DROP
  VIEW dbo.CihazDetay_view
with Schemabinding
AS
select c.Kod CihazKod, c.Tanimi CihazTanimi, CT.Tanimi CihazTuru, s.Tanimi Sirket, Ss.subetanim Sube, CB.Sira, ISNULL (Cd.Ozellik, CB.Ozellik) Ozellik,
  CD.OzellikDeger
from dbo.Cihaz c
inner join dbo.CihazBilgileri CB on CB.cihazTurKod = C.cihazTurKod
inner join dbo.CihazTurleri CT on CT.kod = C.CihazTurKod
left outer join dbo.cihazdetay CD on CD.cihazKod = c.kod
  and CD.OzellikKod = CB.kod
left outer join dbo.SIRKET_SUBE_TNM ss on SS.SirketKod = C.SirketKod
  and Ss.SubeKod = C.SubeKod
left outer join dbo.SIRKETLER_TNM s on S.SirketKod = SS.SirketKod
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'CihazDetay_view'
GO
COMMIT
GO
