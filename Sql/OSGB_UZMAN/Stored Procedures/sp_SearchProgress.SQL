BEGIN TRAN
GO
ALTER -- CREATE 
  procedure [dbo].[sp_SearchProgress]
as
begin
  select sum (case when ISNULL (Processed, 0) = 0 then 0.000 ELSE 1.0000 end) / cast (Count (*) as decimal (28,13)) * 100.0000 from SearchProgress with (nolock)
  SELeCT A.Processed, A1.TableName + '.' + A1.fieldName Ilk, A2.TableName + '.' + A2.fieldName Son, A.Sayi
  FROM
    (
    select Processed, Min (RecID) R1, Max (RecID) R2, Count (*) Sayi 
    from Searchprogress 
    group by Processed 
    ) A
  INNER JOIN Searchprogress A1 ON A1.RecID = A.R1
  INNER JOIN Searchprogress A2 ON A2.RecID = A.R2
  
  Order By A.Processed desc
end
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_SearchProgress'
GO
COMMIT
GO
