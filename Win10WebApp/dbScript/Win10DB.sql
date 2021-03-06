USE [win10master]
GO
/****** Object:  ForeignKey [FK_BulkPurchaseForex_BulkPurchase]    Script Date: 02/11/2019 12:07:51 ******/
ALTER TABLE [dbo].[BulkPurchaseForexes] DROP CONSTRAINT [FK_BulkPurchaseForex_BulkPurchase]
GO
/****** Object:  ForeignKey [FK_BulkPurchasePayment_BulkPurchase]    Script Date: 02/11/2019 12:07:51 ******/
ALTER TABLE [dbo].[BulkPurchasePayments] DROP CONSTRAINT [FK_BulkPurchasePayment_BulkPurchase]
GO
/****** Object:  Table [dbo].[BulkPurchaseForexes]    Script Date: 02/11/2019 12:07:51 ******/
ALTER TABLE [dbo].[BulkPurchaseForexes] DROP CONSTRAINT [FK_BulkPurchaseForex_BulkPurchase]
GO
ALTER TABLE [dbo].[BulkPurchaseForexes] DROP CONSTRAINT [DF_BulkPurchaseForex_CreatedDate]
GO
ALTER TABLE [dbo].[BulkPurchaseForexes] DROP CONSTRAINT [DF_BulkPurchaseForex_IsDeleted]
GO
DROP TABLE [dbo].[BulkPurchaseForexes]
GO
/****** Object:  Table [dbo].[BulkPurchasePayments]    Script Date: 02/11/2019 12:07:51 ******/
ALTER TABLE [dbo].[BulkPurchasePayments] DROP CONSTRAINT [FK_BulkPurchasePayment_BulkPurchase]
GO
ALTER TABLE [dbo].[BulkPurchasePayments] DROP CONSTRAINT [DF_Table_1_CreatedDate1]
GO
ALTER TABLE [dbo].[BulkPurchasePayments] DROP CONSTRAINT [DF_BulkPurchasePayment_IsDeleted]
GO
DROP TABLE [dbo].[BulkPurchasePayments]
GO
/****** Object:  StoredProcedure [dbo].[GetCompanyRecords]    Script Date: 02/11/2019 12:07:52 ******/
DROP PROCEDURE [dbo].[GetCompanyRecords]
GO
/****** Object:  StoredProcedure [dbo].[sp_checklogin]    Script Date: 02/11/2019 12:07:52 ******/
DROP PROCEDURE [dbo].[sp_checklogin]
GO
/****** Object:  StoredProcedure [dbo].[spInsertAccounting]    Script Date: 02/11/2019 12:07:52 ******/
DROP PROCEDURE [dbo].[spInsertAccounting]
GO
/****** Object:  StoredProcedure [dbo].[spInsertAdditionalData]    Script Date: 02/11/2019 12:07:52 ******/
DROP PROCEDURE [dbo].[spInsertAdditionalData]
GO
/****** Object:  StoredProcedure [dbo].[spInsertPartyMaster]    Script Date: 02/11/2019 12:07:52 ******/
DROP PROCEDURE [dbo].[spInsertPartyMaster]
GO
/****** Object:  StoredProcedure [dbo].[spMergeAdditionalData]    Script Date: 02/11/2019 12:07:52 ******/
DROP PROCEDURE [dbo].[spMergeAdditionalData]
GO
/****** Object:  StoredProcedure [dbo].[spRegisterUser]    Script Date: 02/11/2019 12:07:52 ******/
DROP PROCEDURE [dbo].[spRegisterUser]
GO
/****** Object:  StoredProcedure [dbo].[spUpdateAccounting]    Script Date: 02/11/2019 12:07:52 ******/
DROP PROCEDURE [dbo].[spUpdateAccounting]
GO
/****** Object:  StoredProcedure [dbo].[spUpdatePartyMaster]    Script Date: 02/11/2019 12:07:52 ******/
DROP PROCEDURE [dbo].[spUpdatePartyMaster]
GO
/****** Object:  StoredProcedure [dbo].[spUpdateReceiveTrustMaster]    Script Date: 02/11/2019 12:07:52 ******/
DROP PROCEDURE [dbo].[spUpdateReceiveTrustMaster]
GO
/****** Object:  Table [dbo].[TCMasters]    Script Date: 02/11/2019 12:07:51 ******/
DROP TABLE [dbo].[TCMasters]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 02/11/2019 12:07:51 ******/
ALTER TABLE [dbo].[Users] DROP CONSTRAINT [DF_usermaster_cocode]
GO
ALTER TABLE [dbo].[Users] DROP CONSTRAINT [DF_usermaster_usercode]
GO
ALTER TABLE [dbo].[Users] DROP CONSTRAINT [DF_usermaster_username]
GO
ALTER TABLE [dbo].[Users] DROP CONSTRAINT [DF_usermaster_userdesignation]
GO
ALTER TABLE [dbo].[Users] DROP CONSTRAINT [DF_usermaster_useremail]
GO
ALTER TABLE [dbo].[Users] DROP CONSTRAINT [DF_usermaster_usermobile]
GO
ALTER TABLE [dbo].[Users] DROP CONSTRAINT [DF_usermaster_usertype]
GO
ALTER TABLE [dbo].[Users] DROP CONSTRAINT [DF_usermaster_rcode]
GO
DROP TABLE [dbo].[Users]
GO
/****** Object:  StoredProcedure [dbo].[spInsertReceiveTrustMaster]    Script Date: 02/11/2019 12:07:52 ******/
DROP PROCEDURE [dbo].[spInsertReceiveTrustMaster]
GO
/****** Object:  Table [dbo].[OtherMasters]    Script Date: 02/11/2019 12:07:51 ******/
ALTER TABLE [dbo].[OtherMasters] DROP CONSTRAINT [DF_OtherMaster_IsActive]
GO
DROP TABLE [dbo].[OtherMasters]
GO
/****** Object:  Table [dbo].[PartyMasters]    Script Date: 02/11/2019 12:07:51 ******/
ALTER TABLE [dbo].[PartyMasters] DROP CONSTRAINT [DF_PartyMasters_CreatedDate]
GO
DROP TABLE [dbo].[PartyMasters]
GO
/****** Object:  Table [dbo].[BulkPurchases]    Script Date: 02/11/2019 12:07:51 ******/
ALTER TABLE [dbo].[BulkPurchases] DROP CONSTRAINT [DF_BulkPurchase_CreatedDate]
GO
ALTER TABLE [dbo].[BulkPurchases] DROP CONSTRAINT [DF_BulkPurchase_IsDeleted]
GO
DROP TABLE [dbo].[BulkPurchases]
GO
/****** Object:  Table [dbo].[Companies]    Script Date: 02/11/2019 12:07:51 ******/
ALTER TABLE [dbo].[Companies] DROP CONSTRAINT [DF_comdb_cocode]
GO
ALTER TABLE [dbo].[Companies] DROP CONSTRAINT [DF_comdb_domain]
GO
ALTER TABLE [dbo].[Companies] DROP CONSTRAINT [DF_comdb_coname]
GO
ALTER TABLE [dbo].[Companies] DROP CONSTRAINT [DF_comdb_cosname]
GO
ALTER TABLE [dbo].[Companies] DROP CONSTRAINT [DF_comdb_coaddr1]
GO
ALTER TABLE [dbo].[Companies] DROP CONSTRAINT [DF_comdb_coaddr2]
GO
ALTER TABLE [dbo].[Companies] DROP CONSTRAINT [DF_comdb_coaddr3]
GO
ALTER TABLE [dbo].[Companies] DROP CONSTRAINT [DF_comdb_cocity]
GO
ALTER TABLE [dbo].[Companies] DROP CONSTRAINT [DF_comdb_costate]
GO
ALTER TABLE [dbo].[Companies] DROP CONSTRAINT [DF_comdb_copincode]
GO
ALTER TABLE [dbo].[Companies] DROP CONSTRAINT [DF_comdb_cotelno1]
GO
ALTER TABLE [dbo].[Companies] DROP CONSTRAINT [DF_comdb_cotelno2]
GO
ALTER TABLE [dbo].[Companies] DROP CONSTRAINT [DF_comdb_coemail]
GO
ALTER TABLE [dbo].[Companies] DROP CONSTRAINT [DF_comdb_coregno1]
GO
ALTER TABLE [dbo].[Companies] DROP CONSTRAINT [DF_comdb_coregno2]
GO
ALTER TABLE [dbo].[Companies] DROP CONSTRAINT [DF_comdb_coregno3]
GO
ALTER TABLE [dbo].[Companies] DROP CONSTRAINT [DF_comdb_coparams]
GO
ALTER TABLE [dbo].[Companies] DROP CONSTRAINT [DF_comdb_codbversion]
GO
ALTER TABLE [dbo].[Companies] DROP CONSTRAINT [DF_comdb_coystart]
GO
ALTER TABLE [dbo].[Companies] DROP CONSTRAINT [DF_comdb_codbquerystring]
GO
DROP TABLE [dbo].[Companies]
GO
/****** Object:  Table [dbo].[CountryMasters]    Script Date: 02/11/2019 12:07:51 ******/
DROP TABLE [dbo].[CountryMasters]
GO
/****** Object:  Table [dbo].[CurrencyMasters]    Script Date: 02/11/2019 12:07:51 ******/
DROP TABLE [dbo].[CurrencyMasters]
GO
/****** Object:  UserDefinedFunction [dbo].[DecryptString]    Script Date: 02/11/2019 12:07:52 ******/
DROP FUNCTION [dbo].[DecryptString]
GO
/****** Object:  UserDefinedFunction [dbo].[EncryptString]    Script Date: 02/11/2019 12:07:52 ******/
DROP FUNCTION [dbo].[EncryptString]
GO
/****** Object:  Table [dbo].[Accountings]    Script Date: 02/11/2019 12:07:50 ******/
ALTER TABLE [dbo].[Accountings] DROP CONSTRAINT [DF_Accountings_SubId]
GO
DROP TABLE [dbo].[Accountings]
GO
/****** Object:  Table [dbo].[AdditionalData]    Script Date: 02/11/2019 12:07:50 ******/
DROP TABLE [dbo].[AdditionalData]
GO
/****** Object:  Table [dbo].[AdditionalData]    Script Date: 02/11/2019 12:07:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdditionalData](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Table] [nvarchar](50) NULL,
	[Column] [nvarchar](50) NULL,
	[Value] [nvarchar](max) NULL,
	[Refrenceid] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_AdditionalData] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY] 
GO
SET IDENTITY_INSERT [dbo].[AdditionalData] ON
INSERT [dbo].[AdditionalData] ([id], [Table], [Column], [Value], [Refrenceid], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (1, N'anbjsn', N'anbjsn', N'anbjsn', N'12', CAST(0x0000A9CC00EA2D9E AS DateTime), CAST(0x0000A9CC00EA2D9E AS DateTime), 1)
INSERT [dbo].[AdditionalData] ([id], [Table], [Column], [Value], [Refrenceid], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (2, N'Accountings', N'BANKAC', N'asdsad', N'14', CAST(0x0000A9CC00EF206C AS DateTime), CAST(0x0000A9CC00EF206C AS DateTime), 0)
INSERT [dbo].[AdditionalData] ([id], [Table], [Column], [Value], [Refrenceid], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (3, N'Accountings', N'BRANCH', N'asd', N'14', CAST(0x0000A9CC00EF206C AS DateTime), CAST(0x0000A9CC00EF206C AS DateTime), 0)
INSERT [dbo].[AdditionalData] ([id], [Table], [Column], [Value], [Refrenceid], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (4, N'Accountings', N'CONTDTLS', N'sad', N'14', CAST(0x0000A9CC00EF206C AS DateTime), CAST(0x0000A9CC00EF206C AS DateTime), 0)
INSERT [dbo].[AdditionalData] ([id], [Table], [Column], [Value], [Refrenceid], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (5, N'Accountings', N'BRS', N'2019-01-01', N'14', CAST(0x0000A9CC00EF206C AS DateTime), CAST(0x0000A9CC00EF206C AS DateTime), 0)
INSERT [dbo].[AdditionalData] ([id], [Table], [Column], [Value], [Refrenceid], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (6, N'Accountings', N'CHQTEMP', N'1212121', N'14', CAST(0x0000A9CC00EF206C AS DateTime), CAST(0x0000A9CC00EF206C AS DateTime), 0)
INSERT [dbo].[AdditionalData] ([id], [Table], [Column], [Value], [Refrenceid], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (7, N'Accountings', N'CHQDT', N'1', N'14', CAST(0x0000A9CC00EF206C AS DateTime), CAST(0x0000A9CC00EF206C AS DateTime), 0)
INSERT [dbo].[AdditionalData] ([id], [Table], [Column], [Value], [Refrenceid], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (8, N'Accountings', N'RCPTCHQ', N'1', N'14', CAST(0x0000A9CC00EF206C AS DateTime), CAST(0x0000A9CC00EF206C AS DateTime), 0)
INSERT [dbo].[AdditionalData] ([id], [Table], [Column], [Value], [Refrenceid], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (9, N'Accountings', N'PDCHQNO', N'1', N'14', CAST(0x0000A9CC00EF206C AS DateTime), CAST(0x0000A9CC00EF206C AS DateTime), 0)
INSERT [dbo].[AdditionalData] ([id], [Table], [Column], [Value], [Refrenceid], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (10, N'Accountings', N'DTFORM', N'dd/mm/yyyy', N'14', CAST(0x0000A9CC00EF206C AS DateTime), CAST(0x0000A9CC00EF206C AS DateTime), 0)
INSERT [dbo].[AdditionalData] ([id], [Table], [Column], [Value], [Refrenceid], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (11, N'Accountings', N'BANKAC', N'asd', N'150', CAST(0x0000A9CC00F16D8C AS DateTime), CAST(0x0000A9CC00F16D8C AS DateTime), 0)
INSERT [dbo].[AdditionalData] ([id], [Table], [Column], [Value], [Refrenceid], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (12, N'Accountings', N'BRANCH', N'asd', N'150', CAST(0x0000A9CC00F16D8C AS DateTime), CAST(0x0000A9CC00F16D8C AS DateTime), 0)
INSERT [dbo].[AdditionalData] ([id], [Table], [Column], [Value], [Refrenceid], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (13, N'Accountings', N'CONTDTLS', N'asd', N'150', CAST(0x0000A9CC00F16D8C AS DateTime), CAST(0x0000A9CC00F16D8C AS DateTime), 0)
INSERT [dbo].[AdditionalData] ([id], [Table], [Column], [Value], [Refrenceid], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (14, N'Accountings', N'BRS', N'2019-01-17', N'150', CAST(0x0000A9CC00F16D8C AS DateTime), CAST(0x0000A9CC00F16D8C AS DateTime), 0)
INSERT [dbo].[AdditionalData] ([id], [Table], [Column], [Value], [Refrenceid], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (15, N'Accountings', N'CHQTEMP', N'1121', N'150', CAST(0x0000A9CC00F16D8C AS DateTime), CAST(0x0000A9CC00F16D8C AS DateTime), 0)
INSERT [dbo].[AdditionalData] ([id], [Table], [Column], [Value], [Refrenceid], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (16, N'Accountings', N'CHQDT', N'2', N'150', CAST(0x0000A9CC00F16D8C AS DateTime), CAST(0x0000A9CC00F16D8C AS DateTime), 0)
INSERT [dbo].[AdditionalData] ([id], [Table], [Column], [Value], [Refrenceid], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (17, N'Accountings', N'RCPTCHQ', N'1', N'150', CAST(0x0000A9CC00F16D8C AS DateTime), CAST(0x0000A9CC00F16D8C AS DateTime), 0)
INSERT [dbo].[AdditionalData] ([id], [Table], [Column], [Value], [Refrenceid], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (18, N'Accountings', N'PDCHQNO', N'1', N'150', CAST(0x0000A9CC00F16D8C AS DateTime), CAST(0x0000A9CC00F16D8C AS DateTime), 0)
INSERT [dbo].[AdditionalData] ([id], [Table], [Column], [Value], [Refrenceid], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (19, N'Accountings', N'DTFORM', N'dd/mm/yyyy', N'150', CAST(0x0000A9CC00F16D8C AS DateTime), CAST(0x0000A9CC00F16D8C AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[AdditionalData] OFF
/****** Object:  Table [dbo].[Accountings]    Script Date: 02/11/2019 12:07:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accountings](
	[id] [int] NOT NULL,
	[SubId] [int] NOT NULL CONSTRAINT [DF_Accountings_SubId]  DEFAULT ((0)),
	[Desc] [nvarchar](150) NULL,
	[Type] [nvarchar](50) NULL,
	[HSNSAC] [nvarchar](50) NULL,
	[GrpUnder] [nvarchar](50) NULL,
	[Block] [nvarchar](5) NULL,
	[Balance] [nvarchar](50) NULL,
	[BalancePost] [nvarchar](50) NULL,
	[NOF] [nvarchar](5) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_Accountings] PRIMARY KEY CLUSTERED 
(
	[id] ASC,
	[SubId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Accountings] ([id], [SubId], [Desc], [Type], [HSNSAC], [GrpUnder], [Block], [Balance], [BalancePost], [NOF], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (1, 0, N'Test1', N'Title', NULL, NULL, N'N', N'1000', N'Dr', N'N', NULL, NULL, 0)
INSERT [dbo].[Accountings] ([id], [SubId], [Desc], [Type], [HSNSAC], [GrpUnder], [Block], [Balance], [BalancePost], [NOF], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (1, 1, N'test', N'Normal', N'asa', N'Test1', N'Y', N'21121', N'Cr', N'Y', CAST(0x0000A9BE00ADB20D AS DateTime), CAST(0x0000A9BE00ADB20D AS DateTime), 1)
INSERT [dbo].[Accountings] ([id], [SubId], [Desc], [Type], [HSNSAC], [GrpUnder], [Block], [Balance], [BalancePost], [NOF], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (1, 2, N'asd', N'Normal', N'asd', N'Test1', N'N', N'25252', N'Dr', N'Y', CAST(0x0000A9BE00AF5835 AS DateTime), CAST(0x0000A9BE00AF5835 AS DateTime), 1)
INSERT [dbo].[Accountings] ([id], [SubId], [Desc], [Type], [HSNSAC], [GrpUnder], [Block], [Balance], [BalancePost], [NOF], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (1, 3, N'asdasdvasdvasdcas', N'Normal', N'assdcv', N'Test1sdvsad', N'Y', N'2525', N'Dr', N'Y', CAST(0x0000A9BE00AF8F05 AS DateTime), CAST(0x0000A9BE00AF8F05 AS DateTime), 1)
INSERT [dbo].[Accountings] ([id], [SubId], [Desc], [Type], [HSNSAC], [GrpUnder], [Block], [Balance], [BalancePost], [NOF], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (1, 4, N'asd', N'Normal', N'3232', N'Test1', N'Y', N'12121', N'Dr', N'Y', CAST(0x0000A9BE00B07E30 AS DateTime), CAST(0x0000A9BE00B07E30 AS DateTime), 1)
INSERT [dbo].[Accountings] ([id], [SubId], [Desc], [Type], [HSNSAC], [GrpUnder], [Block], [Balance], [BalancePost], [NOF], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (1, 5, N'asdasdvasdvcasdfvasdvasdvcsd', N'Cash', N'asd', N'test', N'Y', N'2121', N'Dr', N'Y', CAST(0x0000A9BE00B5C4A6 AS DateTime), CAST(0x0000A9BE00B5C4A6 AS DateTime), 1)
INSERT [dbo].[Accountings] ([id], [SubId], [Desc], [Type], [HSNSAC], [GrpUnder], [Block], [Balance], [BalancePost], [NOF], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (1, 6, N'yukfyuk', N'Cash', N'jhkfhj', N'Test1sdvsad', N'Y', N'3636', N'Cr', N'Y', CAST(0x0000A9BE00B6C8AB AS DateTime), CAST(0x0000A9BE00B6C8AB AS DateTime), 1)
INSERT [dbo].[Accountings] ([id], [SubId], [Desc], [Type], [HSNSAC], [GrpUnder], [Block], [Balance], [BalancePost], [NOF], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (1, 7, N'ghmfdgh', N'Normal', N'hmfgh', N'adfv', N'Y', N'23333', N'Dr', N'Y', CAST(0x0000A9BE00B7066E AS DateTime), CAST(0x0000A9BE00B7066E AS DateTime), 1)
INSERT [dbo].[Accountings] ([id], [SubId], [Desc], [Type], [HSNSAC], [GrpUnder], [Block], [Balance], [BalancePost], [NOF], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (1, 8, N'ghmfdghasdvasdvasdvdsvsdv', N'Normal', N'hmfgh', N'adfv', N'Y', N'23333', N'Dr', N'Y', CAST(0x0000A9BE00B73B99 AS DateTime), CAST(0x0000A9BE00B73B99 AS DateTime), 1)
INSERT [dbo].[Accountings] ([id], [SubId], [Desc], [Type], [HSNSAC], [GrpUnder], [Block], [Balance], [BalancePost], [NOF], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (1, 9, N'adfsgvasdvg', N'Normal', N'asdvgasd', N'test', N'Y', N'1231', N'Dr', N'Y', CAST(0x0000A9BE00B78DDB AS DateTime), CAST(0x0000A9BE00B78DDB AS DateTime), 1)
INSERT [dbo].[Accountings] ([id], [SubId], [Desc], [Type], [HSNSAC], [GrpUnder], [Block], [Balance], [BalancePost], [NOF], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (1, 10, N'Kuildee', N'Normal', N'asdvasd', N'test', N'Y', N'36363', N'Cr', N'Y', CAST(0x0000A9BE00B9A130 AS DateTime), CAST(0x0000A9BE00B9A130 AS DateTime), 1)
INSERT [dbo].[Accountings] ([id], [SubId], [Desc], [Type], [HSNSAC], [GrpUnder], [Block], [Balance], [BalancePost], [NOF], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (1, 11, N'asdasdvasdvasdcas', N'Normal', N'assdcv', N'Test1sdvsad', N'Y', N'2525', N'Dr', N'Y', CAST(0x0000A9D300C5A686 AS DateTime), CAST(0x0000A9D300C5A686 AS DateTime), 1)
INSERT [dbo].[Accountings] ([id], [SubId], [Desc], [Type], [HSNSAC], [GrpUnder], [Block], [Balance], [BalancePost], [NOF], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (1, 12, N'1234', N'Normal', N'assdcv', N'Test1sdvsad', N'Y', N'2525', N'Dr', N'Y', CAST(0x0000A9D300C5BDA8 AS DateTime), CAST(0x0000A9D300C5BDA8 AS DateTime), 1)
INSERT [dbo].[Accountings] ([id], [SubId], [Desc], [Type], [HSNSAC], [GrpUnder], [Block], [Balance], [BalancePost], [NOF], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (2, 0, N'Test2', N'Normal', NULL, NULL, N'N', N'0', N'Cr', N'N', NULL, NULL, NULL)
INSERT [dbo].[Accountings] ([id], [SubId], [Desc], [Type], [HSNSAC], [GrpUnder], [Block], [Balance], [BalancePost], [NOF], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (2, 1, N'Test3', N'Normal', N'', NULL, N'N', N'0', N'Dr', N'N', NULL, NULL, NULL)
INSERT [dbo].[Accountings] ([id], [SubId], [Desc], [Type], [HSNSAC], [GrpUnder], [Block], [Balance], [BalancePost], [NOF], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (2, 2, N'asdvca', N'Normal', N'1251', N'test', N'Y', N'212121', N'Dr', N'Y', CAST(0x0000A9BE00B0180B AS DateTime), CAST(0x0000A9BE00B0180B AS DateTime), 1)
INSERT [dbo].[Accountings] ([id], [SubId], [Desc], [Type], [HSNSAC], [GrpUnder], [Block], [Balance], [BalancePost], [NOF], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (2, 3, N'dfbdf', N'Normal', N'dfbdf', N'Test1sdvsad', N'Y', N'1212121', N'Cr', N'Y', CAST(0x0000A9BE00B65DBD AS DateTime), CAST(0x0000A9BE00B65DBD AS DateTime), 1)
INSERT [dbo].[Accountings] ([id], [SubId], [Desc], [Type], [HSNSAC], [GrpUnder], [Block], [Balance], [BalancePost], [NOF], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (3, 0, N'test', N'Title', N'asa', N'Test1', N'Y', N'1000.0', N'Dr', N'Y', CAST(0x0000A9BE00649DA5 AS DateTime), CAST(0x0000A9BE00649DA5 AS DateTime), 1)
INSERT [dbo].[Accountings] ([id], [SubId], [Desc], [Type], [HSNSAC], [GrpUnder], [Block], [Balance], [BalancePost], [NOF], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (4, 0, N'as', N'Normal', N'asc', N'Test1', N'Y', N'122', N'Dr', N'Y', CAST(0x0000A9BE00783C1C AS DateTime), CAST(0x0000A9BE00783C1C AS DateTime), 1)
INSERT [dbo].[Accountings] ([id], [SubId], [Desc], [Type], [HSNSAC], [GrpUnder], [Block], [Balance], [BalancePost], [NOF], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (5, 0, N'Test1sdvsad', N'Title', N'asdvcas', N'test', N'N', N'1000', N'Dr', N'N', CAST(0x0000A9BE00AE241A AS DateTime), CAST(0x0000A9BE00AE241A AS DateTime), 1)
INSERT [dbo].[Accountings] ([id], [SubId], [Desc], [Type], [HSNSAC], [GrpUnder], [Block], [Balance], [BalancePost], [NOF], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (6, 0, N'adfv', N'Title', N'asdv', N'Test1', N'Y', N'12121', N'Dr', N'Y', CAST(0x0000A9BE00B150EC AS DateTime), CAST(0x0000A9BE00B150EC AS DateTime), 1)
INSERT [dbo].[Accountings] ([id], [SubId], [Desc], [Type], [HSNSAC], [GrpUnder], [Block], [Balance], [BalancePost], [NOF], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (7, 0, N'asdv', N'Title', N'dsv', N'Test1', N'N', N'111521', N'Dr', N'Y', CAST(0x0000A9BE00B1AA73 AS DateTime), CAST(0x0000A9BE00B1AA73 AS DateTime), 1)
INSERT [dbo].[Accountings] ([id], [SubId], [Desc], [Type], [HSNSAC], [GrpUnder], [Block], [Balance], [BalancePost], [NOF], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (8, 0, N'asd', N'Cash', N'asd', N'test', N'Y', N'2121', N'Dr', N'Y', CAST(0x0000A9BE00B432BF AS DateTime), CAST(0x0000A9BE00B432BF AS DateTime), 1)
INSERT [dbo].[Accountings] ([id], [SubId], [Desc], [Type], [HSNSAC], [GrpUnder], [Block], [Balance], [BalancePost], [NOF], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (9, 0, N'dfb', N'Cash', N'sdv', N'Test1', N'Y', N'1212', N'Dr', N'N', CAST(0x0000A9CC00E698D8 AS DateTime), CAST(0x0000A9CC00E698D8 AS DateTime), 1)
INSERT [dbo].[Accountings] ([id], [SubId], [Desc], [Type], [HSNSAC], [GrpUnder], [Block], [Balance], [BalancePost], [NOF], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (10, 0, N'dfb', N'Cash', N'sdv', N'Test1', N'Y', N'1212', N'Dr', N'N', CAST(0x0000A9CC00E6CB3D AS DateTime), CAST(0x0000A9CC00E6CB3D AS DateTime), 1)
INSERT [dbo].[Accountings] ([id], [SubId], [Desc], [Type], [HSNSAC], [GrpUnder], [Block], [Balance], [BalancePost], [NOF], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (11, 0, N'ghj', N'Normal', N'ads', N'Test1', N'Y', N'1515', N'Dr', N'Y', CAST(0x0000A9CC00E8BE32 AS DateTime), CAST(0x0000A9CC00E8BE32 AS DateTime), 1)
INSERT [dbo].[Accountings] ([id], [SubId], [Desc], [Type], [HSNSAC], [GrpUnder], [Block], [Balance], [BalancePost], [NOF], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (12, 0, N'dfvasd', N'Normal', N'sadvc', N'Test1', N'Y', N'121', N'Cr', N'Y', CAST(0x0000A9CC00EA1A63 AS DateTime), CAST(0x0000A9CC00EA1A63 AS DateTime), 1)
INSERT [dbo].[Accountings] ([id], [SubId], [Desc], [Type], [HSNSAC], [GrpUnder], [Block], [Balance], [BalancePost], [NOF], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (13, 0, N'asd', N'Normal', N'sdasd', N'Test1', N'Y', N'1212121', N'Dr', N'Y', CAST(0x0000A9CC00EEB625 AS DateTime), CAST(0x0000A9CC00EEB625 AS DateTime), 1)
INSERT [dbo].[Accountings] ([id], [SubId], [Desc], [Type], [HSNSAC], [GrpUnder], [Block], [Balance], [BalancePost], [NOF], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (14, 0, N'asdsdvasd', N'Bank', N'sdasd', N'Test1', N'Y', N'1212121', N'Dr', N'Y', CAST(0x0000A9CC00EF1E70 AS DateTime), CAST(0x0000A9CC00EF1E70 AS DateTime), 1)
INSERT [dbo].[Accountings] ([id], [SubId], [Desc], [Type], [HSNSAC], [GrpUnder], [Block], [Balance], [BalancePost], [NOF], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (15, 0, N'fghg', N'Bank', N'asd', N'test', N'N', N'25121', N'Dr', N'Y', CAST(0x0000A9CC00F16ABF AS DateTime), CAST(0x0000A9CC00F16ABF AS DateTime), 1)
/****** Object:  UserDefinedFunction [dbo].[EncryptString]    Script Date: 02/11/2019 12:07:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  function [dbo].[EncryptString]
(
@passphrase varchar(50),
@text varchar(100)
)
Returns
varbinary(max)
as
begin

return EncryptByPassphrase(@passphrase,@text);

end
GO
/****** Object:  UserDefinedFunction [dbo].[DecryptString]    Script Date: 02/11/2019 12:07:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE function [dbo].[DecryptString]
(
@passphrase varchar(50),
@encryptedText varbinary(max)
)
Returns
varchar(100)
as
begin

return CONVERT(varchar(100), DecryptByPassphrase(@passphrase,@encryptedText));

end
GO
/****** Object:  Table [dbo].[CurrencyMasters]    Script Date: 02/11/2019 12:07:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CurrencyMasters](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CurrencyCode] [nvarchar](5) NOT NULL,
	[CurrencyName] [nvarchar](50) NULL,
	[AFType] [nvarchar](50) NULL,
	[RBI] [nvarchar](50) NULL,
	[Rate] [int] NULL,
	[Position] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_CurrencyMasters] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[CurrencyCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CurrencyMasters] ON
INSERT [dbo].[CurrencyMasters] ([Id], [CurrencyCode], [CurrencyName], [AFType], [RBI], [Rate], [Position], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (1, N'USD', N'US Dollar', N'test', N'test', 1, 99, CAST(0x0000A9BE013A9F7D AS DateTime), CAST(0x0000A9BE013A9FFF AS DateTime), 0)
INSERT [dbo].[CurrencyMasters] ([Id], [CurrencyCode], [CurrencyName], [AFType], [RBI], [Rate], [Position], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (2, N'INR', N'Indian Rupee', NULL, NULL, 1, 99, CAST(0x0000A9BE013AD101 AS DateTime), CAST(0x0000A9BE013AD101 AS DateTime), 0)
INSERT [dbo].[CurrencyMasters] ([Id], [CurrencyCode], [CurrencyName], [AFType], [RBI], [Rate], [Position], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (3, N'BHD', N'Bahrain Dinar', NULL, NULL, 1, 95, CAST(0x0000A9BE013B4343 AS DateTime), CAST(0x0000A9BE013B43C5 AS DateTime), 0)
INSERT [dbo].[CurrencyMasters] ([Id], [CurrencyCode], [CurrencyName], [AFType], [RBI], [Rate], [Position], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (4, N'CAD', N'Canada Dollar', NULL, NULL, 1, 95, CAST(0x0000A9BE013B8950 AS DateTime), CAST(0x0000A9BE013B89F0 AS DateTime), 0)
INSERT [dbo].[CurrencyMasters] ([Id], [CurrencyCode], [CurrencyName], [AFType], [RBI], [Rate], [Position], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (5, N'GBP', N'Pounds', N'asd', N'asc', 1, 99, CAST(0x0000A9C200FCE824 AS DateTime), CAST(0x0000A9C200FCE824 AS DateTime), 0)
INSERT [dbo].[CurrencyMasters] ([Id], [CurrencyCode], [CurrencyName], [AFType], [RBI], [Rate], [Position], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (8, N'qqq', N'qqq', N'qq', N'qq', 12, 12, CAST(0x0000A9D400D4E39F AS DateTime), CAST(0x0000A9D400D4E39F AS DateTime), 0)
INSERT [dbo].[CurrencyMasters] ([Id], [CurrencyCode], [CurrencyName], [AFType], [RBI], [Rate], [Position], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (9, N'abcd', N'abcd', N'aa', N'aa', 11, 11, CAST(0x0000A9D400E9D66F AS DateTime), CAST(0x0000A9D400E9D66F AS DateTime), 0)
INSERT [dbo].[CurrencyMasters] ([Id], [CurrencyCode], [CurrencyName], [AFType], [RBI], [Rate], [Position], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (10, N'WW', N'WW', N'WW', N'WW', 11, 11, CAST(0x0000A9D400F077DB AS DateTime), CAST(0x0000A9D400F077DB AS DateTime), 0)
INSERT [dbo].[CurrencyMasters] ([Id], [CurrencyCode], [CurrencyName], [AFType], [RBI], [Rate], [Position], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (11, N'jj', N'jj', N'jj', N'jj', 11, 11, CAST(0x0000A9D400F3F171 AS DateTime), CAST(0x0000A9D400F3F1C0 AS DateTime), 0)
INSERT [dbo].[CurrencyMasters] ([Id], [CurrencyCode], [CurrencyName], [AFType], [RBI], [Rate], [Position], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (13, N'www', N'www', N'w', N'w', 11, 11, CAST(0x0000A9D40133FFD7 AS DateTime), CAST(0x0000A9D40133FFD7 AS DateTime), 0)
INSERT [dbo].[CurrencyMasters] ([Id], [CurrencyCode], [CurrencyName], [AFType], [RBI], [Rate], [Position], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (15, N'H', N'H', N'H', N'H', 1, 1, CAST(0x0000A9D50115D359 AS DateTime), CAST(0x0000A9D50115D359 AS DateTime), 0)
INSERT [dbo].[CurrencyMasters] ([Id], [CurrencyCode], [CurrencyName], [AFType], [RBI], [Rate], [Position], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (16, N'H1', N'H1', N'H1', N'H1', 1, 1, CAST(0x0000A9D50115E327 AS DateTime), CAST(0x0000A9D50115E327 AS DateTime), 0)
INSERT [dbo].[CurrencyMasters] ([Id], [CurrencyCode], [CurrencyName], [AFType], [RBI], [Rate], [Position], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (17, N'abcd1', N'abcd1', N'aa', N'aa', 11, 11, CAST(0x0000A9D6013AAE82 AS DateTime), CAST(0x0000A9D6013AAE82 AS DateTime), 0)
INSERT [dbo].[CurrencyMasters] ([Id], [CurrencyCode], [CurrencyName], [AFType], [RBI], [Rate], [Position], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (18, N'AA111', N'AA111', N'a', N'a', 1, 1, CAST(0x0000A9D6015349EA AS DateTime), CAST(0x0000A9D6015349EA AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[CurrencyMasters] OFF
/****** Object:  Table [dbo].[CountryMasters]    Script Date: 02/11/2019 12:07:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CountryMasters](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[CountryCode] [nvarchar](5) NULL,
	[CountryName] [nvarchar](50) NULL,
	[Nationality] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_CountryMasters] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[CountryCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CountryMasters] ON
INSERT [dbo].[CountryMasters] ([id], [CountryCode], [CountryName], [Nationality], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (1, N'US', N'United States', N'American', CAST(0x0000A9C00152D97B AS DateTime), CAST(0x0000A9C00152D97B AS DateTime), 0)
INSERT [dbo].[CountryMasters] ([id], [CountryCode], [CountryName], [Nationality], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (2, N'aaa', N'aaaa', N'aaaa', CAST(0x0000A9D201222421 AS DateTime), CAST(0x0000A9D201222421 AS DateTime), 0)
INSERT [dbo].[CountryMasters] ([id], [CountryCode], [CountryName], [Nationality], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (3, N'qq', N'qq', N'indian', CAST(0x0000A9D4010DF4A8 AS DateTime), CAST(0x0000A9D4010DF4A8 AS DateTime), 0)
INSERT [dbo].[CountryMasters] ([id], [CountryCode], [CountryName], [Nationality], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (4, N'qq1', N'qq1', N'indian', CAST(0x0000A9D4010E040B AS DateTime), CAST(0x0000A9D4010E040B AS DateTime), 0)
INSERT [dbo].[CountryMasters] ([id], [CountryCode], [CountryName], [Nationality], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (5, N'aa', N'aa', N'aa', CAST(0x0000A9DF0134C4C6 AS DateTime), CAST(0x0000A9DF0134C4C6 AS DateTime), 0)
INSERT [dbo].[CountryMasters] ([id], [CountryCode], [CountryName], [Nationality], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (6, N'aa1', N'aa1', N'aa1', CAST(0x0000A9DF0134D780 AS DateTime), CAST(0x0000A9DF0134D780 AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[CountryMasters] OFF
/****** Object:  Table [dbo].[Companies]    Script Date: 02/11/2019 12:07:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Companies](
	[cocode] [char](6) NOT NULL CONSTRAINT [DF_comdb_cocode]  DEFAULT (''),
	[domain] [varchar](256) NOT NULL CONSTRAINT [DF_comdb_domain]  DEFAULT (''),
	[coname] [varchar](256) NOT NULL CONSTRAINT [DF_comdb_coname]  DEFAULT (''),
	[cosname] [varchar](256) NOT NULL CONSTRAINT [DF_comdb_cosname]  DEFAULT (''),
	[coaddr1] [varchar](256) NOT NULL CONSTRAINT [DF_comdb_coaddr1]  DEFAULT (''),
	[coaddr2] [varchar](256) NOT NULL CONSTRAINT [DF_comdb_coaddr2]  DEFAULT (''),
	[coaddr3] [varchar](256) NOT NULL CONSTRAINT [DF_comdb_coaddr3]  DEFAULT (''),
	[cocity] [varchar](256) NOT NULL CONSTRAINT [DF_comdb_cocity]  DEFAULT (''),
	[costate] [varchar](256) NOT NULL CONSTRAINT [DF_comdb_costate]  DEFAULT (''),
	[copincode] [varchar](256) NOT NULL CONSTRAINT [DF_comdb_copincode]  DEFAULT (''),
	[cotelno1] [varchar](256) NOT NULL CONSTRAINT [DF_comdb_cotelno1]  DEFAULT (''),
	[cotelno2] [varchar](256) NOT NULL CONSTRAINT [DF_comdb_cotelno2]  DEFAULT (''),
	[coemail] [varchar](256) NOT NULL CONSTRAINT [DF_comdb_coemail]  DEFAULT (''),
	[coregno1] [varchar](256) NOT NULL CONSTRAINT [DF_comdb_coregno1]  DEFAULT (''),
	[coregno2] [varchar](256) NOT NULL CONSTRAINT [DF_comdb_coregno2]  DEFAULT (''),
	[coregno3] [varchar](256) NOT NULL CONSTRAINT [DF_comdb_coregno3]  DEFAULT (''),
	[coparams] [varchar](256) NOT NULL CONSTRAINT [DF_comdb_coparams]  DEFAULT (''),
	[codbversion] [varchar](256) NOT NULL CONSTRAINT [DF_comdb_codbversion]  DEFAULT (''),
	[coystart] [varchar](256) NOT NULL CONSTRAINT [DF_comdb_coystart]  DEFAULT (''),
	[codbquerystring] [nvarchar](max) NOT NULL CONSTRAINT [DF_comdb_codbquerystring]  DEFAULT (''),
 CONSTRAINT [PK_comdb] PRIMARY KEY CLUSTERED 
(
	[cocode] ASC,
	[coystart] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Companies] ([cocode], [domain], [coname], [cosname], [coaddr1], [coaddr2], [coaddr3], [cocity], [costate], [copincode], [cotelno1], [cotelno2], [coemail], [coregno1], [coregno2], [coregno3], [coparams], [codbversion], [coystart], [codbquerystring]) VALUES (N'X00100', N'abc', N'WIN-10 FOREX PVT. LTD.', N'DEMO', N'A1', N'A2', N'A3', N'MUMBAI', N'MAHARASHTRA', N'400066', N'0251 426331', N'+919820425678', N'jeeten.thakkar@win10-tech.in', N'27AAZPT2990B1Z2', N'AAZPT2990B', N'FE.MUM 1234/200', N'Y', N'1', N'2017', N'Data Source=GOLDSTEIN; Initial Catalog=win10t17; Integrated Security=True;')
INSERT [dbo].[Companies] ([cocode], [domain], [coname], [cosname], [coaddr1], [coaddr2], [coaddr3], [cocity], [costate], [copincode], [cotelno1], [cotelno2], [coemail], [coregno1], [coregno2], [coregno3], [coparams], [codbversion], [coystart], [codbquerystring]) VALUES (N'X00100', N'abc', N'WIN-10 FOREX PVT. LTD.', N'DEMO', N'A1', N'A2', N'A3', N'MUMBAI', N'MAHARASHTRA', N'400066', N'0251 426331', N'+919820425678', N'jeeten.thakkar@win10-tech.in', N'27AAZPT2990B1Z2', N'AAZPT2990B', N'FE.MUM 1234/200', N'Y', N'1', N'2018', N'Data Source=GOLDSTEIN; Initial Catalog=win10t17; Integrated Security=True;')
INSERT [dbo].[Companies] ([cocode], [domain], [coname], [cosname], [coaddr1], [coaddr2], [coaddr3], [cocity], [costate], [copincode], [cotelno1], [cotelno2], [coemail], [coregno1], [coregno2], [coregno3], [coparams], [codbversion], [coystart], [codbquerystring]) VALUES (N'X00101', N'abc', N'WIN-10 FOREX PVT. LTD.', N'DEMO', N'A1', N'A2', N'A3', N'MUMBAI', N'MAHARASHTRA', N'400066', N'0251 426331', N'+919820425678', N'jeeten.thakkar@win10-tech.in', N'27AAZPT2990B1Z2', N'AAZPT2990B', N'FE.MUM 1234/200', N'Y', N'1', N'2018', N'Data Source=GOLDSTEIN; Initial Catalog=win10t17; Integrated Security=True;')
/****** Object:  Table [dbo].[BulkPurchases]    Script Date: 02/11/2019 12:07:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BulkPurchases](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FFMCAD] [int] NULL,
	[DeliveryIn] [int] NULL,
	[Date] [datetime] NULL,
	[CostCentre] [int] NULL,
	[Quota] [int] NULL,
	[Broker] [int] NULL,
	[SubBroker] [int] NULL,
	[Reference] [nvarchar](250) NULL,
	[Remark] [nvarchar](500) NULL,
	[GrossAmt] [decimal](29, 4) NULL,
	[FxGST] [decimal](29, 4) NULL,
	[TCCardChrg] [decimal](29, 4) NULL,
	[SrvChrg] [int] NULL,
	[SrvChrgAmt] [decimal](29, 4) NULL,
	[STXPercentage] [decimal](29, 4) NULL,
	[STXAmt] [decimal](29, 4) NULL,
	[ChargesTax] [int] NULL,
	[RoundOff] [decimal](29, 4) NULL,
	[NetPayable] [decimal](29, 4) NULL,
	[TotalPendingAmount] [decimal](29, 4) NULL,
	[BalanceAmount] [decimal](29, 4) NULL,
	[CreatedDate] [datetime] NULL CONSTRAINT [DF_BulkPurchase_CreatedDate]  DEFAULT (getdate()),
	[UpdatedDate] [datetime] NULL,
	[IsDeleted] [bit] NULL CONSTRAINT [DF_BulkPurchase_IsDeleted]  DEFAULT ((0)),
 CONSTRAINT [PK_BulkPurchase] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BulkPurchases] ON
INSERT [dbo].[BulkPurchases] ([Id], [FFMCAD], [DeliveryIn], [Date], [CostCentre], [Quota], [Broker], [SubBroker], [Reference], [Remark], [GrossAmt], [FxGST], [TCCardChrg], [SrvChrg], [SrvChrgAmt], [STXPercentage], [STXAmt], [ChargesTax], [RoundOff], [NetPayable], [TotalPendingAmount], [BalanceAmount], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (1, 1, 62, CAST(0x0000A9EA00000000 AS DateTime), 3, 66, 2, 2, N'test', N'test', NULL, CAST(1.0000 AS Decimal(29, 4)), CAST(1.0000 AS Decimal(29, 4)), 70, CAST(2.0000 AS Decimal(29, 4)), CAST(1.0000 AS Decimal(29, 4)), CAST(2.0000 AS Decimal(29, 4)), 70, CAST(2.0000 AS Decimal(29, 4)), NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[BulkPurchases] ([Id], [FFMCAD], [DeliveryIn], [Date], [CostCentre], [Quota], [Broker], [SubBroker], [Reference], [Remark], [GrossAmt], [FxGST], [TCCardChrg], [SrvChrg], [SrvChrgAmt], [STXPercentage], [STXAmt], [ChargesTax], [RoundOff], [NetPayable], [TotalPendingAmount], [BalanceAmount], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (2, 1, 63, CAST(0x0000A9EA00000000 AS DateTime), 19, 66, 2, 3, N'test', N'test', NULL, NULL, NULL, 70, NULL, NULL, NULL, 70, NULL, NULL, NULL, NULL, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[BulkPurchases] OFF
/****** Object:  Table [dbo].[PartyMasters]    Script Date: 02/11/2019 12:07:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartyMasters](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](15) NULL,
	[Name] [nvarchar](100) NULL,
	[Address1] [nvarchar](100) NULL,
	[Address2] [nvarchar](100) NULL,
	[Address3] [nvarchar](100) NULL,
	[City] [nvarchar](50) NULL,
	[Pincode] [nvarchar](10) NULL,
	[State] [nvarchar](50) NULL,
	[Country] [nvarchar](50) NULL,
	[Peraddress1] [nvarchar](100) NULL,
	[Peraddress2] [nvarchar](100) NULL,
	[Peraddress3] [nvarchar](100) NULL,
	[Percity] [nvarchar](50) NULL,
	[Perpincode] [nvarchar](10) NULL,
	[Perstate] [nvarchar](50) NULL,
	[Percountry] [nvarchar](50) NULL,
	[Nationality] [nvarchar](50) NULL,
	[Residency] [nvarchar](10) NULL,
	[Contactperson1] [nvarchar](50) NULL,
	[Tel1] [nvarchar](12) NULL,
	[Email1] [nvarchar](50) NULL,
	[Contactperson2] [nvarchar](50) NULL,
	[Tel2] [nvarchar](12) NULL,
	[Email2] [nvarchar](50) NULL,
	[Primaryid] [nvarchar](50) NULL,
	[Panno] [nvarchar](10) NULL,
	[Aadharno] [nvarchar](16) NULL,
	[Gst] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL CONSTRAINT [DF_PartyMasters_CreatedDate]  DEFAULT (getdate()),
	[UpdatedDate] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[Mobile] [nvarchar](20) NULL,
	[OpeningBalance] [nvarchar](20) NULL,
	[BalancePost] [nvarchar](20) NULL,
	[AddressInBill] [nvarchar](200) NULL,
	[Lock] [nvarchar](20) NULL,
	[Category] [nvarchar](20) NULL,
	[Broker] [nvarchar](20) NULL,
	[Location] [nvarchar](50) NULL,
	[CollectGST] [nvarchar](20) NULL,
	[RBILICNo] [nvarchar](20) NULL,
	[RBIExp] [datetime] NULL,
	[ControlAC] [nvarchar](20) NULL,
 CONSTRAINT [PK_PartiesMaster] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[PartyMasters] ON
INSERT [dbo].[PartyMasters] ([Id], [Type], [Name], [Address1], [Address2], [Address3], [City], [Pincode], [State], [Country], [Peraddress1], [Peraddress2], [Peraddress3], [Percity], [Perpincode], [Perstate], [Percountry], [Nationality], [Residency], [Contactperson1], [Tel1], [Email1], [Contactperson2], [Tel2], [Email2], [Primaryid], [Panno], [Aadharno], [Gst], [CreatedDate], [UpdatedDate], [IsDeleted], [Mobile], [OpeningBalance], [BalancePost], [AddressInBill], [Lock], [Category], [Broker], [Location], [CollectGST], [RBILICNo], [RBIExp], [ControlAC]) VALUES (1, N'F', N'Franchiseekd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0x0000A9EC000AF506 AS DateTime), NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PartyMasters] ([Id], [Type], [Name], [Address1], [Address2], [Address3], [City], [Pincode], [State], [Country], [Peraddress1], [Peraddress2], [Peraddress3], [Percity], [Perpincode], [Perstate], [Percountry], [Nationality], [Residency], [Contactperson1], [Tel1], [Email1], [Contactperson2], [Tel2], [Email2], [Primaryid], [Panno], [Aadharno], [Gst], [CreatedDate], [UpdatedDate], [IsDeleted], [Mobile], [OpeningBalance], [BalancePost], [AddressInBill], [Lock], [Category], [Broker], [Location], [CollectGST], [RBILICNo], [RBIExp], [ControlAC]) VALUES (2, N'R', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0x0000A9EC000B59DF AS DateTime), NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, N'Broker1', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PartyMasters] ([Id], [Type], [Name], [Address1], [Address2], [Address3], [City], [Pincode], [State], [Country], [Peraddress1], [Peraddress2], [Peraddress3], [Percity], [Perpincode], [Perstate], [Percountry], [Nationality], [Residency], [Contactperson1], [Tel1], [Email1], [Contactperson2], [Tel2], [Email2], [Primaryid], [Panno], [Aadharno], [Gst], [CreatedDate], [UpdatedDate], [IsDeleted], [Mobile], [OpeningBalance], [BalancePost], [AddressInBill], [Lock], [Category], [Broker], [Location], [CollectGST], [RBILICNo], [RBIExp], [ControlAC]) VALUES (3, N'R', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0x0000A9EC000B7E96 AS DateTime), NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, N'Broker2', NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[PartyMasters] OFF
/****** Object:  Table [dbo].[OtherMasters]    Script Date: 02/11/2019 12:07:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OtherMasters](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Type] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[IsDeleted] [bit] NOT NULL CONSTRAINT [DF_OtherMaster_IsActive]  DEFAULT ((1)),
 CONSTRAINT [PK_OtherMaster] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[OtherMasters] ON
INSERT [dbo].[OtherMasters] ([id], [Name], [Type], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (2, N'Tomss', N'Reference', CAST(0x0000A99400000000 AS DateTime), CAST(0x0000A996012B8833 AS DateTime), 0)
INSERT [dbo].[OtherMasters] ([id], [Name], [Type], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (3, N'Jimsergal', N'Cost Center', CAST(0x0000A99400000000 AS DateTime), CAST(0x0000A99900E18979 AS DateTime), 0)
INSERT [dbo].[OtherMasters] ([id], [Name], [Type], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (4, N'Xngs', N'Category', CAST(0x0000A99400000000 AS DateTime), CAST(0x0000A996012545E6 AS DateTime), 0)
INSERT [dbo].[OtherMasters] ([id], [Name], [Type], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (5, N'nepals', N'Category', CAST(0x0000A994012846A1 AS DateTime), CAST(0x0000A996011EF78A AS DateTime), 0)
INSERT [dbo].[OtherMasters] ([id], [Name], [Type], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (6, N'cct', N'Cost Center', CAST(0x0000A9940128A842 AS DateTime), CAST(0x0000A996012B028E AS DateTime), 0)
INSERT [dbo].[OtherMasters] ([id], [Name], [Type], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (7, N'rrtdone', N'Category', CAST(0x0000A994012937AA AS DateTime), CAST(0x0000A99601255876 AS DateTime), 0)
INSERT [dbo].[OtherMasters] ([id], [Name], [Type], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (8, N'cct', N'Category', CAST(0x0000A9940129564A AS DateTime), CAST(0x0000A996012B0F62 AS DateTime), 0)
INSERT [dbo].[OtherMasters] ([id], [Name], [Type], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (9, N'rrps', N'Category', CAST(0x0000A99401386B46 AS DateTime), CAST(0x0000A996011EF78B AS DateTime), 0)
INSERT [dbo].[OtherMasters] ([id], [Name], [Type], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (10, N'ssss', N'Reference', CAST(0x0000A9940139FAA7 AS DateTime), CAST(0x0000A996011EE4FD AS DateTime), 0)
INSERT [dbo].[OtherMasters] ([id], [Name], [Type], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (11, N'rrrrttt', N'Category', CAST(0x0000A9940153EE35 AS DateTime), CAST(0x0000A996011EF78E AS DateTime), 0)
INSERT [dbo].[OtherMasters] ([id], [Name], [Type], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (12, N'tts', N'Category', CAST(0x0000A9940156BF10 AS DateTime), CAST(0x0000A996012AE0B7 AS DateTime), 0)
INSERT [dbo].[OtherMasters] ([id], [Name], [Type], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (13, N'ref2', N'Category', CAST(0x0000A99600C6A3FF AS DateTime), CAST(0x0000A996011EF79B AS DateTime), 0)
INSERT [dbo].[OtherMasters] ([id], [Name], [Type], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (15, N'cct', N'Cost Center', CAST(0x0000A99600CFA088 AS DateTime), CAST(0x0000A996011EDB99 AS DateTime), 0)
INSERT [dbo].[OtherMasters] ([id], [Name], [Type], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (16, N'tate', N'Reference', CAST(0x0000A99600CFB4AA AS DateTime), CAST(0x0000A996011EE4FF AS DateTime), 0)
INSERT [dbo].[OtherMasters] ([id], [Name], [Type], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (17, N'Catb', N'Category', CAST(0x0000A99600CFD7F2 AS DateTime), CAST(0x0000A996011EF7A6 AS DateTime), 0)
INSERT [dbo].[OtherMasters] ([id], [Name], [Type], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (19, N'FidesNew', N'Cost Center', CAST(0x0000A99900D61966 AS DateTime), CAST(0x0000A99900D64E40 AS DateTime), 0)
INSERT [dbo].[OtherMasters] ([id], [Name], [Type], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (31, N'Tsest', N'Category', CAST(0x0000A9AC000B5EDF AS DateTime), CAST(0x0000A9AC000B5EDF AS DateTime), 0)
INSERT [dbo].[OtherMasters] ([id], [Name], [Type], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (32, N'lalala', N'Category', CAST(0x0000A9AC000C0938 AS DateTime), CAST(0x0000A9AC000C0938 AS DateTime), 0)
INSERT [dbo].[OtherMasters] ([id], [Name], [Type], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (33, N'ccccc', N'Category', CAST(0x0000A9AC000C32EF AS DateTime), CAST(0x0000A9AC000C32EF AS DateTime), 0)
INSERT [dbo].[OtherMasters] ([id], [Name], [Type], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (34, N'Hey', N'Cost Center', CAST(0x0000A9AC000C4FDD AS DateTime), CAST(0x0000A9AC000C4FDD AS DateTime), 0)
INSERT [dbo].[OtherMasters] ([id], [Name], [Type], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (35, N'TestRef', N'Reference', CAST(0x0000A9AC000C839B AS DateTime), CAST(0x0000A9AC000C839B AS DateTime), 0)
INSERT [dbo].[OtherMasters] ([id], [Name], [Type], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (36, N'TestRef New', N'Reference', CAST(0x0000A9AC000C95FC AS DateTime), CAST(0x0000A9AC000C95FC AS DateTime), 0)
INSERT [dbo].[OtherMasters] ([id], [Name], [Type], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (37, N'LKLK', N'Category', CAST(0x0000A9AC000CC5F4 AS DateTime), CAST(0x0000A9AC000CC5F4 AS DateTime), 0)
INSERT [dbo].[OtherMasters] ([id], [Name], [Type], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (38, N'LKLKDFVV', N'Category', CAST(0x0000A9AC000CD872 AS DateTime), CAST(0x0000A9AC000CD872 AS DateTime), 0)
INSERT [dbo].[OtherMasters] ([id], [Name], [Type], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (39, N'Test New', N'Category', CAST(0x0000A9AC000D09C7 AS DateTime), CAST(0x0000A9AC000D09C7 AS DateTime), 0)
INSERT [dbo].[OtherMasters] ([id], [Name], [Type], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (40, N'tesKD', N'Reference', CAST(0x0000A9C0015B6985 AS DateTime), CAST(0x0000A9C0015B6985 AS DateTime), 0)
INSERT [dbo].[OtherMasters] ([id], [Name], [Type], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (62, N'Andhra Pradesh', N'DeliveryIn', CAST(0x0000A9EC00A29EB6 AS DateTime), NULL, 0)
INSERT [dbo].[OtherMasters] ([id], [Name], [Type], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (63, N'Goa', N'DeliveryIn', CAST(0x0000A9EC00A29EB7 AS DateTime), NULL, 0)
INSERT [dbo].[OtherMasters] ([id], [Name], [Type], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (64, N'Jharkhand', N'DeliveryIn', CAST(0x0000A9EC00A29EB7 AS DateTime), NULL, 0)
INSERT [dbo].[OtherMasters] ([id], [Name], [Type], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (65, N'Maharashtra', N'DeliveryIn', CAST(0x0000A9EC00A29EB8 AS DateTime), NULL, 0)
INSERT [dbo].[OtherMasters] ([id], [Name], [Type], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (66, N'Normal', N'Quota', CAST(0x0000A9EC00A61504 AS DateTime), NULL, 0)
INSERT [dbo].[OtherMasters] ([id], [Name], [Type], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (67, N'Branch Purchase', N'Quota', CAST(0x0000A9EC00A61505 AS DateTime), NULL, 0)
INSERT [dbo].[OtherMasters] ([id], [Name], [Type], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (68, N'Import', N'Quota', CAST(0x0000A9EC00A61505 AS DateTime), NULL, 0)
INSERT [dbo].[OtherMasters] ([id], [Name], [Type], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (69, N'Franchisee', N'Quota', CAST(0x0000A9EC00A61505 AS DateTime), NULL, 0)
INSERT [dbo].[OtherMasters] ([id], [Name], [Type], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (70, N'Add', N'ChargesTax', CAST(0x0000A9EC00A61505 AS DateTime), NULL, 0)
INSERT [dbo].[OtherMasters] ([id], [Name], [Type], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (71, N'Less', N'ChargesTax', CAST(0x0000A9EC00A61505 AS DateTime), NULL, 0)
INSERT [dbo].[OtherMasters] ([id], [Name], [Type], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (72, N'No', N'SrvCharge', CAST(0x0000A9EC00A61505 AS DateTime), NULL, 0)
INSERT [dbo].[OtherMasters] ([id], [Name], [Type], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (73, N'Yes', N'SrvCharge', CAST(0x0000A9EC00A61505 AS DateTime), NULL, 0)
INSERT [dbo].[OtherMasters] ([id], [Name], [Type], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (74, N'All', N'SrvCharge', CAST(0x0000A9EC00A61505 AS DateTime), NULL, 0)
INSERT [dbo].[OtherMasters] ([id], [Name], [Type], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (75, N'Purchased T.C.', N'CurrencyNote', CAST(0x0000A9EC00A61505 AS DateTime), NULL, 0)
INSERT [dbo].[OtherMasters] ([id], [Name], [Type], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (76, N'Forex Card', N'CurrencyNote', CAST(0x0000A9EC00A61505 AS DateTime), NULL, 0)
INSERT [dbo].[OtherMasters] ([id], [Name], [Type], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (77, N'Reload Forex Card', N'CurrencyNote', CAST(0x0000A9EC00A61505 AS DateTime), NULL, 0)
INSERT [dbo].[OtherMasters] ([id], [Name], [Type], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (78, N'Encashed T.C.', N'CurrencyNote', CAST(0x0000A9EC00A61505 AS DateTime), NULL, 0)
INSERT [dbo].[OtherMasters] ([id], [Name], [Type], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (79, N'Enc.Forex Card', N'CurrencyNote', CAST(0x0000A9EC00A61505 AS DateTime), NULL, 0)
INSERT [dbo].[OtherMasters] ([id], [Name], [Type], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (80, N'Fx Draft', N'CurrencyNote', CAST(0x0000A9EC00A61505 AS DateTime), NULL, 0)
INSERT [dbo].[OtherMasters] ([id], [Name], [Type], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (81, N'Rate', N'ForexPaiseQty', CAST(0x0000A9EC00A61505 AS DateTime), NULL, 0)
INSERT [dbo].[OtherMasters] ([id], [Name], [Type], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (82, N'Paise/Qty', N'ForexPaiseQty', CAST(0x0000A9EC00A61505 AS DateTime), NULL, 0)
INSERT [dbo].[OtherMasters] ([id], [Name], [Type], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (83, N'Cash/Bank', N'CashBank', CAST(0x0000A9EE00106C5A AS DateTime), NULL, 0)
INSERT [dbo].[OtherMasters] ([id], [Name], [Type], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (84, N'Payment', N'PaymentReceipt', CAST(0x0000A9EE00110F5A AS DateTime), NULL, 0)
INSERT [dbo].[OtherMasters] ([id], [Name], [Type], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (85, N'Receipt', N'PaymentReceipt', CAST(0x0000A9EE001119ED AS DateTime), NULL, 0)
INSERT [dbo].[OtherMasters] ([id], [Name], [Type], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (86, N'HDFC Bank LTD.', N'Bank', CAST(0x0000A9EE00116A2F AS DateTime), NULL, 0)
INSERT [dbo].[OtherMasters] ([id], [Name], [Type], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (87, N'ICICI Bank LTD.', N'Bank', CAST(0x0000A9EE00117BD1 AS DateTime), NULL, 0)
SET IDENTITY_INSERT [dbo].[OtherMasters] OFF
/****** Object:  StoredProcedure [dbo].[spInsertReceiveTrustMaster]    Script Date: 02/11/2019 12:07:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInsertReceiveTrustMaster]
@Date DATETIME,
@Issuer NVARCHAR(MAX) = '',
@Curr NVARCHAR(MAX) = '',
@Prefix NVARCHAR(MAX) = '',
@StartNo INT = 0,
@Nos INT = 0,
@EndNo INT = 0,
@Deno INT = 0,
@Value INT = 0, 
@RefrNo NVARCHAR(50) = '',
@CardNo NVARCHAR(50) = '',
@ProxyNo NVARCHAR(50) = '',
@Type NVARCHAR(50),
@ExpDate DATETIME = null
AS
BEGIN
	INSERT INTO ReceiveTrustMasters (Date,Issuer,Curr,Prefix,StartNo,Nos,EndNo,Deno,Value,CreatedDate,RefrNo,CardNo,ProxyNo,Type,IsDeleted,ExpDate) 
	VALUES(@Date,@Issuer,@Curr,@Prefix,@StartNo,@Nos,@EndNo,@Deno,@Value,GETDATE(),@RefrNo,@CardNo,@ProxyNo,@Type,0,@ExpDate)


	SELECT TOP 1 ID FROM ReceiveTrustMasters ORDER BY Id DESC
END
GO
/****** Object:  Table [dbo].[Users]    Script Date: 02/11/2019 12:07:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[cocode] [varchar](128) NOT NULL CONSTRAINT [DF_usermaster_cocode]  DEFAULT (''),
	[usercode] [varchar](128) NOT NULL CONSTRAINT [DF_usermaster_usercode]  DEFAULT (''),
	[username] [varchar](128) NOT NULL CONSTRAINT [DF_usermaster_username]  DEFAULT (''),
	[userdesignation] [varchar](128) NOT NULL CONSTRAINT [DF_usermaster_userdesignation]  DEFAULT (''),
	[useremail] [varchar](128) NOT NULL CONSTRAINT [DF_usermaster_useremail]  DEFAULT (''),
	[passphrase] [nvarchar](100) NULL,
	[usermobile] [varchar](128) NOT NULL CONSTRAINT [DF_usermaster_usermobile]  DEFAULT (''),
	[usertype] [varchar](128) NOT NULL CONSTRAINT [DF_usermaster_usertype]  DEFAULT (''),
	[rcode] [varchar](128) NOT NULL CONSTRAINT [DF_usermaster_rcode]  DEFAULT (''),
	[password] [varbinary](max) NULL,
 CONSTRAINT [PK_usermaster] PRIMARY KEY CLUSTERED 
(
	[cocode] ASC,
	[usercode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Users] ([cocode], [usercode], [username], [userdesignation], [useremail], [passphrase], [usermobile], [usertype], [rcode], [password]) VALUES (N'X00101', N'1', N'admin', N'administrator', N'admin@demo', N'A6F60D2D-DE05-4956-AF6C-F24803D6B3AC', N'9876543210', N'G', N'A0001', 0x010000000472CD030190C0DFBC484F4F434F8046BBA57B4F3B265DFE)
/****** Object:  Table [dbo].[TCMasters]    Script Date: 02/11/2019 12:07:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCMasters](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NULL,
	[Issuer] [nvarchar](50) NULL,
	[Curr] [nvarchar](50) NULL,
	[Prefix] [nvarchar](50) NULL,
	[StartNo] [int] NULL,
	[Nos] [int] NULL,
	[EndNo] [int] NULL,
	[Deno] [int] NULL,
	[Value] [int] NULL,
	[Type] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[IsDeleted] [bit] NOT NULL,
	[RefrNo] [int] NULL,
	[CardNo] [int] NULL,
	[ProxyNo] [int] NULL,
	[ExpDate] [datetime] NULL,
 CONSTRAINT [PK_dbo.ReceiveTrustTCMasters] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TCMasters] ON
INSERT [dbo].[TCMasters] ([Id], [Date], [Issuer], [Curr], [Prefix], [StartNo], [Nos], [EndNo], [Deno], [Value], [Type], [CreatedDate], [UpdatedDate], [IsDeleted], [RefrNo], [CardNo], [ProxyNo], [ExpDate]) VALUES (62, CAST(0x0000A9DF00000000 AS DateTime), N'HDFC', N'HDF', N'HDF', 10010, 3333, 10100, 1100, 100, N'ReceiveTrust', NULL, CAST(0x0000A9E6012EC7A5 AS DateTime), 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[TCMasters] ([Id], [Date], [Issuer], [Curr], [Prefix], [StartNo], [Nos], [EndNo], [Deno], [Value], [Type], [CreatedDate], [UpdatedDate], [IsDeleted], [RefrNo], [CardNo], [ProxyNo], [ExpDate]) VALUES (63, CAST(0x0000A9D100000000 AS DateTime), N'k', N'k', N'k', 10010, 1, 10100, 1, 1, N'ReceiveTrust', CAST(0x0000A9DF00F31792 AS DateTime), CAST(0x0000A9DF00F3B3E5 AS DateTime), 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[TCMasters] ([Id], [Date], [Issuer], [Curr], [Prefix], [StartNo], [Nos], [EndNo], [Deno], [Value], [Type], [CreatedDate], [UpdatedDate], [IsDeleted], [RefrNo], [CardNo], [ProxyNo], [ExpDate]) VALUES (64, CAST(0x0000A9DF00000000 AS DateTime), N'IDBI', N'IDB', N'IDB', 10010, 110, 10100, 100, 100, N'ReceiveTrust', NULL, CAST(0x0000A9E700C80BD5 AS DateTime), 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[TCMasters] ([Id], [Date], [Issuer], [Curr], [Prefix], [StartNo], [Nos], [EndNo], [Deno], [Value], [Type], [CreatedDate], [UpdatedDate], [IsDeleted], [RefrNo], [CardNo], [ProxyNo], [ExpDate]) VALUES (65, CAST(0x0000A9CE00000000 AS DateTime), N'11', N'111', N'11', 101, 1, 1051, 1001, 1, N'ReceiveTrust', NULL, CAST(0x0000A9E700C81234 AS DateTime), 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TCMasters] ([Id], [Date], [Issuer], [Curr], [Prefix], [StartNo], [Nos], [EndNo], [Deno], [Value], [Type], [CreatedDate], [UpdatedDate], [IsDeleted], [RefrNo], [CardNo], [ProxyNo], [ExpDate]) VALUES (66, CAST(0x0000A9E500000000 AS DateTime), N'ICICI', N'ICI', N'ICI', 10010, 222, 10100, 111, 111, N'ReceiveTrust', NULL, CAST(0x0000A9E6012FBB51 AS DateTime), 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TCMasters] ([Id], [Date], [Issuer], [Curr], [Prefix], [StartNo], [Nos], [EndNo], [Deno], [Value], [Type], [CreatedDate], [UpdatedDate], [IsDeleted], [RefrNo], [CardNo], [ProxyNo], [ExpDate]) VALUES (67, CAST(0x0000A9CB00000000 AS DateTime), N'demo11', N'demo', N'demp1', 1, 1, 1, 1, 1, N'ReceiveTrust', NULL, CAST(0x0000A9E6012D2AB5 AS DateTime), 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[TCMasters] ([Id], [Date], [Issuer], [Curr], [Prefix], [StartNo], [Nos], [EndNo], [Deno], [Value], [Type], [CreatedDate], [UpdatedDate], [IsDeleted], [RefrNo], [CardNo], [ProxyNo], [ExpDate]) VALUES (68, CAST(0x0000A9E600000000 AS DateTime), N'IDBI', N'IDB1', N'IDB1', 1100, 1100, 1110, 1110, 1114, N'ReceiveTrust', CAST(0x0000A9E600FAB045 AS DateTime), CAST(0x0000A9E6012FB3BF AS DateTime), 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[TCMasters] ([Id], [Date], [Issuer], [Curr], [Prefix], [StartNo], [Nos], [EndNo], [Deno], [Value], [Type], [CreatedDate], [UpdatedDate], [IsDeleted], [RefrNo], [CardNo], [ProxyNo], [ExpDate]) VALUES (69, CAST(0x0000A9E600000000 AS DateTime), N'ICICI', N'ICI', N'ICI', 100, 1111, 1110, 110, 1100, N'ReceiveTrust', CAST(0x0000A9E601007EF7 AS DateTime), CAST(0x0000A9E601009E17 AS DateTime), 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[TCMasters] ([Id], [Date], [Issuer], [Curr], [Prefix], [StartNo], [Nos], [EndNo], [Deno], [Value], [Type], [CreatedDate], [UpdatedDate], [IsDeleted], [RefrNo], [CardNo], [ProxyNo], [ExpDate]) VALUES (70, CAST(0x0000A9E600000000 AS DateTime), N'aasa', N'aa', N'aa', 1110, 1111, 111, 111, 11, N'ReceiveTrust', CAST(0x0000A9E6010C228C AS DateTime), CAST(0x0000A9E6010C2FC3 AS DateTime), 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[TCMasters] ([Id], [Date], [Issuer], [Curr], [Prefix], [StartNo], [Nos], [EndNo], [Deno], [Value], [Type], [CreatedDate], [UpdatedDate], [IsDeleted], [RefrNo], [CardNo], [ProxyNo], [ExpDate]) VALUES (71, CAST(0x0000AA0200000000 AS DateTime), N'aa', N'aa', N'aa', 1, 1, 1, 1, 1, N'ReceiveTrust', CAST(0x0000A9E700C836A3 AS DateTime), NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[TCMasters] ([Id], [Date], [Issuer], [Curr], [Prefix], [StartNo], [Nos], [EndNo], [Deno], [Value], [Type], [CreatedDate], [UpdatedDate], [IsDeleted], [RefrNo], [CardNo], [ProxyNo], [ExpDate]) VALUES (72, CAST(0x0000A9EC00000000 AS DateTime), N'HDFC', N'B', NULL, 0, NULL, NULL, NULL, NULL, N'ReceiveForex', CAST(0x0000A9E700EEC085 AS DateTime), CAST(0x0000A9E700EF0818 AS DateTime), 1, 111, 11111, 111, CAST(0x0000A9FB00000000 AS DateTime))
INSERT [dbo].[TCMasters] ([Id], [Date], [Issuer], [Curr], [Prefix], [StartNo], [Nos], [EndNo], [Deno], [Value], [Type], [CreatedDate], [UpdatedDate], [IsDeleted], [RefrNo], [CardNo], [ProxyNo], [ExpDate]) VALUES (73, CAST(0x0000A9ED00000000 AS DateTime), N'III', N'B', NULL, 0, NULL, NULL, NULL, NULL, N'ReceiveForex', CAST(0x0000A9E700EF3456 AS DateTime), NULL, 0, 2, 2, 2, CAST(0x0000AA0200000000 AS DateTime))
INSERT [dbo].[TCMasters] ([Id], [Date], [Issuer], [Curr], [Prefix], [StartNo], [Nos], [EndNo], [Deno], [Value], [Type], [CreatedDate], [UpdatedDate], [IsDeleted], [RefrNo], [CardNo], [ProxyNo], [ExpDate]) VALUES (74, CAST(0x0000AA0200000000 AS DateTime), N'WW', N'WW', N'WW', 10, 1, 1, 1, 1, N'ReceiveTrust', CAST(0x0000A9E700EF5CB3 AS DateTime), NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[TCMasters] ([Id], [Date], [Issuer], [Curr], [Prefix], [StartNo], [Nos], [EndNo], [Deno], [Value], [Type], [CreatedDate], [UpdatedDate], [IsDeleted], [RefrNo], [CardNo], [ProxyNo], [ExpDate]) VALUES (75, CAST(0x0000A9F400000000 AS DateTime), N'k1', N'B1', NULL, 0, NULL, NULL, NULL, NULL, N'ReceiveForex', CAST(0x0000A9E700EF82E8 AS DateTime), CAST(0x0000A9E700EF9A5B AS DateTime), 0, 12, 12, 12, CAST(0x0000AA0200000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[TCMasters] OFF
/****** Object:  StoredProcedure [dbo].[spUpdateReceiveTrustMaster]    Script Date: 02/11/2019 12:07:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spUpdateReceiveTrustMaster]
@Id INT,
@Date DATETIME,
@Issuer NVARCHAR(MAX) = '',
@Curr NVARCHAR(MAX) = '',
@Prefix NVARCHAR(MAX) = '',
@StartNo INT = 0,
@Nos INT = 0,
@EndNo INT = 0,
@Deno INT = 0,
@Value INT = 0, 
@RefrNo NVARCHAR(50) = '',
@CardNo NVARCHAR(50) = '',
@ProxyNo NVARCHAR(50) = '',
@IsDeleted BIT,
@Type NVARCHAR(50),
@ExpDate DATETIME = null
AS
BEGIN
	UPDATE ReceiveTrustMasters SET
	Date = @Date,
	Issuer = @Issuer,
	Curr = @Curr,
	Prefix = @Prefix,
	StartNo = @StartNo,
	Nos = @Nos,
	EndNo = @EndNo,
	Deno = @Deno,
	Value = @Value,
	UpdatedDate = GETDATE(),
	IsDeleted = @IsDeleted,
	RefrNo = @RefrNo,
	CardNo = @CardNo,
	ProxyNo = @ProxyNo,
	Type = @Type,
	ExpDate = @ExpDate
	WHERE Id = @Id
END
GO
/****** Object:  StoredProcedure [dbo].[spUpdatePartyMaster]    Script Date: 02/11/2019 12:07:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spUpdatePartyMaster]



@Type CHAR,



@Name NVARCHAR(200) = '',



@Address1 NVARCHAR(200) = '',



@Address2 NVARCHAR(200) = '',



@Address3 NVARCHAR(200) = '',



@City NVARCHAR(100) = '',



@Pincode NVARCHAR(20) = '',



@State NVARCHAR(100) = '',



@Country NVARCHAR(100) = '',



@Peraddress1 NVARCHAR(200) = '',



@Peraddress2 NVARCHAR(200) = '',



@Peraddress3 NVARCHAR(200) = '',



@Percity NVARCHAR(100) = '',



@Perpincode NVARCHAR(20) = '',



@Perstate NVARCHAR(100) = '',



@Percountry NVARCHAR(100) = '',



@Nationality NVARCHAR(100) = '',



@Residency NVARCHAR(20) = '',



@Contactperson1 NVARCHAR(100) = '',



@Tel1 NVARCHAR(24) = '',



@Email1 NVARCHAR(100) = '',



@Contactperson2 NVARCHAR(100) = '',



@Tel2 NVARCHAR(24) = '',



@Email2 NVARCHAR(100) = '',



@Primaryid NVARCHAR(100) = '',



@Panno NVARCHAR(20) = '',



@Aadharno NVARCHAR(32) = '',



@Gst NVARCHAR(30) = '',



@Mobile NVARCHAR(24) = '',



@OpeningBalance NVARCHAR(24) = '',



@BalancePost NVARCHAR(5) = '',



@AddressInBill NVARCHAR(5) = '',



@Lock NVARCHAR(5) = '',



@Category NVARCHAR(20) = '',



@Broker NVARCHAR(50) = '',



@Location NVARCHAR(200) = '',



@CollectGST NVARCHAR(5) = '',



@RBILICNo NVARCHAR(50) = '',



@RBIExp DATETIME = NULL,



@ControlAC NVARCHAR(200)= '',



@Id INT,



@IsDeleted BIT



AS



BEGIN
	UPDATE PartyMasters SET 
	Type = @Type,
	Name = @Name,
	Address1 = @Address1,
	Address2 = @Address2,
	Address3 = @Address3,
	City = @City,
	Pincode = @Pincode,
	State = @State,
	Country = @Country,
	Peraddress1 = @Peraddress1,
	Peraddress2 = @Peraddress2,
	Peraddress3 = @Peraddress3,
	Percity = @Percity,
	Perpincode = @Perpincode,
	Perstate = @Perstate,
	Percountry = @Percountry,
	Nationality = @Nationality,
	Residency = @Residency,
	Contactperson1 = @Contactperson1,
	Tel1 = @Tel1,
	Email1 = @Email1,
	Contactperson2 = @Contactperson2,
	Tel2 = @Tel2,
	Email2 = @Email2,
	Primaryid = @Primaryid,
	Panno = @Panno,
	Aadharno = @Aadharno,
	Gst = @Gst,
	UpdatedDate = GETDATE(),
	Mobile = @Mobile,
	OpeningBalance = @OpeningBalance,
	BalancePost = @BalancePost,
	AddressInBill = @AddressInBill,
	Lock = @Lock,
	Category =@Category,
	Broker = @Broker,
	Location = @Location,
	CollectGST = @CollectGST,
	RBILICNo = @RBILICNo,
	RBIExp = @RBIExp,
	ControlAC = @ControlAC,
	IsDeleted = @IsDeleted
	WHERE Id = @Id
END
GO
/****** Object:  StoredProcedure [dbo].[spUpdateAccounting]    Script Date: 02/11/2019 12:07:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spUpdateAccounting]
	-- Add the parameters for the stored procedure here
	@Desc nvarchar(150),
	@Type nvarchar(50),
	@HSNSAC nvarchar(50),
	@GrpUnder nvarchar(50),
	@Block nvarchar(5),
	@Balance nvarchar(50),
	@BalancePost nvarchar(50),
	@NOF nvarchar(5),
	@IsDeleted bit,
	@Id int,
	@SubId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update [Accountings]
	set [Desc] = @Desc,
	[Type] = @Type,
	HSNSAC = @HSNSAC,
	GrpUnder = @GrpUnder,
	[Block]=@Block,
	Balance = @Balance,
	BalancePost = @BalancePost,
	NOF = @NOF,
	IsDeleted = @IsDeleted,
	UpdatedDate = GETUTCDATE()
	where id = @Id and SubId = @SubId
END
GO
/****** Object:  StoredProcedure [dbo].[spRegisterUser]    Script Date: 02/11/2019 12:07:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spRegisterUser] --'X00101','1','ADMIN','administrator',''
	-- Add the parameters for the stored procedure here
	@cocode varchar(128),
	@usercode varchar(128),
	@username varchar(128),
	@userdesignation varchar(128),
	@useremail varchar(128),
	@usermobile varchar(128),
	@usertype varchar(128),
	@rcode varchar(128),
	@password varchar(128)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	declare @passphrase varchar(100)=newID();  
	declare @newpassword varbinary(MAX)= dbo.EncryptString(@passphrase,@password); 
	Insert into Users(cocode, usercode, username, userdesignation, useremail, passphrase, usermobile, usertype, rcode, [password])
	values
	(@cocode, @usercode, @username, @userdesignation, @useremail, @passphrase, @usermobile, @usertype, @rcode, @newpassword) 
END
GO
/****** Object:  StoredProcedure [dbo].[spMergeAdditionalData]    Script Date: 02/11/2019 12:07:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spMergeAdditionalData] 
	-- Add the parameters for the stored procedure here
	@AdditionalData [dbo].[AdditionalTable] ReadOnly
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	/*Insert Into AdditionalData
		select [Table], [Column], [Value], [ReferenceId],
		GETUTCDATE(), GETUTCDATE(),0 from @AdditionalData*/

		Merge AdditionalData as t
		using @AdditionalData as s
		on (s.id is not null and t.id = s.id)
		WHEN MATCHED THEN
		UPDATE SET 
		t.[Value] = s.[Value], t.UpdatedDate = GETUTCDATE(), t.IsDeleted = s.IsDeleted
		WHEN NOT MATCHED BY TARGET THEN
		Insert ([Table], [Column], [Value], [Refrenceid], [CreatedDate], [UpdatedDate], [IsDeleted])
		VALUES (s.[Table], s.[Column], s.[Value], s.ReferenceId, GETUTCDATE(), GETUTCDATE(), 0);

