BEGIN TRAN
GO
ALTER -- drop -- create
  VIEW [dbo].[VW_Sys2]
AS
select so.name TableName, sc.name FieldName, sc.colid, sc.length, sc.prec, sc.scale, sc.isnullable, sc.Collationid, sc.Collation, sc.status, cast (case when sc.status & 128 = 0 then 0 else 1 end as bit) IsIdentity, st.name FieldType, sc.Iscomputed,
  case 
    when st.name in ('char', 'varchar', 'Binary', 'varBinary') then st.name + ' (' + cast (sc.length as varchar) + ')'
    when st.name in ('nchar', 'nvarchar') then st.name + ' (' + cast (sc.length / 2 as varchar) + ')'
    when st.name in ('decimal', 'numeric') then st.name + ' (' + cast (sc.prec as varchar) + ', ' + cast (sc.scale as varchar) + ')'
    when st.name in ('float') then st.name + ' (' + cast (sc.prec as varchar) + ')'
    else st.name
  end + 
  case when sc.status & 128 = 0 then '' else ' IDENTITY (1, 1)' end +
  case when sc.isNullable = 0 then ' NOT NULL' else '' END /*+
  CASE WHEN sc.CollationId <> 0 and not sc.collation is null then ' COLLATE ' + sc.collation ELSE '' end */ FieldString,
  scc.Text Formula
from sysobjects so
inner join syscolumns sc on sc.id = so.id 
  and so.xtype = 'U'
inner join systypes st on st.xusertype = sc.xusertype
left join syscomments scc on scc.id = sc.id 
  and scc.number = sc.colid
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'VW_Sys2'
GO
COMMIT
GO
