BEGIN TRAN
GO
-- [CMPTR2] - [24.10.2017 15:56:56]
alter PROCEDURE [dbo].[sp_frmKazaTutanagiYazdir] @ID int
AS


ALTER TABLE [dbo].[portfoyKontak](
	[kurumKodu] [varchar](10) NOT NULL,
	[Tarih] [datetime] NOT NULL,
	[saat] [datetime] NOT NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Aciklama] [varchar](500) NULL,
	[durum] [varchar](50) NULL,
	[Tip] [varchar](1) NULL,
	[Hatýrlatma] [datetime] NULL,
 CONSTRAINT [PK_portfoyKontak] PRIMARY KEY CLUSTERED 
(
	[kurumKodu] ASC,
	[Tarih] ASC,
	[saat] ASC,
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_frmKazaTutanagiYazdir'
GO
COMMIT
GO