END
GO
/****** Object:  StoredProcedure [dbo].[spInsertPartyMaster]    Script Date: 02/11/2019 12:07:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInsertPartyMaster]

@Type CHAR,

@Name NVARCHAR(200) = '',

@Address1 NVARCHAR(200) = '',

@Address2 NVARCHAR(200) = '',

@Address3 NVARCHAR(200) = '',

@City NVARCHAR(100) = '',

@Pincode NVARCHAR(20) = '',

@State NVARCHAR(100) = '',

@Country NVARCHAR(100) = '',

@Peraddress1 NVARCHAR(200) = '',

@Peraddress2 NVARCHAR(200) = '',

@Peraddress3 NVARCHAR(200) = '',

@Percity NVARCHAR(100) = '',

@Perpincode NVARCHAR(20) = '',

@Perstate NVARCHAR(100) = '',

@Percountry NVARCHAR(100) = '',

@Nationality NVARCHAR(100) = '',

@Residency NVARCHAR(20) = '',

@Contactperson1 NVARCHAR(100) = '',

@Tel1 NVARCHAR(24) = '',

@Email1 NVARCHAR(100) = '',

@Contactperson2 NVARCHAR(100) = '',

@Tel2 NVARCHAR(24) = '',

@Email2 NVARCHAR(100) = '',

@Primaryid NVARCHAR(100) = '',

@Panno NVARCHAR(20) = '',

@Aadharno NVARCHAR(32) = '',

@Gst NVARCHAR(30) = '',

@Mobile NVARCHAR(24) = '',

@OpeningBalance NVARCHAR(24) = '',

@BalancePost NVARCHAR(5) = '',

@AddressInBill NVARCHAR(5) = '',

@Lock NVARCHAR(5) = '',

@Category NVARCHAR(20) = '',

@Broker NVARCHAR(50) = '',

@Location NVARCHAR(200) = '',

@CollectGST NVARCHAR(5) = '',

@RBILICNo NVARCHAR(50) = '',

@RBIExp DATETIME = NULL,

@ControlAC NVARCHAR(200)= ''

AS

BEGIN

	INSERT INTO PartyMasters (Type,Name,Address1,Address2,Address3,City,Pincode,State,Country,Peraddress1,Peraddress2,Peraddress3,Percity,Perpincode,Perstate,Percountry,Nationality,Residency,Contactperson1,Tel1,Email1,Contactperson2,Tel2,Email2,Primaryid,Panno,Aadharno,Gst,CreatedDate,Mobile,
	OpeningBalance,BalancePost,AddressInBill,Lock,Category,Broker,Location,CollectGST,RBILICNo,RBIExp,ControlAC) VALUES

	(@Type,@Name,@Address1,@Address2,@Address3,@City,@Pincode,@State,@Country,@Peraddress1,@Peraddress2,@Peraddress3,@Percity,@Perpincode,@Perstate,@Percountry,@Nationality,@Residency,@Contactperson1,@Tel1,@Email1,@Contactperson2,@Tel2,@Email2,@Primaryid,@Panno,@Aadharno,@Gst,GETDATE(),
	@Mobile,@OpeningBalance,@BalancePost,@AddressInBill,@Lock,@Category,@Broker,@Location,@CollectGST,@RBILICNo,@RBIExp,@ControlAC)



	SELECT TOP 1 Id FROM PartyMasters ORDER by Id DESC

END
GO
/****** Object:  StoredProcedure [dbo].[spInsertAdditionalData]    Script Date: 02/11/2019 12:07:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spInsertAdditionalData] 
	-- Add the parameters for the stored procedure here
	@AdditionalData [dbo].[AdditionalTable] ReadOnly
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Insert Into AdditionalData
		select [Table], [Column], [Value], [ReferenceId],
		GETUTCDATE(), GETUTCDATE(),0 from @AdditionalData
END
GO
/****** Object:  StoredProcedure [dbo].[spInsertAccounting]    Script Date: 02/11/2019 12:07:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================


CREATE PROCEDURE [dbo].[spInsertAccounting] 
	-- Add the parameters for the stored procedure here
	@Desc nvarchar(150),
	@Type nvarchar(50),
	@HSNSAC nvarchar(50),
	@GrpUnder nvarchar(50),
	@Block nvarchar(5),
	@Balance nvarchar(50),
	@BalancePost nvarchar(50),
	@NOF nvarchar(5),
	@Id int = null

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Declare @insertID int;
	Declare @SubInsertID int;
	if @Id Is Not Null
		Begin
			Set @insertID = @Id;
			Select Top 1 @SubInsertID = (ISNULL(SubId,0) + 1) from [dbo].[Accountings] where id = @Id order by SubId desc
		End
	else
		Begin
	
			 Select Top 1 @insertID = (ISNULL(id,0) +1) from [dbo].[Accountings] order by id desc
				Set @SubInsertID = 0;
		End
	



		Insert into [dbo].[Accountings](id, subid, [Desc], [Type], HSNSAC, [GrpUnder],
		[Block],[Balance],[BalancePost],[NOF],[CreatedDate], [UpdatedDate], [IsDeleted])
		values
		(@insertID, @SubInsertID, @Desc, @Type, @HSNSAC, @GrpUnder, @Block, @Balance, @BalancePost,
		@NOF, GETUTCDATE(), GETUTCDATE(), 1);

		Select @insertID as Id, @SubInsertID as SubId
		
END
GO
/****** Object:  StoredProcedure [dbo].[sp_checklogin]    Script Date: 02/11/2019 12:07:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_checklogin] 
	@companycode nvarchar(128),
	@username nvarchar(128),
	@password nvarchar(128)
	
AS
BEGIN
	--SET NOCOUNT ON;
	--SELECT usercode, rcode,username,cocode FROM usermaster WHERE cocode = @companycode AND username = @username AND password = @password
	SELECT usercode, rcode,username,cocode FROM Users WHERE cocode = @companycode AND username = @username AND dbo.DecryptString(passphrase,password)=@password
	--SELECT usercode, rcode FROM usermaster WHERE cocode = @companycode AND username = @username 
END
GO
/****** Object:  StoredProcedure [dbo].[GetCompanyRecords]    Script Date: 02/11/2019 12:07:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Kuldeep>
-- Create date: <10/02/2018>
-- Description:	<Getting Company Records>
-- =============================================
CREATE PROCEDURE [dbo].[GetCompanyRecords] 
	-- Add the parameters for the stored procedure here
	@domain nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM Companies WHERE domain = @domain
END
GO
/****** Object:  Table [dbo].[BulkPurchasePayments]    Script Date: 02/11/2019 12:07:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BulkPurchasePayments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BulkPurchaseId] [int] NOT NULL,
	[SequenceNo] [int] NULL,
	[CashBank] [int] NULL,
	[Type] [int] NULL,
	[ChequeNo] [nvarchar](50) NULL,
	[ChequeDate] [datetime] NULL,
	[Amount] [decimal](29, 4) NULL,
	[Remark] [nvarchar](250) NULL,
	[Bank] [int] NULL,
	[Date] [datetime] NULL,
	[NetPayable] [decimal](29, 4) NULL,
	[TotalPendingAmount] [decimal](29, 4) NULL,
	[BalanceAmount] [decimal](29, 4) NULL,
	[CreatedDate] [datetime] NULL CONSTRAINT [DF_Table_1_CreatedDate1]  DEFAULT (getdate()),
	[UpdatedDate] [datetime] NULL,
	[IsDeleted] [bit] NULL CONSTRAINT [DF_BulkPurchasePayment_IsDeleted]  DEFAULT ((0)),
 CONSTRAINT [PK_BulkPurchasePayment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BulkPurchasePayments] ON
INSERT [dbo].[BulkPurchasePayments] ([Id], [BulkPurchaseId], [SequenceNo], [CashBank], [Type], [ChequeNo], [ChequeDate], [Amount], [Remark], [Bank], [Date], [NetPayable], [TotalPendingAmount], [BalanceAmount], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (1, 2, NULL, 83, 84, N'1111', CAST(0x0000A9EA00000000 AS DateTime), NULL, N'CC', 87, CAST(0x0000A9F800000000 AS DateTime), CAST(1000.0000 AS Decimal(29, 4)), CAST(0.0000 AS Decimal(29, 4)), CAST(1000.0000 AS Decimal(29, 4)), NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[BulkPurchasePayments] OFF
/****** Object:  Table [dbo].[BulkPurchaseForexes]    Script Date: 02/11/2019 12:07:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BulkPurchaseForexes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BulkPurchaseId] [int] NOT NULL,
	[SequenceNo] [int] NULL,
	[CurrencyName] [int] NULL,
	[CurrencyNote] [int] NULL,
	[Quantity] [int] NULL,
	[Rate] [decimal](29, 4) NULL,
	[GrossAmt] [decimal](29, 4) NULL,
	[CalculatedGross] [decimal](29, 4) NULL,
	[BrokerPaise] [int] NULL,
	[BrokerPaiseAmt] [decimal](29, 4) NULL,
	[BrokerCommAmt] [decimal](29, 4) NULL,
	[BrokerTDSPercentage] [decimal](29, 4) NULL,
	[BrokerTDSAmt] [decimal](29, 4) NULL,
	[SubBrokerPaise] [int] NULL,
	[SubBrokerPaiseAmt] [decimal](29, 4) NULL,
	[SubBrokerCommAmt] [decimal](29, 4) NULL,
	[SubBrokerTDSPercentage] [decimal](29, 4) NULL,
	[SubBrokerTDSAmt] [decimal](29, 4) NULL,
	[CreatedDate] [datetime] NULL CONSTRAINT [DF_BulkPurchaseForex_CreatedDate]  DEFAULT (getdate()),
	[UpdatedDate] [datetime] NULL,
	[IsDeleted] [bit] NULL CONSTRAINT [DF_BulkPurchaseForex_IsDeleted]  DEFAULT ((0)),
 CONSTRAINT [PK_BulkPurchaseForex] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BulkPurchaseForexes] ON
INSERT [dbo].[BulkPurchaseForexes] ([Id], [BulkPurchaseId], [SequenceNo], [CurrencyName], [CurrencyNote], [Quantity], [Rate], [GrossAmt], [CalculatedGross], [BrokerPaise], [BrokerPaiseAmt], [BrokerCommAmt], [BrokerTDSPercentage], [BrokerTDSAmt], [SubBrokerPaise], [SubBrokerPaiseAmt], [SubBrokerCommAmt], [SubBrokerTDSPercentage], [SubBrokerTDSAmt], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (1, 2, 0, 8, 76, 2, CAST(20.0000 AS Decimal(29, 4)), CAST(50.0000 AS Decimal(29, 4)), CAST(70.0000 AS Decimal(29, 4)), 82, CAST(2.0000 AS Decimal(29, 4)), CAST(1.0000 AS Decimal(29, 4)), CAST(4.0000 AS Decimal(29, 4)), CAST(2.0000 AS Decimal(29, 4)), 82, CAST(1.0000 AS Decimal(29, 4)), CAST(20.0000 AS Decimal(29, 4)), CAST(1.0000 AS Decimal(29, 4)), CAST(1.0000 AS Decimal(29, 4)), NULL, NULL, 0)
INSERT [dbo].[BulkPurchaseForexes] ([Id], [BulkPurchaseId], [SequenceNo], [CurrencyName], [CurrencyNote], [Quantity], [Rate], [GrossAmt], [CalculatedGross], [BrokerPaise], [BrokerPaiseAmt], [BrokerCommAmt], [BrokerTDSPercentage], [BrokerTDSAmt], [SubBrokerPaise], [SubBrokerPaiseAmt], [SubBrokerCommAmt], [SubBrokerTDSPercentage], [SubBrokerTDSAmt], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (2, 2, 0, 3, 80, 2, CAST(30.0000 AS Decimal(29, 4)), CAST(60.0000 AS Decimal(29, 4)), CAST(33.0000 AS Decimal(29, 4)), 81, CAST(33.0000 AS Decimal(29, 4)), CAST(55.0000 AS Decimal(29, 4)), CAST(7.0000 AS Decimal(29, 4)), CAST(67.0000 AS Decimal(29, 4)), 81, CAST(56.0000 AS Decimal(29, 4)), CAST(77.0000 AS Decimal(29, 4)), CAST(55.0000 AS Decimal(29, 4)), CAST(77.0000 AS Decimal(29, 4)), NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[BulkPurchaseForexes] OFF
/****** Object:  ForeignKey [FK_BulkPurchaseForex_BulkPurchase]    Script Date: 02/11/2019 12:07:51 ******/
ALTER TABLE [dbo].[BulkPurchaseForexes]  WITH CHECK ADD  CONSTRAINT [FK_BulkPurchaseForex_BulkPurchase] FOREIGN KEY([BulkPurchaseId])
REFERENCES [dbo].[BulkPurchases] ([Id])
GO
ALTER TABLE [dbo].[BulkPurchaseForexes] CHECK CONSTRAINT [FK_BulkPurchaseForex_BulkPurchase]
GO
/****** Object:  ForeignKey [FK_BulkPurchasePayment_BulkPurchase]    Script Date: 02/11/2019 12:07:51 ******/
ALTER TABLE [dbo].[BulkPurchasePayments]  WITH CHECK ADD  CONSTRAINT [FK_BulkPurchasePayment_BulkPurchase] FOREIGN KEY([BulkPurchaseId])
REFERENCES [dbo].[BulkPurchases] ([Id])
GO
ALTER TABLE [dbo].[BulkPurchasePayments] CHECK CONSTRAINT [FK_BulkPurchasePayment_BulkPurchase]
GO
