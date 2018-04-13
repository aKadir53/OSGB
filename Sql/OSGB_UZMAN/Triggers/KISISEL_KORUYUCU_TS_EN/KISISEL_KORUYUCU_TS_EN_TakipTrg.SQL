BEGIN TRAN
GO
ALTER -- create -- drop
 TRIGGER [dbo].[KISISEL_KORUYUCU_TS_EN_TakipTrg]
   ON  [dbo].[KISISEL_KORUYUCU_TS_EN]
   AFTER DELETE,INSERT, UPDATE
AS 
BEGIN
  set nocount on
  declare 
    @TableName varchar (200) = 'KISISEL_KORUYUCU_TS_EN',
    @KeyFields varchar (200) = 'TS_EN_NO'

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLStrValueForString (TS_EN_NO, 0), 'D', 0,
    'DELETE FROM dbo.KISISEL_KORUYUCU_TS_EN where TS_EN_NO' + dbo.fn_SQLStrValueForString (TS_EN_NO, 1) 
  from deleted d
  where not exists (select 1 from inserted i where d.TS_EN_NO = i.TS_EN_NO)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLStrValueForString (TS_EN_NO, 0), 'I', 0,
    'IF NOT EXISTS (SELECT 1 from dbo.KISISEL_KORUYUCU_TS_EN where TS_EN_NO' + dbo.fn_SQLStrValueForString (TS_EN_NO, 1) +')'+char (13) + char (10) + 
    'insert into dbo.KISISEL_KORUYUCU_TS_EN (TS_EN_NO, STANDART_ADI)'+char (13) + char (10) + 
    'Select '+ dbo.fn_SQLStrValueForString (TS_EN_NO, 0) +', ' + 
    dbo.fn_SQLStrValueForString (STANDART_ADI, 0)
  from inserted i
  where not exists (select 1 from deleted d where d.TS_EN_NO = i.TS_EN_NO)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, IdentityInsert, Script)
  select @TableName, @KeyFields, dbo.fn_SQLStrValueForString (i.TS_EN_NO, 0), 'U', 0,
    'Update KISISEL_KORUYUCU_TS_EN'+char (13) + char (10) +'  SET '+char (13) + char (10) + '    ' +
    REVERSE (SUBSTRING (REvERSE (case when dbo.fn_SQLStrValueForString (d.STANDART_ADI, 0) <> dbo.fn_SQLStrValueForString (i.STANDART_ADI, 0) then 'STANDART_ADI = ' + dbo.fn_SQLStrValueForString (i.STANDART_ADI, 0) + ',' else '' end), 2, 8000)) +
    char (13) + char (10) + 'WHERE TS_EN_NO' + dbo.fn_SQLStrValueForString (i.TS_EN_NO, 1) 
  from inserted i
  inner join deleted d on d.TS_EN_NO = i.TS_EN_NO
  inner join 
    (SELECT TS_EN_NO
     FROM
     (select TS_EN_NO, STANDART_ADI
      from
      (select -1 x, TS_EN_NO, STANDART_ADI
       from deleted
       union all
       select 1 x, TS_EN_NO, STANDART_ADI
       from inserted) U
      group by TS_EN_NO, STANDART_ADI
      having sum (x) <> 0)w
     group by TS_EN_NO) u on u.TS_EN_NO = i.TS_EN_NO
  set nocount off
END
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'KISISEL_KORUYUCU_TS_EN_TakipTrg'
GO
COMMIT
GO
