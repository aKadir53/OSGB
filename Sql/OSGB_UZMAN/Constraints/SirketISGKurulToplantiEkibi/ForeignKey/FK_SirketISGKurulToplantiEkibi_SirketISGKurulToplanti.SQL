BEGIN TRAN
GO
ALTER TABLE [dbo].[SirketISGKurulToplantiEkibi] ADD CONSTRAINT [FK_SirketISGKurulToplantiEkibi_SirketISGKurulToplanti] FOREIGN KEY ([ISGKurulToplantiID]) REFERENCES [dbo].[SirketISGKurulToplanti]([id])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_SirketISGKurulToplantiEkibi_SirketISGKurulToplanti'
GO
COMMIT
GO
