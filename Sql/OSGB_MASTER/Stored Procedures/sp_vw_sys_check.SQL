BEGIN TRAN
GO
ALTER -- create
  procedure dbo.sp_vw_sys_check @replaceCRLF varchar (10) = null, @replaceTabs varchar (10) = null 
as
begin
  select xtype, Returns, OwnerName, name, OwnerID, 
  replace (replace (AllText, char (9), IsNull (@replaceTabs, char (9))), char (13) + CHAR (10), IsNull (@replaceCRLF, char (13) + Char (10))) AllText, X, LastDate, LastHost, Folder, FileNameOwner
  from VW_SYS_DF
  order by xtype, name, OwnerName, X
end
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_vw_sys_check'
GO
COMMIT
GO
