BEGIN TRAN
GO
-- [CMPTR] - [12.10.2017 15:32:15]
alter--ALTER
  view dbo.VW_MuayeneTipleri
AS
select cast (1 as int) Kod, cast ('Ýþe Giriþ Muayenesi' as varchar (20)) Tanim
UNION ALL
select cast (2 as int) Kod, cast ('Periyodik Muayene' as varchar (20)) Tanim
UNION ALL
select cast (3 as int) Kod, cast ('Normal Muayene' as varchar (20)) Tanim
UNION ALL
select cast (4 as int) Kod, cast ('Ýþten Çýkýþ Muayenesi' as varchar (20)) Tanim
UNION ALL
select cast (5 as int) Kod, cast ('Ýþe Dönüþ Muayenesi' as varchar (20)) Tanim
UNION ALL
select cast (6 as int) Kod, cast ('Ýþ Kazasý Muayenesi' as varchar (20)) Tanim
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'VW_MuayeneTipleri'
GO
COMMIT
GO
