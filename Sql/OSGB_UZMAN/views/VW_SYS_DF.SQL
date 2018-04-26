BEGIN TRAN
GO
ALTER -- create
  view dbo.VW_SYS_DF 
as
select xtype, Returns, OwnerName, name, OwnerID, AllText, sum (x) X, MAX (LastDate) LastDate, MAX (LastHost) LastHost, Folder, MAX (FileNameOwner) FileNameOwner
from
(
select CAST (1 as int) x, xtype, Returns, OwnerName, name, OwnerID, AllText, cast (null as datetime) LastDate, CAST (null as varchar (30)) LastHost,
  cast (
    case LTRIM (RTRIM (xtype))
      when 'FN' then 'Sql\' + case when DB_Name () = 'ERP_DB' then 'Erp' else DB_NAME () end + '\Functions\Scalar'
      when 'IF' then 'Sql\' + case when DB_Name () = 'ERP_DB' then 'Erp' else DB_NAME () end + '\Functions\Table'
      when 'TF' then 'Sql\' + case when DB_Name () = 'ERP_DB' then 'Erp' else DB_NAME () end + '\Functions\Table'
      when 'P' then 'Sql\' + case when DB_Name () = 'ERP_DB' then 'Erp' else DB_NAME () end + '\Stored Procedures'
      when 'V' then 'Sql\' + case when DB_Name () = 'ERP_DB' then 'Erp' else DB_NAME () end + '\views'
      when 'TR' then 'Sql\' + case when DB_Name () = 'ERP_DB' then 'Erp' else DB_NAME () end + '\Triggers\'+ParentObjName
      when 'C ' then 'Sql\' + case when DB_Name () = 'ERP_DB' then 'Erp' else DB_NAME () end + '\Constraints\'+ParentObjName+'\Check'
      when 'D ' then 'Sql\' + case when DB_Name () = 'ERP_DB' then 'Erp' else DB_NAME () end + '\Constraints\'+ParentObjName+'\Default'
      when 'F ' then 'Sql\' + case when DB_Name () = 'ERP_DB' then 'Erp' else DB_NAME () end + '\Constraints\'+ParentObjName+'\ForeignKey'
      else null 
    end as varchar (2000)) Folder,
  case when not w.Sayi is null and xx.OwnerName <> 'dbo' then xx.OwnerName else null end as FileNameOwner
from vw_sys xx
left outer join
  (select so.xtype xtypex, so.name namex, COUNT (*) Sayi
   from sysobjects so
   group by so.xtype, so.name
   having COUNT (*) > 1) w on w.xtypex = xx.xtype
  and w.namex = xx.name
where not AllText is null
union all
select CAST (-1 as int) x, xx.xtype, Returns, OwnerName, xx.name, OwnerID, AllText, ISNULL (UpdateDate, InsertDate) LastDate, IsNull (UpdateHostName, InsertHostName) LastHost,
  cast (
    case LTRIM (RTRIM (xtype))
      when 'FN' then 'Sql\' + case when DB_Name () = 'ERP_DB' then 'Erp' else DB_NAME () end + '\Functions\Scalar'
      when 'IF' then 'Sql\' + case when DB_Name () = 'ERP_DB' then 'Erp' else DB_NAME () end + '\Functions\Table'
      when 'TF' then 'Sql\' + case when DB_Name () = 'ERP_DB' then 'Erp' else DB_NAME () end + '\Functions\Table'
      when 'P' then 'Sql\' + case when DB_Name () = 'ERP_DB' then 'Erp' else DB_NAME () end + '\Stored Procedures'
      when 'V' then 'Sql\' + case when DB_Name () = 'ERP_DB' then 'Erp' else DB_NAME () end + '\views'
      when 'TR' then 'Sql\' + case when DB_Name () = 'ERP_DB' then 'Erp' else DB_NAME () end + '\Triggers\'+ParentObjName
      when 'C ' then 'Sql\' + case when DB_Name () = 'ERP_DB' then 'Erp' else DB_NAME () end + '\Constraints\'+ParentObjName+'\Check'
      when 'D ' then 'Sql\' + case when DB_Name () = 'ERP_DB' then 'Erp' else DB_NAME () end + '\Constraints\'+ParentObjName+'\Default'
      when 'F ' then 'Sql\' + case when DB_Name () = 'ERP_DB' then 'Erp' else DB_NAME () end + '\Constraints\'+ParentObjName+'\ForeignKey'
      else null 
    end as varchar (2000)) Folder,
  case when not w.Sayi is null and xx.OwnerName <> 'dbo' then xx.OwnerName else null end as FileNameOwner
from vw_sys_x xx
left outer join
  (select so.xtype xtypex, so.name namex, COUNT (*) Sayi
   from sysobjects so
   group by so.xtype, so.name
   having COUNT (*) > 1) w on w.xtypex = xx.xtype
  and w.namex = xx.name
where not AllText is null
) W
group by xtype, Returns, OwnerName, name, OwnerID, AllText, Folder
having SUM (x) <> 0
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'VW_SYS_DF'
GO
COMMIT
GO
