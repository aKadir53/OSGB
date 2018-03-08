BEGIN TRAN
GO
ALTER -- CREATE
  PROCEDURE [dbo].[sp_Faturalar] @Tarih1 varchar(10) = '' ,@Tarih2 varchar(10)= ''
AS
  if @Tarih1 = ''
  begin 
    set @Tarih1 = convert(varchar,getdate(),112) 
    set @Tarih2 = convert(varchar,getdate(),112) 
  end
   
    select f.sira,f.SirketKod,c.tanimi Ad,f.faturaNo,f.faturaTip,f.FaturaTarihi,f.faturaTutar,f.kdv,f.indirim, 
    faturaGenelTutar,f.olusturma,f.kullanici,f.degistirme ,ozelKod,fo.tanimi FaturOzelKod, f.Aciklama,dkullanici,
	[Guid] UUID,fd.aciklama eArsivDurum
    from Faturalar f 
     join SIRKETLER_TNM c on c.SirketKod = f.sirketKod
     left join faturaOzelKodlari fo on fo.kod = f.ozelKod
	 left join UyumSoftFaturaDurumKodlari FD on FD.kod = f.eArsivDurum
    where convert(varchar,Faturatarihi,112)  between @tarih1  and @tarih2
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_Faturalar'
GO
COMMIT
GO
