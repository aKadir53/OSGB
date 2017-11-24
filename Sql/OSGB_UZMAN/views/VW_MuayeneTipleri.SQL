BEGIN TRAN
GO
-- [CMPTR] - [12.10.2017 15:29:25]
ALTER
  view dbo.VW_MuayeneTipleri
AS
select cast (1 as int) Kod, cast ('Ýþe Giriþ Muayenesi' as varchar (20)) Tanim
UNION ALL
select cast (2 as int) Kod, cast ('yyy' as varchar (20)) Tanim
UNION ALL
select cast (3 as int) Kod, cast ('yyy' as varchar (20)) Tanim
UNION ALL
select cast (4 as int) Kod, cast ('yyy' as varchar (20)) Tanim
UNION ALL
select cast (5 as int) Kod, cast ('yyy' as varchar (20)) Tanim
UNION ALL
select cast (6 as int) Kod, cast ('yyy' as varchar (20)) Tanim
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'VW_MuayeneTipleri'
GO
COMMIT
GO
