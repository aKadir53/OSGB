BEGIN TRAN
GO
ALTER PROCEDURE [dbo].[sp_firmaListesi] @igu varchar(4) = '',@tip varchar(50) = ''
AS
begin
  if isnull(@tip,'') <> ''
  begin
	select S.subeTanim,S.IGU,I.tanimi IGUAdi, S.subeDoktor,D.tanimi DrAdi, S.subeKod, S.* from SIRKETLER_TNM_view S
	--join SIRKET_SUBE_TNM SB on S.sirketKod = SB.sirketKod
	join IGU I on I.kod = S.IGU
	join doktorlarT D on D.kod = S.subeDoktor 
	where 
	 case when @tip = 'IGU' then I.kod else D.kod end =  @igu
  end
  else
  begin
	select S.subeTanim,S.IGU,I.tanimi IGUAdi, S.subeDoktor,D.tanimi DrAdi, S.subeKod, S.* from SIRKETLER_TNM_view S
	--join SIRKET_SUBE_TNM SB on S.sirketKod = SB.sirketKod
	left join IGU I on I.kod = S.IGU
	left join doktorlarT D on D.kod = S.subeDoktor 
  end


end
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_firmaListesi'
GO
COMMIT
GO
