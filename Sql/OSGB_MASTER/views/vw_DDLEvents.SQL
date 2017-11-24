BEGIN TRAN
GO
-- [CMPTR] - [24.10.2017 11:43:47]
ALTER
 
 View vw_DDLEvents   as 


SELECT  
ObjectName,EventType, VersionNumber,max(VersionNumber) over(partition by objectname) as MaxVersiyon ,EventDate,Alltext,HostName ,IPAddress,ProgramName,LoginName,EventXML,DatabaseName,SchemaName

FROM (
Select 

ObjectName,EventType,
 VersionNumber = ROW_NUMBER() OVER
        (
            PARTITION BY DatabaseName, SchemaName, ObjectName
            ORDER BY     EventDate
        ) 
		,
  
EventDate,EventDDL Alltext,HostName ,IPAddress,ProgramName,LoginName,EventXML,DatabaseName,SchemaName


 
		FROM DDLEvents
 ) W  
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'vw_DDLEvents'
GO
COMMIT
GO
