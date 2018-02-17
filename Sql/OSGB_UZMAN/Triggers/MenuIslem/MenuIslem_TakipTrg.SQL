BEGIN TRAN
GO
ALTER -- create -- drop
 TRIGGER [dbo].[MenuIslem_TakipTrg]
   ON  [dbo].[MenuIslem]
   AFTER DELETE,INSERT, UPDATE
AS 
BEGIN
  set nocount on
  declare 
    @TableName varchar (200) = 'MenuIslem',
    @KeyFields varchar (200) = 'KAYITID'

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLIntValueForString (KAYITID, 0), 'D', 
    'DELETE FROM dbo.MenuIslem where KAYITID' + dbo.fn_SQLIntValueForString (KAYITID, 1) 
  from deleted d
  where not exists (select 1 from inserted i where d.KAYITID = i.KAYITID)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, Script)
  select 
    @TableName, @KeyFields, dbo.fn_SQLIntValueForString (KAYITID, 0), 'I',
    'IF NOT EXISTS (SELECT 1 from dbo.MenuIslem where KAYITID' + dbo.fn_SQLIntValueForString (KAYITID, 1) +')'+char (13) + char (10) + 
    'insert into dbo.MenuIslem (Menu, KAYITID, MainMenu, Kapsam, imageIndex, ShortCut, ShowTip, FormTag, Sira)'+char (13) + char (10) + 
    'Select '+ dbo.fn_SQLStrValueForString (Menu, 0) +', ' + 
    dbo.fn_SQLIntValueForString (KAYITID, 0) +', ' + 
    dbo.fn_SQLStrValueForString (MainMenu, 0) +', ' + 
    dbo.fn_SQLIntValueForString (Kapsam, 0) +', ' + 
    dbo.fn_SQLIntValueForString (imageIndex, 0) +', ' + 
    dbo.fn_SQLStrValueForString (ShortCut, 0) +', ' + 
    dbo.fn_SQLIntValueForString (ShowTip, 0) +', ' + 
    dbo.fn_SQLIntValueForString (FormTag, 0) +', ' + 
    dbo.fn_SQLIntValueForString (Sira, 0)
  from inserted i
  where not exists (select 1 from deleted d where d.KAYITID = i.KAYITID)

  Insert into dbo.GuncellemeTakipScript (TableName, KeyFields, KeyValues, Mode, Script)
  select @TableName, @KeyFields, dbo.fn_SQLIntValueForString (i.KAYITID, 0), 'U',
    'Update MenuIslem'+char (13) + char (10) +'  SET '+char (13) + char (10) + '    ' +
    REVERSE (SUBSTRING (REvERSE (case when dbo.fn_SQLStrValueForString (d.Menu, 0) <> dbo.fn_SQLStrValueForString (i.Menu, 0) then 'Menu = ' + dbo.fn_SQLStrValueForString (i.Menu, 0) + ',' else '' end +
    case when dbo.fn_SQLStrValueForString (d.MainMenu, 0) <> dbo.fn_SQLStrValueForString (i.MainMenu, 0) then 'MainMenu = ' + dbo.fn_SQLStrValueForString (i.MainMenu, 0) + ',' else '' end +
    case when dbo.fn_SQLIntValueForString (d.Kapsam, 0) <> dbo.fn_SQLIntValueForString (i.Kapsam, 0) then 'Kapsam = ' + dbo.fn_SQLIntValueForString (i.Kapsam, 0) + ',' else '' end +
    case when dbo.fn_SQLIntValueForString (d.imageIndex, 0) <> dbo.fn_SQLIntValueForString (i.imageIndex, 0) then 'imageIndex = ' + dbo.fn_SQLIntValueForString (i.imageIndex, 0) + ',' else '' end +
    case when dbo.fn_SQLStrValueForString (d.ShortCut, 0) <> dbo.fn_SQLStrValueForString (i.ShortCut, 0) then 'ShortCut = ' + dbo.fn_SQLStrValueForString (i.ShortCut, 0) + ',' else '' end +
    case when dbo.fn_SQLIntValueForString (d.ShowTip, 0) <> dbo.fn_SQLIntValueForString (i.ShowTip, 0) then 'ShowTip = ' + dbo.fn_SQLIntValueForString (i.ShowTip, 0) + ',' else '' end +
    case when dbo.fn_SQLIntValueForString (d.FormTag, 0) <> dbo.fn_SQLIntValueForString (i.FormTag, 0) then 'FormTag = ' + dbo.fn_SQLIntValueForString (i.FormTag, 0) + ',' else '' end +
    case when dbo.fn_SQLIntValueForString (d.Sira, 0) <> dbo.fn_SQLIntValueForString (i.Sira, 0) then 'Sira = ' + dbo.fn_SQLIntValueForString (i.Sira, 0) + ',' else '' end), 2, 8000)) +
    char (13) + char (10) + 'WHERE KAYITID' + dbo.fn_SQLIntValueForString (i.KAYITID, 1) 
  from inserted i
  inner join deleted d on d.KAYITID = i.KAYITID
  inner join 
    (SELECT KAYITID
     FROM
     (select Menu, KAYITID, MainMenu, Kapsam, imageIndex, ShortCut, ShowTip, FormTag, Sira
      from
      (select -1 x, Menu, KAYITID, MainMenu, Kapsam, imageIndex, ShortCut, ShowTip, FormTag, Sira
       from deleted
       union all
       select 1 x, Menu, KAYITID, MainMenu, Kapsam, imageIndex, ShortCut, ShowTip, FormTag, Sira
       from inserted) U
      group by Menu, KAYITID, MainMenu, Kapsam, imageIndex, ShortCut, ShowTip, FormTag, Sira
      having sum (x) <> 0)w
     group by KAYITID) u on u.KAYITID = i.KAYITID
  set nocount off
END
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'MenuIslem_TakipTrg'
GO
COMMIT
GO
