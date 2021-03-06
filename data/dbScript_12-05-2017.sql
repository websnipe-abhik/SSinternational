USE [ssinternational_data]
GO
/****** Object:  Table [dbo].[serialMaster]    Script Date: 05/12/2017 17:00:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[serialMaster](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[serialnum] [bigint] NOT NULL,
	[prefix] [varchar](50) NOT NULL,
	[module] [varchar](50) NOT NULL,
	[suffix] [varchar](50) NOT NULL,
	[maxdigit] [int] NOT NULL,
	[companyId] [int] NOT NULL,
	[yearId] [int] NOT NULL,
 CONSTRAINT [PK_serialMaster] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[serialMaster] ON
INSERT [dbo].[serialMaster] ([id], [serialnum], [prefix], [module], [suffix], [maxdigit], [companyId], [yearId]) VALUES (1, 17, N'UNL', N'UNLOADING', N'17-18', 5, 1, 2)
SET IDENTITY_INSERT [dbo].[serialMaster] OFF
/****** Object:  Table [dbo].[companies]    Script Date: 05/12/2017 17:00:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[companies](
	[companyid] [int] IDENTITY(1,1) NOT NULL,
	[companyname] [varchar](100) NOT NULL,
	[companyaddress] [varchar](255) NULL,
	[companystate] [varchar](255) NULL,
	[companypin] [varchar](50) NULL,
	[companytin] [varchar](50) NULL,
	[companypanypan] [varchar](50) NULL,
	[companytan] [varchar](50) NULL,
 CONSTRAINT [PK_companies] PRIMARY KEY CLUSTERED 
(
	[companyid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[companies] ON
INSERT [dbo].[companies] ([companyid], [companyname], [companyaddress], [companystate], [companypin], [companytin], [companypanypan], [companytan]) VALUES (1, N'Unity Tea Warehousing Company (P) Ltd.', NULL, N'West Bengal', NULL, NULL, NULL, NULL)
INSERT [dbo].[companies] ([companyid], [companyname], [companyaddress], [companystate], [companypin], [companytin], [companypanypan], [companytan]) VALUES (2, N'ABC International', NULL, N'Karnatak', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[companies] OFF
/****** Object:  Table [dbo].[DamageTypes]    Script Date: 05/12/2017 17:00:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DamageTypes](
	[DamageId] [int] IDENTITY(1,1) NOT NULL,
	[DamageCode] [varchar](20) NULL,
	[Description] [varchar](120) NOT NULL,
 CONSTRAINT [PK_DamageTypes] PRIMARY KEY CLUSTERED 
(
	[DamageId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[DamageTypes] ON
INSERT [dbo].[DamageTypes] ([DamageId], [DamageCode], [Description]) VALUES (1, N'WS', N'WATER STAINED')
INSERT [dbo].[DamageTypes] ([DamageId], [DamageCode], [Description]) VALUES (2, N'OLS', N'OIL STAINED')
INSERT [dbo].[DamageTypes] ([DamageId], [DamageCode], [Description]) VALUES (3, N'OS', N'OUTWARDLY SOUND')
INSERT [dbo].[DamageTypes] ([DamageId], [DamageCode], [Description]) VALUES (5, N'WLD', N'Water Leakage Damage')
INSERT [dbo].[DamageTypes] ([DamageId], [DamageCode], [Description]) VALUES (6, N'RD', N'Radical Damage')
INSERT [dbo].[DamageTypes] ([DamageId], [DamageCode], [Description]) VALUES (7, N'TST', N'TEST')
SET IDENTITY_INSERT [dbo].[DamageTypes] OFF
/****** Object:  Table [dbo].[arrivalDetail]    Script Date: 05/12/2017 17:00:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[arrivalDetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[arrivalId] [int] NOT NULL,
	[invoice] [varchar](100) NOT NULL,
	[grade] [varchar](100) NOT NULL,
	[package] [decimal](12, 2) NULL,
	[yearofproduction] [varchar](100) NULL,
	[pkgsrlfrm] [int] NOT NULL,
	[pkgsrlto] [int] NOT NULL,
	[invoicequantity] [decimal](12, 2) NOT NULL,
	[receivequantity] [decimal](12, 2) NOT NULL,
	[gross] [decimal](12, 2) NOT NULL,
	[tare] [decimal](12, 2) NULL,
	[net] [decimal](12, 2) NOT NULL,
	[floorId] [int] NOT NULL,
 CONSTRAINT [PK_arrivalDetail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[arrivalDetail] ON
INSERT [dbo].[arrivalDetail] ([id], [arrivalId], [invoice], [grade], [package], [yearofproduction], [pkgsrlfrm], [pkgsrlto], [invoicequantity], [receivequantity], [gross], [tare], [net], [floorId]) VALUES (1, 10, N'INV00123', N'ORTHO', CAST(200.00 AS Decimal(12, 2)), N'1980', 1000, 1010, CAST(11.00 AS Decimal(12, 2)), CAST(11.00 AS Decimal(12, 2)), CAST(30.20 AS Decimal(12, 2)), CAST(0.20 AS Decimal(12, 2)), CAST(30.00 AS Decimal(12, 2)), 2)
INSERT [dbo].[arrivalDetail] ([id], [arrivalId], [invoice], [grade], [package], [yearofproduction], [pkgsrlfrm], [pkgsrlto], [invoicequantity], [receivequantity], [gross], [tare], [net], [floorId]) VALUES (4, 4, N'100/BG0001/15/XYZ', N'B', CAST(100.00 AS Decimal(12, 2)), N'1980', 100, 170, CAST(71.00 AS Decimal(12, 2)), CAST(71.00 AS Decimal(12, 2)), CAST(30.00 AS Decimal(12, 2)), CAST(0.02 AS Decimal(12, 2)), CAST(30.00 AS Decimal(12, 2)), 2)
INSERT [dbo].[arrivalDetail] ([id], [arrivalId], [invoice], [grade], [package], [yearofproduction], [pkgsrlfrm], [pkgsrlto], [invoicequantity], [receivequantity], [gross], [tare], [net], [floorId]) VALUES (5, 12, N'100/MUN/100/15', N'BOPSM', CAST(1000.00 AS Decimal(12, 2)), N'1980', 100, 160, CAST(61.00 AS Decimal(12, 2)), CAST(61.00 AS Decimal(12, 2)), CAST(30.20 AS Decimal(12, 2)), CAST(0.20 AS Decimal(12, 2)), CAST(30.00 AS Decimal(12, 2)), 2)
INSERT [dbo].[arrivalDetail] ([id], [arrivalId], [invoice], [grade], [package], [yearofproduction], [pkgsrlfrm], [pkgsrlto], [invoicequantity], [receivequantity], [gross], [tare], [net], [floorId]) VALUES (6, 12, N'10025/MUN/102/125', N'CTC', CAST(150.00 AS Decimal(12, 2)), N'1980', 1, 50, CAST(50.00 AS Decimal(12, 2)), CAST(50.00 AS Decimal(12, 2)), CAST(30.00 AS Decimal(12, 2)), CAST(0.20 AS Decimal(12, 2)), CAST(30.00 AS Decimal(12, 2)), 2)
INSERT [dbo].[arrivalDetail] ([id], [arrivalId], [invoice], [grade], [package], [yearofproduction], [pkgsrlfrm], [pkgsrlto], [invoicequantity], [receivequantity], [gross], [tare], [net], [floorId]) VALUES (7, 13, N'100', N'BOPSM', CAST(300.00 AS Decimal(12, 2)), N'2017', 230, 250, CAST(21.00 AS Decimal(12, 2)), CAST(21.00 AS Decimal(12, 2)), CAST(30.60 AS Decimal(12, 2)), CAST(0.60 AS Decimal(12, 2)), CAST(30.00 AS Decimal(12, 2)), 2)
INSERT [dbo].[arrivalDetail] ([id], [arrivalId], [invoice], [grade], [package], [yearofproduction], [pkgsrlfrm], [pkgsrlto], [invoicequantity], [receivequantity], [gross], [tare], [net], [floorId]) VALUES (8, 13, N'ABC0012', N'BOPSM', CAST(200.00 AS Decimal(12, 2)), N'2007', 1000, 1020, CAST(21.00 AS Decimal(12, 2)), CAST(21.00 AS Decimal(12, 2)), CAST(20.30 AS Decimal(12, 2)), CAST(0.30 AS Decimal(12, 2)), CAST(20.00 AS Decimal(12, 2)), 2)
INSERT [dbo].[arrivalDetail] ([id], [arrivalId], [invoice], [grade], [package], [yearofproduction], [pkgsrlfrm], [pkgsrlto], [invoicequantity], [receivequantity], [gross], [tare], [net], [floorId]) VALUES (9, 13, N'ABC00123', N'ORTHO', CAST(300.00 AS Decimal(12, 2)), N'1980', 1500, 2000, CAST(501.00 AS Decimal(12, 2)), CAST(501.00 AS Decimal(12, 2)), CAST(20.30 AS Decimal(12, 2)), CAST(0.30 AS Decimal(12, 2)), CAST(20.00 AS Decimal(12, 2)), 2)
INSERT [dbo].[arrivalDetail] ([id], [arrivalId], [invoice], [grade], [package], [yearofproduction], [pkgsrlfrm], [pkgsrlto], [invoicequantity], [receivequantity], [gross], [tare], [net], [floorId]) VALUES (10, 13, N'BOP/BG0001/2/16-17', N'DUST', CAST(100.00 AS Decimal(12, 2)), N'1980', 200, 210, CAST(11.00 AS Decimal(12, 2)), CAST(11.00 AS Decimal(12, 2)), CAST(30.20 AS Decimal(12, 2)), CAST(0.20 AS Decimal(12, 2)), CAST(30.00 AS Decimal(12, 2)), 2)
SET IDENTITY_INSERT [dbo].[arrivalDetail] OFF
/****** Object:  Table [dbo].[invoiceformat]    Script Date: 05/12/2017 17:00:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[invoiceformat](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[invoiceformat] [varchar](100) NULL,
 CONSTRAINT [PK_invoiceformat] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[invoiceformat] ON
INSERT [dbo].[invoiceformat] ([id], [invoiceformat]) VALUES (1, N'pfx+garden+srl+sfx')
INSERT [dbo].[invoiceformat] ([id], [invoiceformat]) VALUES (2, N'Invoice with LOT')
INSERT [dbo].[invoiceformat] ([id], [invoiceformat]) VALUES (3, N'Invoice without LOT')
SET IDENTITY_INSERT [dbo].[invoiceformat] OFF
/****** Object:  Table [dbo].[financialyears]    Script Date: 05/12/2017 17:00:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[financialyears](
	[fiscalid] [int] IDENTITY(1,1) NOT NULL,
	[startdate] [date] NOT NULL,
	[enddate] [date] NOT NULL,
	[fiscalyear] [varchar](100) NOT NULL,
 CONSTRAINT [PK_financialyears] PRIMARY KEY CLUSTERED 
(
	[fiscalid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[financialyears] ON
INSERT [dbo].[financialyears] ([fiscalid], [startdate], [enddate], [fiscalyear]) VALUES (1, CAST(0x363B0B00 AS Date), CAST(0xA23C0B00 AS Date), N'2016-2017')
INSERT [dbo].[financialyears] ([fiscalid], [startdate], [enddate], [fiscalyear]) VALUES (2, CAST(0xA33C0B00 AS Date), CAST(0x0F3E0B00 AS Date), N'2017-2018')
SET IDENTITY_INSERT [dbo].[financialyears] OFF
/****** Object:  Table [dbo].[users]    Script Date: 05/12/2017 17:00:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[users](
	[userid] [int] IDENTITY(1,1) NOT NULL,
	[login] [varchar](100) NOT NULL,
	[password] [varchar](100) NOT NULL,
	[firstname] [varchar](100) NULL,
	[lastname] [varchar](100) NULL,
	[isActive] [bit] NOT NULL,
	[dateofcreation] [date] NULL,
	[logintime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[users] ON
INSERT [dbo].[users] ([userid], [login], [password], [firstname], [lastname], [isActive], [dateofcreation], [logintime]) VALUES (1, N'Admin', N'’:{½s%ðißµ ', N'Abhik', N'Ghosh', 1, CAST(0x863C0B00 AS Date), CAST(0x0000A770010C02FB AS DateTime))
SET IDENTITY_INSERT [dbo].[users] OFF
/****** Object:  Table [dbo].[stock]    Script Date: 05/12/2017 17:00:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[stock](
	[stockId] [int] IDENTITY(1,1) NOT NULL,
	[arrivalDetailId] [int] NULL,
	[grade] [varchar](100) NULL,
	[invoice] [varchar](100) NULL,
	[gardenid] [int] NULL,
	[net] [nchar](10) NULL,
	[StockInQty] [decimal](12, 2) NULL,
	[StockOutQty] [decimal](12, 2) NULL,
	[BalanceQty] [decimal](12, 2) NULL,
	[companyId] [int] NOT NULL,
	[yearId] [int] NOT NULL,
 CONSTRAINT [PK_stock] PRIMARY KEY CLUSTERED 
(
	[stockId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ShortTypes]    Script Date: 05/12/2017 17:00:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ShortTypes](
	[ShortId] [int] IDENTITY(1,1) NOT NULL,
	[ShortCode] [varchar](10) NULL,
	[ShortName] [varchar](50) NOT NULL,
	[CompanyId] [int] NOT NULL,
 CONSTRAINT [PK_ShortTypes] PRIMARY KEY CLUSTERED 
(
	[ShortId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ShortTypes] ON
INSERT [dbo].[ShortTypes] ([ShortId], [ShortCode], [ShortName], [CompanyId]) VALUES (1, N'B/R  ', N'BROKEN', 1)
INSERT [dbo].[ShortTypes] ([ShortId], [ShortCode], [ShortName], [CompanyId]) VALUES (3, N'S/S  ', N'SOUND', 1)
INSERT [dbo].[ShortTypes] ([ShortId], [ShortCode], [ShortName], [CompanyId]) VALUES (4, N'TR', N'TORN', 1)
SET IDENTITY_INSERT [dbo].[ShortTypes] OFF
/****** Object:  Table [dbo].[estates]    Script Date: 05/12/2017 17:00:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[estates](
	[estateId] [int] IDENTITY(1,1) NOT NULL,
	[estate] [varchar](100) NOT NULL,
	[estatecode] [varchar](50) NULL,
	[companyid] [int] NOT NULL,
 CONSTRAINT [PK_estates] PRIMARY KEY CLUSTERED 
(
	[estateId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[estates] ON
INSERT [dbo].[estates] ([estateId], [estate], [estatecode], [companyid]) VALUES (2, N'JADABPUR', N'JAD', 1)
INSERT [dbo].[estates] ([estateId], [estate], [estatecode], [companyid]) VALUES (3, N'STEWARTHOLL(I)LTD', N'KIM', 1)
INSERT [dbo].[estates] ([estateId], [estate], [estatecode], [companyid]) VALUES (4, N'KOKRAJHAR', N'KOK', 1)
INSERT [dbo].[estates] ([estateId], [estate], [estatecode], [companyid]) VALUES (5, N'SATKHAYA', N'SKH', 1)
INSERT [dbo].[estates] ([estateId], [estate], [estatecode], [companyid]) VALUES (6, N'KOOMBER TEA CO. PVT. LTD', N'KBR', 1)
INSERT [dbo].[estates] ([estateId], [estate], [estatecode], [companyid]) VALUES (7, N'JOGES CHANDRA', N'JCH', 1)
INSERT [dbo].[estates] ([estateId], [estate], [estatecode], [companyid]) VALUES (9, N'Kolkata Test Estate', N'KTE', 1)
INSERT [dbo].[estates] ([estateId], [estate], [estatecode], [companyid]) VALUES (10, N'Glenburn Tea Estate', N'GTE', 1)
INSERT [dbo].[estates] ([estateId], [estate], [estatecode], [companyid]) VALUES (11, N'Banyan Grove on Gatoonga Tea Estate', N'BGTE', 1)
SET IDENTITY_INSERT [dbo].[estates] OFF
/****** Object:  Table [dbo].[customers]    Script Date: 05/12/2017 17:00:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[customers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[customername] [varchar](100) NOT NULL,
	[customerphone] [varchar](50) NOT NULL,
	[customeraddress] [varchar](50) NULL,
	[companyid] [int] NOT NULL,
 CONSTRAINT [PK_customers] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[customers] ON
INSERT [dbo].[customers] ([id], [customername], [customerphone], [customeraddress], [companyid]) VALUES (2, N'ROSSEL INDUSTRIES LTD', N'033-24709-986', NULL, 1)
INSERT [dbo].[customers] ([id], [customername], [customerphone], [customeraddress], [companyid]) VALUES (3, N'WASHABARI TEA ESTATE', N'9874141533', NULL, 1)
INSERT [dbo].[customers] ([id], [customername], [customerphone], [customeraddress], [companyid]) VALUES (4, N'MOHURGONG & GULMA T.ES.', N'9874141533', NULL, 1)
INSERT [dbo].[customers] ([id], [customername], [customerphone], [customeraddress], [companyid]) VALUES (5, N'McLEOD RUSSEL INDIA LTD.', N'9874141533', NULL, 1)
INSERT [dbo].[customers] ([id], [customername], [customerphone], [customeraddress], [companyid]) VALUES (6, N'ASSAM COMPANY(I) LTD.', N'9875845696', NULL, 1)
INSERT [dbo].[customers] ([id], [customername], [customerphone], [customeraddress], [companyid]) VALUES (7, N'MORAN TEA CO (I) LTD.', N'9874141533', NULL, 1)
INSERT [dbo].[customers] ([id], [customername], [customerphone], [customeraddress], [companyid]) VALUES (8, N'AMGOORIE INDIA LTD.', N'9874141533', NULL, 1)
INSERT [dbo].[customers] ([id], [customername], [customerphone], [customeraddress], [companyid]) VALUES (9, N'GOODRICKE GROUP LTD.', N'9874141533', NULL, 1)
INSERT [dbo].[customers] ([id], [customername], [customerphone], [customeraddress], [companyid]) VALUES (10, N'STEWART HOLL(INDIA) LTD.', N'9874141533', NULL, 1)
INSERT [dbo].[customers] ([id], [customername], [customerphone], [customeraddress], [companyid]) VALUES (11, N'KIRAN TEA ESTATES PVT LTD.', N'9874141533', NULL, 1)
INSERT [dbo].[customers] ([id], [customername], [customerphone], [customeraddress], [companyid]) VALUES (12, N'NUCLEUS TEA &PLANTATION P.LTD.', N'9874141533', NULL, 1)
INSERT [dbo].[customers] ([id], [customername], [customerphone], [customeraddress], [companyid]) VALUES (15, N'LOPCHU TEA CO LTD.', N'033-24704-155', NULL, 1)
INSERT [dbo].[customers] ([id], [customername], [customerphone], [customeraddress], [companyid]) VALUES (16, N'SIANGTEA & INDUSTRIES (P) LTD.', N'+91 9870125693', NULL, 1)
INSERT [dbo].[customers] ([id], [customername], [customerphone], [customeraddress], [companyid]) VALUES (17, N'PARAMOUNDTEA MAR(P)LTD', N'033-2569-2363', NULL, 1)
INSERT [dbo].[customers] ([id], [customername], [customerphone], [customeraddress], [companyid]) VALUES (18, N'WTA LIMITED', N'9874125393', NULL, 1)
INSERT [dbo].[customers] ([id], [customername], [customerphone], [customeraddress], [companyid]) VALUES (19, N'CAMELLIA TEA GROUP (P) LTD', N'9874412525', NULL, 1)
INSERT [dbo].[customers] ([id], [customername], [customerphone], [customeraddress], [companyid]) VALUES (21, N'KARBI PLANTATIONS (P) LTD', N'1234567891', NULL, 1)
INSERT [dbo].[customers] ([id], [customername], [customerphone], [customeraddress], [companyid]) VALUES (22, N'ROSSELL INDUSTRIES LTD', N'1234567891', NULL, 1)
INSERT [dbo].[customers] ([id], [customername], [customerphone], [customeraddress], [companyid]) VALUES (23, N'KOOMBER TEA CO.PVT LTD.', N'1234567891', NULL, 1)
INSERT [dbo].[customers] ([id], [customername], [customerphone], [customeraddress], [companyid]) VALUES (24, N'Dhruba Tea House', N'1234567891', N'78/1 M.Road
Kolkata :700001', 1)
SET IDENTITY_INSERT [dbo].[customers] OFF
/****** Object:  Table [dbo].[arrivalDamageBags]    Script Date: 05/12/2017 17:00:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[arrivalDamageBags](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[damageTypeId] [int] NULL,
	[noofpackage] [decimal](12, 2) NULL,
	[net] [decimal](12, 2) NULL,
	[arrivalDtlId] [int] NULL,
	[serial] [int] NULL,
 CONSTRAINT [PK_arrivalDamageBags] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[arrivalDamageBags] ON
INSERT [dbo].[arrivalDamageBags] ([id], [damageTypeId], [noofpackage], [net], [arrivalDtlId], [serial]) VALUES (7, 1, NULL, CAST(30.00 AS Decimal(12, 2)), 4, 101)
INSERT [dbo].[arrivalDamageBags] ([id], [damageTypeId], [noofpackage], [net], [arrivalDtlId], [serial]) VALUES (8, 2, NULL, CAST(30.00 AS Decimal(12, 2)), 4, 102)
INSERT [dbo].[arrivalDamageBags] ([id], [damageTypeId], [noofpackage], [net], [arrivalDtlId], [serial]) VALUES (9, 2, NULL, CAST(30.00 AS Decimal(12, 2)), 1, 1002)
INSERT [dbo].[arrivalDamageBags] ([id], [damageTypeId], [noofpackage], [net], [arrivalDtlId], [serial]) VALUES (10, 1, NULL, CAST(30.00 AS Decimal(12, 2)), 5, 101)
INSERT [dbo].[arrivalDamageBags] ([id], [damageTypeId], [noofpackage], [net], [arrivalDtlId], [serial]) VALUES (11, 5, NULL, CAST(30.00 AS Decimal(12, 2)), 5, 102)
INSERT [dbo].[arrivalDamageBags] ([id], [damageTypeId], [noofpackage], [net], [arrivalDtlId], [serial]) VALUES (12, 2, NULL, CAST(30.00 AS Decimal(12, 2)), 6, 2)
INSERT [dbo].[arrivalDamageBags] ([id], [damageTypeId], [noofpackage], [net], [arrivalDtlId], [serial]) VALUES (13, 1, NULL, CAST(30.00 AS Decimal(12, 2)), 7, 231)
INSERT [dbo].[arrivalDamageBags] ([id], [damageTypeId], [noofpackage], [net], [arrivalDtlId], [serial]) VALUES (14, 5, NULL, CAST(30.00 AS Decimal(12, 2)), 7, 233)
INSERT [dbo].[arrivalDamageBags] ([id], [damageTypeId], [noofpackage], [net], [arrivalDtlId], [serial]) VALUES (15, 2, NULL, CAST(30.00 AS Decimal(12, 2)), 8, 1003)
INSERT [dbo].[arrivalDamageBags] ([id], [damageTypeId], [noofpackage], [net], [arrivalDtlId], [serial]) VALUES (16, 5, NULL, CAST(30.00 AS Decimal(12, 2)), 8, 1001)
INSERT [dbo].[arrivalDamageBags] ([id], [damageTypeId], [noofpackage], [net], [arrivalDtlId], [serial]) VALUES (17, 1, NULL, CAST(20.00 AS Decimal(12, 2)), 9, 1501)
INSERT [dbo].[arrivalDamageBags] ([id], [damageTypeId], [noofpackage], [net], [arrivalDtlId], [serial]) VALUES (18, 3, NULL, CAST(30.00 AS Decimal(12, 2)), 10, 201)
INSERT [dbo].[arrivalDamageBags] ([id], [damageTypeId], [noofpackage], [net], [arrivalDtlId], [serial]) VALUES (19, 6, NULL, CAST(30.00 AS Decimal(12, 2)), 10, 202)
INSERT [dbo].[arrivalDamageBags] ([id], [damageTypeId], [noofpackage], [net], [arrivalDtlId], [serial]) VALUES (20, 7, NULL, CAST(30.00 AS Decimal(12, 2)), 10, 205)
SET IDENTITY_INSERT [dbo].[arrivalDamageBags] OFF
/****** Object:  Table [dbo].[Packages]    Script Date: 05/12/2017 17:00:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Packages](
	[PackageId] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](50) NULL,
	[Description] [varchar](250) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CompanyId] [int] NOT NULL,
 CONSTRAINT [PK_Packages] PRIMARY KEY CLUSTERED 
(
	[PackageId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Packages] ON
INSERT [dbo].[Packages] ([PackageId], [Code], [Description], [IsActive], [CompanyId]) VALUES (1, N'TG-100', N'Tea Gold 100GM', 1, 1)
INSERT [dbo].[Packages] ([PackageId], [Code], [Description], [IsActive], [CompanyId]) VALUES (3, N'SMG-250', N'Samrat GOLD 250 gram', 1, 1)
INSERT [dbo].[Packages] ([PackageId], [Code], [Description], [IsActive], [CompanyId]) VALUES (4, N'PG-100', N'Premium 100 Gram', 1, 1)
SET IDENTITY_INSERT [dbo].[Packages] OFF
/****** Object:  StoredProcedure [dbo].[usp_autoNumberGeneration]    Script Date: 05/12/2017 17:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		ABHIK
-- Create date: 18/04/2017
-- Description:	generate auto number
-- =============================================
CREATE PROCEDURE [dbo].[usp_autoNumberGeneration] 
	-- Add the parameters for the stored procedure here
	@companyid int,
	@yearid int,
	@module varchar(50),
	@autonumber varchar(MAX) OUTPUT
	
	
AS
BEGIN
	
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	DECLARE @lastSerial int =0;
	DECLARE @nextSrlNumber int;
	DECLARE @noofdigit int;
	
	DECLARE @PREFIX varchar(50)
	DECLARE @SUFFIX varchar(50)

    -- Insert statements for procedure here
    BEGIN TRAN
	select @lastSerial= serialMaster.serialnum ,
		   @PREFIX = serialMaster.prefix,
		   @SUFFIX = serialMaster.suffix
	from serialMaster 
	WITH   (HOLDLOCK, ROWLOCK)
	where 
	serialMaster.companyId = @companyid AND serialMaster.yearId = @yearid
	AND serialMaster.module = @module;
	
	SET @nextSrlNumber = (@lastSerial + 1) --for update
	
	SELECT @noofdigit= LEN(CAST(@lastSerial as int))
	
	IF @noofdigit=1
		SET @autonumber = @PREFIX+'/'+ '0000'+ CAST(@lastSerial AS varchar(50))+'/'+@SUFFIX
	ELSE IF @noofdigit =2
		SET @autonumber = @PREFIX+'/'+ '000'+ CAST(@lastSerial AS varchar(50))+'/'+@SUFFIX
	ELSE IF @noofdigit =3
		SET @autonumber = @PREFIX+'/'+ '00'+ CAST(@lastSerial AS varchar(50))+'/'+@SUFFIX
	ELSE IF @noofdigit = 4
		SET @autonumber = @PREFIX+'/'+ '0'+ CAST(@lastSerial AS varchar(50))+'/'+@SUFFIX
	ELSE
		SET @autonumber = @PREFIX+'/'+  CAST(@lastSerial AS varchar(50))+'/'+@SUFFIX
	
	UPDATE serialMaster
	SET serialnum = @nextSrlNumber
	WHERE 
	serialMaster.companyId = @companyid AND serialMaster.yearId = @yearid
	AND serialMaster.module = @module;
				
	COMMIT TRAN
END
GO
/****** Object:  StoredProcedure [dbo].[usp_arrivalDetailUpdate]    Script Date: 05/12/2017 17:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Abhik Ghosh
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[usp_arrivalDetailUpdate] 
	-- Add the parameters for the stored procedure here
	@arrivalDetailId int,
	
	@arrivalId int,
	@invoice varchar(100),
	@grade varchar(100)=null,
	@package decimal(12,2)=null,
	@yearofproduction varchar(100)=null,
	@pkgsrlfrm int,
	@pkgsrlto int,
	@invoicequantity decimal(12,2),
	@receivequantity decimal(12,2),
	@gross decimal(12,2),
	@tare decimal(12,2) = null,
	@net decimal(12,2),
	@floorId int
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE [arrivalDetail]
   SET [arrivalId] = @arrivalId
      ,[invoice] = @invoice
      ,[grade] = @grade
      ,[package] = @package
      ,[yearofproduction] = @yearofproduction
      ,[pkgsrlfrm] = @pkgsrlfrm
      ,[pkgsrlto] = @pkgsrlto
      ,[invoicequantity] = @invoicequantity
      ,[receivequantity] = @receivequantity
      ,[gross] = @gross
      ,[tare] = @tare
      ,[net] = @net
      ,[floorId] = @floorId
 WHERE [arrivalDetail].id =@arrivalDetailId
END
GO
/****** Object:  StoredProcedure [dbo].[usp_arrivalDetailInsertion]    Script Date: 05/12/2017 17:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Abhik
-- Create date: 08/05/2017
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[usp_arrivalDetailInsertion] 
	-- Add the parameters for the stored procedure here
	@arrivalId int,
	@invoice varchar(100),
	@grade varchar,
	@package int =NULL,
	@yearofproduction varchar(100)=NULL,
	@pkgsrlfrm int,
	@pkgsrlto int,
	@invoicequantity decimal(12,2),
	@receivequantity decimal(12,2),
	@gross decimal(12,2),
	@tare decimal(12,2)=NULL,
	@net decimal(12,2),
	@floorId int,
	
	@lastInsertId int OUTPUT
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    INSERT INTO [ssinternational_data].[dbo].[arrivalDetail]
           ([arrivalId]
           ,[invoice]
           ,[grade]
           ,[package]
           ,[yearofproduction]
           ,[pkgsrlfrm]
           ,[pkgsrlto]
           ,[invoicequantity]
           ,[receivequantity]
           ,[gross]
           ,[tare]
           ,[net]
           ,[floorId])
     VALUES
           ( @arrivalId,
			 @invoice,
			 @grade, 
			 @package,
			 @yearofproduction,
			 @pkgsrlfrm, 
			 @pkgsrlto, 
			 @invoicequantity, 
			 @receivequantity, 
			 @gross, 
			 @tare, 
			 @net, 
			 @floorId)
			 
SET @lastInsertId =SCOPE_IDENTITY();			 
	
END
GO
/****** Object:  StoredProcedure [dbo].[Usp_DamageTypeUpdate]    Script Date: 05/12/2017 17:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Shibsankar
-- Create date: 18-03-2017
-- Description:	Damage Type Update
-- =============================================
CREATE PROCEDURE [dbo].[Usp_DamageTypeUpdate]
	-- Add the parameters for the stored procedure here
    @DamageId int ,
	@DamageCode varchar(20),
	@Description varchar(120)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE [dbo].[DamageTypes]
   SET [DamageCode] = @DamageCode
      ,[Description] = @Description
 WHERE DamageId=@DamageId
           
        
END
GO
/****** Object:  StoredProcedure [dbo].[Usp_DamageTypesGetByDamageId]    Script Date: 05/12/2017 17:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Shibsankar
-- Create date: 18-03-2017
-- Description:	Damage Type GetBy DamageId
-- =============================================
CREATE PROCEDURE [dbo].[Usp_DamageTypesGetByDamageId]
	-- Add the parameters for the stored procedure here
	@DamageId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [DamageId]
      ,[DamageCode]
      ,[Description]
  FROM [dbo].[DamageTypes]
  where DamageId=@DamageId
END
GO
/****** Object:  StoredProcedure [dbo].[Usp_DamageTypesGetAll]    Script Date: 05/12/2017 17:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Shibsankar
-- Create date: 18-03-2017
-- Description:	Damage Type Get All
-- =============================================
CREATE PROCEDURE [dbo].[Usp_DamageTypesGetAll]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [DamageId]
      ,[DamageCode]
      ,[Description]
  FROM [dbo].[DamageTypes]
END
GO
/****** Object:  StoredProcedure [dbo].[Usp_DamageTypesDeleteByDamageId]    Script Date: 05/12/2017 17:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Shibsankar
-- Create date: 18-03-2017
-- Description:	Damage Type Delete DamageId
-- =============================================
CREATE PROCEDURE [dbo].[Usp_DamageTypesDeleteByDamageId]
	-- Add the parameters for the stored procedure here
	@DamageId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Delete
  FROM [dbo].[DamageTypes]
  where DamageId=@DamageId
END
GO
/****** Object:  StoredProcedure [dbo].[Usp_DamageTypeInsert]    Script Date: 05/12/2017 17:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Shibsankar
-- Create date: 18-03-2017
-- Description:	Damage Type Insert
-- =============================================
CREATE PROCEDURE [dbo].[Usp_DamageTypeInsert] 
	-- Add the parameters for the stored procedure here
    @DamageId int out,
	@DamageCode varchar(20),
	@Description varchar(120)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [dbo].[DamageTypes]
           ([DamageCode]
           ,[Description])
     VALUES
           (@DamageCode, 
           @Description)
           
           Set @DamageId=SCOPE_IDENTITY();
END
GO
/****** Object:  StoredProcedure [dbo].[usp_checkuser]    Script Date: 05/12/2017 17:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_checkuser]
	-- Add the parameters for the stored procedure here
	@login varchar(100),
	@password varchar(100),
	@userid int output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	declare @hshpassword varchar(100);

	 set @hshpassword = HASHBYTES('MD5',@password) ; 
	 set @userid =0;

	 SELECT @userid=[users].[userid] from [users] where [users].[password]=@hshpassword AND users.[login]=@login;
    -- Insert statements for procedure here
	print @userid;
END
GO
/****** Object:  StoredProcedure [dbo].[usp_getArrivalDetailById]    Script Date: 05/12/2017 17:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Abhik Ghosh
-- Create date: 09/05/2017
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_getArrivalDetailById]
	-- Add the parameters for the stored procedure here
	@arrivalMasterId int,@arrivalDetailId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [id]
      ,[arrivalDetail].arrivalId
      ,[invoice]
      ,[grade]
      ,[package]
      ,[yearofproduction]
      ,[pkgsrlfrm]
      ,[pkgsrlto]
      ,[invoicequantity]
      ,[receivequantity]
      ,[gross]
      ,[tare]
      ,[net]
      ,[floorId]
  FROM [arrivalDetail]
  
  WHERE arrivalDetail.arrivalId =@arrivalMasterId 
  AND arrivalDetail.id = @arrivalDetailId
END
GO
/****** Object:  StoredProcedure [dbo].[usp_getCompanyNameById]    Script Date: 05/12/2017 17:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Abhik Ghosh
-- Create date: 14/03/2016
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[usp_getCompanyNameById] 
	-- Add the parameters for the stored procedure here
	@companyId int,
	@companyName varchar(100) output 
	  
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET @companyName = '';
    -- Insert statements for procedure here
	SELECT @companyName=companies.companyname FROM companies WHERE companies.companyid= @companyId;

	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_getcompanylist]    Script Date: 05/12/2017 17:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_getcompanylist]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here


SELECT [companyid]
      ,[companyname]
      ,[companyaddress]
      ,[companystate]
      ,[companypin]
      ,[companytin]
      ,[companypanypan]
      ,[companytan]
  FROM [companies] ORDER BY companyname



END
GO
/****** Object:  StoredProcedure [dbo].[usp_getNumberofArrivalInvoice]    Script Date: 05/12/2017 17:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Abhik
-- Create date: 08/05/2017
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[usp_getNumberofArrivalInvoice] 
	-- Add the parameters for the stored procedure here
	@arrivalId int,
	@numberofinvoice int output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET @numberofinvoice =0;
    -- Insert statements for procedure here
	SELECT @numberofinvoice = COUNT(*) from  arrivalDetail 
	WHERE arrivalDetail.arrivalId  =@arrivalId
END
GO
/****** Object:  StoredProcedure [dbo].[usp_getInvoiceFormat]    Script Date: 05/12/2017 17:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Abhik
-- Create date: 21/03/2017
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[usp_getInvoiceFormat] 
	-- Add the parameters for the stored procedure here
	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT invoiceformat.id,invoiceformat.invoiceformat from invoiceformat order by invoiceformat.id
END
GO
/****** Object:  StoredProcedure [dbo].[usp_getFiscalList]    Script Date: 05/12/2017 17:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_getFiscalList]
	-- Add the parameters for the stored procedure here
AS	
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here


SELECT [fiscalid]
      ,[startdate]
      ,[enddate]
      ,[fiscalyear]
  FROM [financialyears];





	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_getUserDataById]    Script Date: 05/12/2017 17:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Abhik
-- Create date: 06/03/2017
-- Description:	Get user data
-- =============================================
CREATE PROCEDURE [dbo].[usp_getUserDataById] 
	-- Add the parameters for the stored procedure here
	@userid int  
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT users.userid,users.firstname,users.lastname,users.[login],users.[logintime],users.[dateofcreation]
	FROM  users where users.userid = @userid;
END
GO
/****** Object:  StoredProcedure [dbo].[usp_updateuserlogintime]    Script Date: 05/12/2017 17:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Abhik
-- Create date: 08/03/2016
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[usp_updateuserlogintime] 
	-- Add the parameters for the stored procedure here
	@userId int = 0
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here


UPDATE [users]
   SET
		[logintime] = GETDATE()
 WHERE [users].userid = @userId



	---
END
GO
/****** Object:  Table [dbo].[Warehouses]    Script Date: 05/12/2017 17:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Warehouses](
	[WarehouseId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Description] [varchar](250) NULL,
	[CompanyId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Warehouses] PRIMARY KEY CLUSTERED 
(
	[WarehouseId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Warehouses] ON
INSERT [dbo].[Warehouses] ([WarehouseId], [Name], [Description], [CompanyId], [IsActive]) VALUES (2, N'UNITY-2', N' In efficitur, risus et facilisis convallis, o', 1, 1)
INSERT [dbo].[Warehouses] ([WarehouseId], [Name], [Description], [CompanyId], [IsActive]) VALUES (3, N'Unity-236', N'Unity-236 - Budge Budge', 1, 1)
INSERT [dbo].[Warehouses] ([WarehouseId], [Name], [Description], [CompanyId], [IsActive]) VALUES (4, N'UNITY-3', N' In efficitur, risus et facilisis convallis, o', 1, 1)
INSERT [dbo].[Warehouses] ([WarehouseId], [Name], [Description], [CompanyId], [IsActive]) VALUES (5, N'UNITYBENERPOOL              ', N'UNITYBENERPOOL ', 1, 1)
SET IDENTITY_INSERT [dbo].[Warehouses] OFF
/****** Object:  StoredProcedure [dbo].[Usp_WarehouseUpdateIsActive]    Script Date: 05/12/2017 17:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Shibsankar
-- Create date: 17-03-2017
-- Description:	Warehouse Get All  By CompanyId
-- =============================================
CREATE PROCEDURE [dbo].[Usp_WarehouseUpdateIsActive]
	-- Add the parameters for the stored procedure here
@WarehouseId int 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	
  
  declare @ActiveStatus bit
	set @ActiveStatus=0
	SELECT @ActiveStatus=[dbo].[Warehouses].[IsActive]
  FROM [dbo].[Warehouses] Where WarehouseId=@WarehouseId
  
  if(@ActiveStatus=1)
  begin
  Update [dbo].[Warehouses] Set [dbo].[Warehouses].[IsActive]=0  Where WarehouseId=@WarehouseId
  end
  else
  begin
  Update [dbo].[Warehouses] Set [dbo].[Warehouses].[IsActive]=1  Where WarehouseId=@WarehouseId
  end
  
END
GO
/****** Object:  StoredProcedure [dbo].[Usp_WarehouseUpdate]    Script Date: 05/12/2017 17:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Shibsankar
-- Create date: 17-03-2017
-- Description:	Update Warehouse
-- =============================================
CREATE PROCEDURE [dbo].[Usp_WarehouseUpdate] 
	-- Add the parameters for the stored procedure here
	@Name varchar(50),
    @Description varchar(250),
    @CompanyId int,
    @WarehouseId int 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE [dbo].[Warehouses]
   SET [Name] = @Name
      ,[Description] = @Description
      ,[CompanyId] = @CompanyId
 WHERE WarehouseId=@WarehouseId
END
GO
/****** Object:  StoredProcedure [dbo].[Usp_WarehousesInsert]    Script Date: 05/12/2017 17:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Shibsankar
-- Create date: 17-03-2017
-- Description:	Insert Warehouse
-- =============================================
CREATE PROCEDURE [dbo].[Usp_WarehousesInsert]
	-- Add the parameters for the stored procedure here
	@Name varchar(50),
    @Description varchar(250),
    @CompanyId int,
    @WarehouseId int Out
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [dbo].[Warehouses]
           ([Name]
           ,[Description]
           ,[CompanyId]
           ,[IsActive])
     VALUES
           (@Name,
           @Description,
           @CompanyId
           ,1)
         Set @WarehouseId=SCOPE_IDENTITY();
END
GO
/****** Object:  StoredProcedure [dbo].[Usp_WarehouseGetById]    Script Date: 05/12/2017 17:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Shibsankar
-- Create date: 17-03-2017
-- Description:	Warehouse Get By Id
-- =============================================
CREATE PROCEDURE [dbo].[Usp_WarehouseGetById] 
	-- Add the parameters for the stored procedure here
@WarehouseId int 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT  [WarehouseId]
      ,[Name]
      ,[Description]
      ,[CompanyId]
      ,[IsActive]
  FROM [dbo].[Warehouses]
END
GO
/****** Object:  StoredProcedure [dbo].[Usp_WarehouseGetAllByCompanyId]    Script Date: 05/12/2017 17:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Shibsankar
-- Create date: 17-03-2017
-- Description:	Warehouse Get All  By CompanyId
-- =============================================
CREATE PROCEDURE [dbo].[Usp_WarehouseGetAllByCompanyId]
	-- Add the parameters for the stored procedure here
@CompanyId int 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT  [WarehouseId]
      ,[Name]
      ,[Description]
      ,[CompanyId]
      ,[IsActive]
  FROM [dbo].[Warehouses]
  Where CompanyId=@CompanyId 
END
GO
/****** Object:  StoredProcedure [dbo].[Usp_WarehouseGetActiveByCompanyId]    Script Date: 05/12/2017 17:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Shibsankar
-- Create date: 17-03-2017
-- Description:	Warehouse Get All Active By CompanyId
-- =============================================
CREATE PROCEDURE [dbo].[Usp_WarehouseGetActiveByCompanyId]
	-- Add the parameters for the stored procedure here
@CompanyId int 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT  [WarehouseId]
      ,[Name]
      ,[Description]
      ,[CompanyId]
      ,[IsActive]
  FROM [dbo].[Warehouses]
  Where CompanyId=@CompanyId and IsActive=1;
END
GO
/****** Object:  StoredProcedure [dbo].[Usp_WarehouseDelete]    Script Date: 05/12/2017 17:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Shibsankar
-- Create date: 17-03-2017
-- Description:	Delete Warehouse
-- =============================================
CREATE PROCEDURE [dbo].[Usp_WarehouseDelete] 
	-- Add the parameters for the stored procedure here
	@WarehouseId int
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Delete FROM [dbo].[Warehouses] Where WarehouseId=@WarehouseId
  
END
GO
/****** Object:  StoredProcedure [dbo].[Usp_ShortTypeUpdate]    Script Date: 05/12/2017 17:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Shibsanakar
-- Create date: 18-03-2017
-- Description:	Shorttype Update
-- =============================================
CREATE PROCEDURE [dbo].[Usp_ShortTypeUpdate] 
	-- Add the parameters for the stored procedure here
	@ShortCode varchar(10),
	@ShortName varchar(50),
	@CompanyId int,
	@ShortId Int 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
UPDATE [dbo].[ShortTypes]
   SET [ShortCode] = @ShortCode
      ,[ShortName] = @ShortName
      ,[CompanyId] = @CompanyId
 WHERE ShortId=@ShortId
END
GO
/****** Object:  StoredProcedure [dbo].[Usp_ShortTypeInsert]    Script Date: 05/12/2017 17:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Shibsankar
-- Create date: 18-03-2017
-- Description:	Short Type Insert
-- =============================================
CREATE PROCEDURE [dbo].[Usp_ShortTypeInsert] 
	-- Add the parameters for the stored procedure here
	
	@ShortCode varchar(10),
	@ShortName varchar(50),
	@CompanyId int,
	@ShortId Int Out
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO [dbo].[ShortTypes]
           ([ShortCode]
           ,[ShortName]
           ,[CompanyId])
     VALUES
           (@ShortCode
           ,@ShortName
           ,@CompanyId)
           
           Set @ShortId=Scope_Identity();
END
GO
/****** Object:  StoredProcedure [dbo].[Usp_ShortTypeGetById]    Script Date: 05/12/2017 17:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Shibsankar
-- Create date: 18-03-2017
-- Description:	Get  ShortType  By ShortId
-- =============================================
CREATE PROCEDURE [dbo].[Usp_ShortTypeGetById]
	-- Add the parameters for the stored procedure here
	@ShortId int
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [ShortId]
      ,[ShortCode]
      ,[ShortName]
      ,[CompanyId]
  FROM [dbo].[ShortTypes] Where ShortId=@ShortId
End
GO
/****** Object:  StoredProcedure [dbo].[Usp_ShortTypeGetAll]    Script Date: 05/12/2017 17:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Shibsankar
-- Create date: 18-03-2017
-- Description:	Get All ShortType
-- =============================================
CREATE PROCEDURE [dbo].[Usp_ShortTypeGetAll] 
	-- Add the parameters for the stored procedure here
	-- @CompanyId int
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [ShortId]
      ,[ShortCode]
      ,[ShortName]
      ,[CompanyId]
  FROM [dbo].[ShortTypes] ORDER BY [ShortTypes].[ShortCode]
End
GO
/****** Object:  StoredProcedure [dbo].[Usp_ShortTypeDeleteById]    Script Date: 05/12/2017 17:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Shibsankar
-- Create date: 18-03-2017
-- Description:	Delete  ShortType  By ShortId
-- =============================================
CREATE PROCEDURE [dbo].[Usp_ShortTypeDeleteById]
	-- Add the parameters for the stored procedure here
	@ShortId int
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Delete
  FROM [dbo].[ShortTypes] Where ShortId=@ShortId
End
GO
/****** Object:  StoredProcedure [dbo].[Usp_PackegeInsert]    Script Date: 05/12/2017 17:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Shibsankar
-- Create date: 17-03-2017
-- Description:	Insert Package
-- =============================================
CREATE PROCEDURE [dbo].[Usp_PackegeInsert] 
	-- Add the parameters for the stored procedure here
	@Code varchar(50),
    @Description varchar(250),
    
    @ComapnyId int,
    @PackageId int Out
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [dbo].[Packages]
           ([Code]
           ,[Description]
           ,[IsActive]
           ,[CompanyId])
     VALUES
           (@Code
           ,@Description
           ,1
           ,@ComapnyId)
           
           set @PackageId=SCOPE_IDENTITY();
END
GO
/****** Object:  StoredProcedure [dbo].[Usp_PackageUpdateIsActive]    Script Date: 05/12/2017 17:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Shibsankar
-- Create date: 17-03-2017
-- Description:	IsActive state Update Package
-- =============================================
CREATE PROCEDURE [dbo].[Usp_PackageUpdateIsActive]
	-- Add the parameters for the stored procedure here
	@PackageId int 
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	 declare @ActiveStatus bit
	set @ActiveStatus=0
	SELECT @ActiveStatus=[dbo].[Packages].[IsActive]
  FROM [dbo].[Packages] Where PackageId=@PackageId
  
  if(@ActiveStatus=1)
  begin
  Update [dbo].[Packages] Set [dbo].[Packages].[IsActive]=0  Where PackageId=@PackageId
  end
  else
  begin
  Update [dbo].[Packages] Set [dbo].[Packages].[IsActive]=1  Where PackageId=@PackageId
  end
  
 
END
GO
/****** Object:  StoredProcedure [dbo].[Usp_PackageUpdate]    Script Date: 05/12/2017 17:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Shibsankar
-- Create date: 17-03-2017
-- Description:	Update Package
-- =============================================
CREATE PROCEDURE [dbo].[Usp_PackageUpdate] 
	-- Add the parameters for the stored procedure here
	@Code varchar(50),
    @Description varchar(250),   
    @ComapnyId int,
    @PackageId int 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE[dbo].[Packages]
   SET [Code] = @Code
      ,[Description] = @Description
      
      ,[CompanyId] = @ComapnyId
 WHERE PackageId=@PackageId
END
GO
/****** Object:  StoredProcedure [dbo].[Usp_PackageGetById]    Script Date: 05/12/2017 17:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Shibsankar
-- Create date: 17-03-2017
-- Description:	Get Package By Id
-- =============================================
CREATE PROCEDURE [dbo].[Usp_PackageGetById] 
	-- Add the parameters for the stored procedure here
	@PackageId int 
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT  [PackageId]
      ,[Code]
      ,[Description]
      ,[IsActive]
      ,[CompanyId]
  FROM [dbo].[Packages]
  where PackageId=@PackageId
END
GO
/****** Object:  StoredProcedure [dbo].[Usp_PackageGetAllByComapnyId]    Script Date: 05/12/2017 17:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Shibsankar
-- Create date: 17-03-2017
-- Description:	Get All Package By CompanyId
-- =============================================
CREATE PROCEDURE [dbo].[Usp_PackageGetAllByComapnyId]
	-- Add the parameters for the stored procedure here
	@CompanyId int 
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT  [PackageId]
      ,[Code]
      ,[Description]
      ,[IsActive]
      ,[CompanyId]
  FROM [dbo].[Packages]
  where CompanyId=@CompanyId 
END
GO
/****** Object:  StoredProcedure [dbo].[Usp_PackageGetActiveByComapnyId]    Script Date: 05/12/2017 17:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Shibsankar
-- Create date: 17-03-2017
-- Description:	Get All Active Package By CompanyId
-- =============================================
CREATE PROCEDURE [dbo].[Usp_PackageGetActiveByComapnyId]
	-- Add the parameters for the stored procedure here
	@CompanyId int 
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [PackageId]
      ,[Code]
      ,[Description]
      ,[IsActive]
      ,[CompanyId]
  FROM [dbo].[Packages]
  where CompanyId=@CompanyId and IsActive=1
END
GO
/****** Object:  StoredProcedure [dbo].[Usp_PackageDelete]    Script Date: 05/12/2017 17:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Shibsankar
-- Create date: 17-03-2017
-- Description:	Delete Package
-- =============================================
CREATE PROCEDURE [dbo].[Usp_PackageDelete]
	-- Add the parameters for the stored procedure here
	@PackageId int 
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	
  Delete From [dbo].[Packages] Where PackageId=@PackageId
END
GO
/****** Object:  StoredProcedure [dbo].[usp_getListEstates]    Script Date: 05/12/2017 17:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Abhik Ghosh
-- Create date: 14/03/2017
-- Description:	get List of Estates
-- =============================================
CREATE PROCEDURE [dbo].[usp_getListEstates] 
	-- Add the parameters for the stored procedure here
	@companyid int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here


		SELECT [estateId]
			  ,[estate]
			  ,[estatecode]
			  ,[companyid]
		  FROM [dbo].[estates]
		  WHERE [dbo].[estates].[companyid] =@companyid


	---
END
GO
/****** Object:  StoredProcedure [dbo].[usp_getCustomerList]    Script Date: 05/12/2017 17:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Abhik
-- Create date: 10-03-2017
-- Description:	Get customer list
-- =============================================
CREATE PROCEDURE [dbo].[usp_getCustomerList] 
	@companyId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [id]
      ,[customername]
      ,[customerphone]
      ,[customeraddress]
      ,[companyid]
   FROM [customers] WHERE [customers].[companyid]=@companyId
	 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_getArrivedDamageBagDetailById]    Script Date: 05/12/2017 17:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Abhik
-- Create date: 09/05/2017
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[usp_getArrivedDamageBagDetailById] 
	-- Add the parameters for the stored procedure here
	@arrivalDetailId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [id]
      ,[damageTypeId]
      ,DamageTypes.DamageCode
      ,[noofpackage]
      ,[net]
      ,[arrivalDamageBags].arrivalDtlId
      ,[serial]
  FROM [arrivalDamageBags]
  
  INNER JOIN
  DamageTypes ON arrivalDamageBags.damageTypeId = DamageTypes.DamageId
  WHERE arrivalDamageBags.arrivalDtlId = @arrivalDetailId
END
GO
/****** Object:  StoredProcedure [dbo].[usp_estatetUpdate]    Script Date: 05/12/2017 17:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Abhik
-- Create date: 14/03/2016
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[usp_estatetUpdate] 
	-- Add the parameters for the stored procedure here
	@estateId int,
	@estate varchar(100),
	@estatecode varchar(50) = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
  UPDATE [dbo].[estates]
   SET 
       [estate] = @estate
      ,[estatecode] = @estatecode
      
   WHERE [estateId]=@estateId;
END
GO
/****** Object:  StoredProcedure [dbo].[usp_estateInsertion]    Script Date: 05/12/2017 17:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Abhik Ghosh
-- Create date: 14/03/2017
-- Description:	insertion of estates
-- =============================================
CREATE PROCEDURE [dbo].[usp_estateInsertion] 
	-- Add the parameters for the stored procedure here
	@estate varchar(100),
	@estatecode varchar(50) = null,
	@companyid int,
	@lastInsertId int output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [dbo].[estates]
           (
			[estate]
           ,[estatecode]
           ,[companyid])
     VALUES
           (@estate,@estatecode,@companyid)

 set @lastInsertId =SCOPE_IDENTITY();

END
GO
/****** Object:  StoredProcedure [dbo].[usp_estateDelete]    Script Date: 05/12/2017 17:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Abhik
-- Create date: 14/03/2017
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[usp_estateDelete] 
	-- Add the parameters for the stored procedure here
	@estateId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DELETE FROM [dbo].[estates] WHERE [dbo].[estates].[estateId] = @estateId
END
GO
/****** Object:  StoredProcedure [dbo].[usp_estateById]    Script Date: 05/12/2017 17:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Abhik
-- Create date: 14/03/2017
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[usp_estateById] 
	-- Add the parameters for the stored procedure here
	@estateId int 
	  
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT [estateId]
      ,[estate]
      ,[estatecode]
      ,[companyid]
  FROM [dbo].[estates] WHERE [estates].estateId = @estateId
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_customerUpdate]    Script Date: 05/12/2017 17:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Abhik
-- Create date: 10-03-2017
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[usp_customerUpdate] 
	-- Add the parameters for the stored procedure here
	@id int,
	@customername varchar(100),
	@customerphone varchar(50),
	@customeraddress varchar(100) = NULL  -- NULL default value
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE [customers]
   SET [customername] = @customername
      ,[customerphone] = @customerphone
      ,[customeraddress] = @customeraddress
      
 WHERE customers.id =@id
END
GO
/****** Object:  StoredProcedure [dbo].[usp_customerInsert]    Script Date: 05/12/2017 17:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Abhik
-- Create date: 10-03-2017
-- Description:	Insertion
-- =============================================
CREATE PROCEDURE [dbo].[usp_customerInsert] 
	-- Add the parameters for the stored procedure here
	@customername varchar(100),
	@customerphone varchar(50),
	@customeraddress varchar(100)  = NULL , -- NULL default value,
	@companyid int,
	@lastInsertId int output

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [customers]
           ([customername]
           ,[customerphone]
           ,[customeraddress]
           ,[companyid])
     VALUES
           (@customername,@customerphone,@customeraddress,@companyid);
	SET @lastInsertId = SCOPE_IDENTITY();
END
GO
/****** Object:  StoredProcedure [dbo].[usp_customerDelete]    Script Date: 05/12/2017 17:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Abhik
-- Create date: 13-03-2017
-- Description:	Deletion of customer
-- =============================================
CREATE PROCEDURE [dbo].[usp_customerDelete] 
	-- Add the parameters for the stored procedure here
	@customerId int  
	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Delete from [customers] where [customers].id =@customerId
END
GO
/****** Object:  StoredProcedure [dbo].[usp_customerById]    Script Date: 05/12/2017 17:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Abhik
-- Create date: 100-03-2016
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[usp_customerById] 
	-- Add the parameters for the stored procedure here
	@id int  
	  
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [id]
      ,[customername]
      ,[customerphone]
      ,[customeraddress]
      ,[companyid]
   FROM [dbo].[customers] WHERE [customers].id =@id
END
GO
/****** Object:  StoredProcedure [dbo].[usp_arrivalDamgeBagDetailDeleteById]    Script Date: 05/12/2017 17:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		ABhik
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[usp_arrivalDamgeBagDetailDeleteById] 
	-- Add the parameters for the stored procedure here
	@arrivalDetailId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DELETE FROM arrivalDamageBags WHERE arrivalDamageBags.arrivalDtlId =@arrivalDetailId
END
GO
/****** Object:  StoredProcedure [dbo].[usp_arrivalDamageBagDetailInsertion]    Script Date: 05/12/2017 17:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Abhik
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[usp_arrivalDamageBagDetailInsertion] 
	-- Add the parameters for the stored procedure here
	@damageTypeId int,
	@noofpackage decimal(12,2)=NULL,
	@net decimal(12,2)=NULL,
	@arrivalDtlId int=NULL,
	@serial int =NULL



AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [ssinternational_data].[dbo].[arrivalDamageBags]
           ([damageTypeId]
           ,[noofpackage]
           ,[net]
           ,[arrivalDtlId]
           ,[serial])
     VALUES
           (@damageTypeId
           ,@noofpackage 
           ,@net 
           ,@arrivalDtlId 
           ,@serial)



	
	
	
END
GO
/****** Object:  Table [dbo].[Brokers]    Script Date: 05/12/2017 17:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Brokers](
	[BrokerId] [int] IDENTITY(1,1) NOT NULL,
	[BrokerCode] [varchar](20) NULL,
	[BrokerName] [varchar](150) NOT NULL,
	[EstateId] [int] NULL,
 CONSTRAINT [PK_Brokers] PRIMARY KEY CLUSTERED 
(
	[BrokerId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Brokers] ON
INSERT [dbo].[Brokers] ([BrokerId], [BrokerCode], [BrokerName], [EstateId]) VALUES (1, N'CM', N'CARRIT MORAN                  ', 3)
INSERT [dbo].[Brokers] ([BrokerId], [BrokerCode], [BrokerName], [EstateId]) VALUES (2, N'JT', N'J. THOMAS & COMPANY           ', NULL)
INSERT [dbo].[Brokers] ([BrokerId], [BrokerCode], [BrokerName], [EstateId]) VALUES (3, N'SC', N'SUDHIR CHATTERJEE             ', 7)
INSERT [dbo].[Brokers] ([BrokerId], [BrokerCode], [BrokerName], [EstateId]) VALUES (4, N'CT', N'CONTEMPORARY BROKERS (P) LTD  ', 9)
INSERT [dbo].[Brokers] ([BrokerId], [BrokerCode], [BrokerName], [EstateId]) VALUES (5, N'SL', N'SELLER                        ', 2)
INSERT [dbo].[Brokers] ([BrokerId], [BrokerCode], [BrokerName], [EstateId]) VALUES (6, N'PC', N'PARCON(I) PVT LTD.            ', NULL)
INSERT [dbo].[Brokers] ([BrokerId], [BrokerCode], [BrokerName], [EstateId]) VALUES (7, N'AB', N'ASSAM BROKER CO               ', NULL)
INSERT [dbo].[Brokers] ([BrokerId], [BrokerCode], [BrokerName], [EstateId]) VALUES (8, N'AS', N'ASSOCIOTED BROKER.            ', NULL)
INSERT [dbo].[Brokers] ([BrokerId], [BrokerCode], [BrokerName], [EstateId]) VALUES (9, N'PM', N'PARAMOUNT TEA MAR (P) LTD     ', NULL)
INSERT [dbo].[Brokers] ([BrokerId], [BrokerCode], [BrokerName], [EstateId]) VALUES (10, N'WD', N'WITHDRAWN DO                  ', NULL)
INSERT [dbo].[Brokers] ([BrokerId], [BrokerCode], [BrokerName], [EstateId]) VALUES (11, N'AH', N'AHMAD TEA                     ', NULL)
INSERT [dbo].[Brokers] ([BrokerId], [BrokerCode], [BrokerName], [EstateId]) VALUES (12, N'AT', N'ASSAM TEA BROKERS             ', NULL)
INSERT [dbo].[Brokers] ([BrokerId], [BrokerCode], [BrokerName], [EstateId]) VALUES (14, N'TTT', N'TESTSS', 2)
INSERT [dbo].[Brokers] ([BrokerId], [BrokerCode], [BrokerName], [EstateId]) VALUES (15, N'aaa', N'aaaa', NULL)
SET IDENTITY_INSERT [dbo].[Brokers] OFF
/****** Object:  Table [dbo].[arrivalShortBags]    Script Date: 05/12/2017 17:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[arrivalShortBags](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[shortTypeId] [int] NOT NULL,
	[shortpackage] [decimal](12, 2) NULL,
	[shortPkgNet] [decimal](12, 2) NULL,
	[arrivalDtlId] [int] NULL,
	[serial] [int] NULL,
 CONSTRAINT [PK_arrivalShortBags] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[arrivalShortBags] ON
INSERT [dbo].[arrivalShortBags] ([id], [shortTypeId], [shortpackage], [shortPkgNet], [arrivalDtlId], [serial]) VALUES (3, 1, NULL, CAST(28.00 AS Decimal(12, 2)), 4, 152)
INSERT [dbo].[arrivalShortBags] ([id], [shortTypeId], [shortpackage], [shortPkgNet], [arrivalDtlId], [serial]) VALUES (4, 3, NULL, CAST(28.00 AS Decimal(12, 2)), 5, 150)
INSERT [dbo].[arrivalShortBags] ([id], [shortTypeId], [shortpackage], [shortPkgNet], [arrivalDtlId], [serial]) VALUES (5, 1, NULL, CAST(28.00 AS Decimal(12, 2)), 6, 3)
INSERT [dbo].[arrivalShortBags] ([id], [shortTypeId], [shortpackage], [shortPkgNet], [arrivalDtlId], [serial]) VALUES (6, 3, NULL, CAST(28.00 AS Decimal(12, 2)), 7, 234)
INSERT [dbo].[arrivalShortBags] ([id], [shortTypeId], [shortpackage], [shortPkgNet], [arrivalDtlId], [serial]) VALUES (7, 4, NULL, CAST(16.00 AS Decimal(12, 2)), 8, 1005)
INSERT [dbo].[arrivalShortBags] ([id], [shortTypeId], [shortpackage], [shortPkgNet], [arrivalDtlId], [serial]) VALUES (8, 4, NULL, CAST(20.00 AS Decimal(12, 2)), 9, 1600)
INSERT [dbo].[arrivalShortBags] ([id], [shortTypeId], [shortpackage], [shortPkgNet], [arrivalDtlId], [serial]) VALUES (9, 1, NULL, CAST(28.00 AS Decimal(12, 2)), 10, 206)
INSERT [dbo].[arrivalShortBags] ([id], [shortTypeId], [shortpackage], [shortPkgNet], [arrivalDtlId], [serial]) VALUES (10, 3, NULL, CAST(27.00 AS Decimal(12, 2)), 10, 209)
SET IDENTITY_INSERT [dbo].[arrivalShortBags] OFF
/****** Object:  Table [dbo].[gardens]    Script Date: 05/12/2017 17:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[gardens](
	[gardenId] [int] IDENTITY(1,1) NOT NULL,
	[gardenname] [varchar](100) NOT NULL,
	[gardencode] [varchar](50) NULL,
	[customerid] [int] NULL,
	[companyid] [int] NOT NULL,
	[invoiceformatid] [int] NULL,
	[gardenalias] [varchar](100) NULL,
 CONSTRAINT [PK_gardens] PRIMARY KEY CLUSTERED 
(
	[gardenId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [gardenCode] ON [dbo].[gardens] 
(
	[gardencode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[gardens] ON
INSERT [dbo].[gardens] ([gardenId], [gardenname], [gardencode], [customerid], [companyid], [invoiceformatid], [gardenalias]) VALUES (1, N'Avongrove', N'AG', 3, 1, 1, NULL)
INSERT [dbo].[gardens] ([gardenId], [gardenname], [gardencode], [customerid], [companyid], [invoiceformatid], [gardenalias]) VALUES (2, N'Barnesbeg', N'BG0001', 4, 1, 1, N'BARNSBEG')
INSERT [dbo].[gardens] ([gardenId], [gardenname], [gardencode], [customerid], [companyid], [invoiceformatid], [gardenalias]) VALUES (3, N'Wayanad', N'WC', 9, 1, 1, N'WAAND')
INSERT [dbo].[gardens] ([gardenId], [gardenname], [gardencode], [customerid], [companyid], [invoiceformatid], [gardenalias]) VALUES (8, N'MUNNAR', N'MUN', 3, 1, 2, N'M-00001')
INSERT [dbo].[gardens] ([gardenId], [gardenname], [gardencode], [customerid], [companyid], [invoiceformatid], [gardenalias]) VALUES (13, N'TEST', N'T0001', 8, 1, 0, N'AST')
SET IDENTITY_INSERT [dbo].[gardens] OFF
/****** Object:  Table [dbo].[floors]    Script Date: 05/12/2017 17:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[floors](
	[floorId] [int] IDENTITY(1,1) NOT NULL,
	[floorName] [varchar](100) NOT NULL,
	[warehouseId] [int] NOT NULL,
 CONSTRAINT [PK_floors] PRIMARY KEY CLUSTERED 
(
	[floorId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[floors] ON
INSERT [dbo].[floors] ([floorId], [floorName], [warehouseId]) VALUES (2, N'L0001', 2)
SET IDENTITY_INSERT [dbo].[floors] OFF
/****** Object:  Table [dbo].[unloadingmaster]    Script Date: 05/12/2017 17:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[unloadingmaster](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[unloadingnumber] [varchar](max) NOT NULL,
	[receiptdate] [date] NOT NULL,
	[lotnumber] [varchar](50) NOT NULL,
	[gardenid] [int] NOT NULL,
	[carrier] [varchar](100) NULL,
	[lorrynum] [varchar](50) NULL,
	[brokerid] [int] NULL,
	[warehouseid] [int] NULL,
	[cnno] [varchar](50) NULL,
	[cndate] [datetime] NULL,
	[gpno] [varchar](50) NULL,
	[wbno] [varchar](50) NULL,
	[companyid] [int] NOT NULL,
	[yearid] [int] NOT NULL,
 CONSTRAINT [PK_unloadingmaster] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[unloadingmaster] ON
INSERT [dbo].[unloadingmaster] ([id], [unloadingnumber], [receiptdate], [lotnumber], [gardenid], [carrier], [lorrynum], [brokerid], [warehouseid], [cnno], [cndate], [gpno], [wbno], [companyid], [yearid]) VALUES (5, N'UNL/00012/17-18', CAST(0xC33C0B00 AS Date), N'123', 13, N'Nabin Transporter', N'WB20AB3122', 2, 2, N'122', CAST(0x0000A76800000000 AS DateTime), N'001202', N'WB00012', 1, 2)
INSERT [dbo].[unloadingmaster] ([id], [unloadingnumber], [receiptdate], [lotnumber], [gardenid], [carrier], [lorrynum], [brokerid], [warehouseid], [cnno], [cndate], [gpno], [wbno], [companyid], [yearid]) VALUES (6, N'UNL/00013/17-18', CAST(0xC33C0B00 AS Date), N'L00123', 2, N'Nabin', N'Wb00012', 1, 2, NULL, NULL, NULL, NULL, 1, 2)
INSERT [dbo].[unloadingmaster] ([id], [unloadingnumber], [receiptdate], [lotnumber], [gardenid], [carrier], [lorrynum], [brokerid], [warehouseid], [cnno], [cndate], [gpno], [wbno], [companyid], [yearid]) VALUES (7, N'UNL/00014/17-18', CAST(0xCA3C0B00 AS Date), N'L00012', 8, N'SUDARSHAN LT', N'WB 20 AB 3122', 6, 3, N'C0000420', CAST(0x0000A76F00000000 AS DateTime), N'G/05/02/222', N'1234/1256', 1, 2)
INSERT [dbo].[unloadingmaster] ([id], [unloadingnumber], [receiptdate], [lotnumber], [gardenid], [carrier], [lorrynum], [brokerid], [warehouseid], [cnno], [cndate], [gpno], [wbno], [companyid], [yearid]) VALUES (8, N'UNL/00015/17-18', CAST(0xC93C0B00 AS Date), N'ABC', 2, N'asdsadad', N'sasda', 14, 3, N'sadsad', CAST(0x0000A77600000000 AS DateTime), NULL, NULL, 1, 2)
INSERT [dbo].[unloadingmaster] ([id], [unloadingnumber], [receiptdate], [lotnumber], [gardenid], [carrier], [lorrynum], [brokerid], [warehouseid], [cnno], [cndate], [gpno], [wbno], [companyid], [yearid]) VALUES (9, N'UNL/00016/17-18', CAST(0x643D0B00 AS Date), N'L/000123', 1, N'NABIN', N'WB/012', 1, 2, NULL, NULL, NULL, NULL, 1, 2)
SET IDENTITY_INSERT [dbo].[unloadingmaster] OFF
/****** Object:  StoredProcedure [dbo].[Usp_BrokerUpdate]    Script Date: 05/12/2017 17:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Shibsankar
-- Create date: 18-03-2016
-- Description:	Broker Update
-- =============================================
CREATE PROCEDURE [dbo].[Usp_BrokerUpdate]
	-- Add the parameters for the stored procedure here
	 
      @BrokerCode Varchar(20),
      @BrokerName varchar(50),
      @EstateId int,
      @BrokerId int 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE [dbo].[Brokers]
   SET [BrokerCode] =@BrokerCode
      ,[BrokerName] = @BrokerName
      ,[EstateId] = @EstateId
 WHERE BrokerId=@BrokerId
           
           Set @BrokerId=Scope_Identity();
END
GO
/****** Object:  StoredProcedure [dbo].[Usp_BrokerInsert]    Script Date: 05/12/2017 17:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Shibsankar
-- Create date: 18-03-2016
-- Description:	Broker Insert
-- =============================================
CREATE PROCEDURE [dbo].[Usp_BrokerInsert] 
	-- Add the parameters for the stored procedure here
	 
      @BrokerCode Varchar(20),
      @BrokerName varchar(50),
      @EstateId int,
      @BrokerId int Out
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [dbo].[Brokers]
           ([BrokerCode]
           ,[BrokerName]
           ,[EstateId])
     VALUES
           (@BrokerCode
           ,@BrokerName
           ,@EstateId)
           
           Set @BrokerId=Scope_Identity();
END
GO
/****** Object:  StoredProcedure [dbo].[Usp_BrokerGetById]    Script Date: 05/12/2017 17:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Shibsankar
-- Create date: 18-03-2017
-- Description:	Get All Broker
-- =============================================
Create PROCEDURE [dbo].[Usp_BrokerGetById] 
	-- Add the parameters for the stored procedure here
@BrokerId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT  [BrokerId]
      ,[BrokerCode]
      ,[BrokerName]
      ,[Brokers].[EstateId]
      ,[estates].estate as EstateName
  FROM [dbo].[Brokers]
  Left Join [dbo].[estates] on [dbo].[estates].estateId=[dbo].[Brokers].EstateId
  where BrokerId=@BrokerId
END
GO
/****** Object:  StoredProcedure [dbo].[Usp_BrokerGetAll]    Script Date: 05/12/2017 17:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Shibsankar
-- Create date: 18-03-2017
-- Description:	Get All Broker
-- =============================================
Create PROCEDURE [dbo].[Usp_BrokerGetAll] 
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT  [BrokerId]
      ,[BrokerCode]
      ,[BrokerName]
      ,[Brokers].[EstateId]
      ,[estates].estate as EstateName
  FROM [dbo].[Brokers]
  Left Join [dbo].[estates] on [dbo].[estates].estateId=[dbo].[Brokers].EstateId
END
GO
/****** Object:  StoredProcedure [dbo].[Usp_BrokerDeleteById]    Script Date: 05/12/2017 17:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Shibsankar
-- Create date: 18-03-2017
-- Description:	Get All Broker
-- =============================================
Create PROCEDURE [dbo].[Usp_BrokerDeleteById] 
	-- Add the parameters for the stored procedure here
@BrokerId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Delete
  FROM [dbo].[Brokers]
  
  where BrokerId=@BrokerId
END
GO
/****** Object:  StoredProcedure [dbo].[usp_arrivalShortBagDetailDeleteById]    Script Date: 05/12/2017 17:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Abhik
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[usp_arrivalShortBagDetailDeleteById] 
	-- Add the parameters for the stored procedure here
	@arrivalDetailId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DELETE FROM arrivalShortBags WHERE arrivalShortBags.arrivalDtlId=@arrivalDetailId
END
GO
/****** Object:  StoredProcedure [dbo].[usp_arrivalShortBadDetailInsertion]    Script Date: 05/12/2017 17:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Abhik
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[usp_arrivalShortBadDetailInsertion] 
	-- Add the parameters for the stored procedure here
		@shortTypeId int,
		@shortpackage decimal(12,2)=NULL,
		@shortPkgNet decimal(12,2),
		@arrivalDtlId int=NULL,
		@serial int =NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [arrivalShortBags]
           ([shortTypeId]
           ,[shortpackage]
           ,[shortPkgNet]
           ,[arrivalDtlId]
           ,[serial])
     VALUES
           (@shortTypeId
           ,@shortpackage
           ,@shortPkgNet
           ,@arrivalDtlId
           ,@serial)
END
GO
/****** Object:  StoredProcedure [dbo].[usp_gardenUpdate]    Script Date: 05/12/2017 17:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Abhik
-- Create date: 16/03/2017
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[usp_gardenUpdate] 
	-- Add the parameters for the stored procedure here
	 @gardenId int,
	 @gardenname varchar(100),
	 @gardencode varchar(50),
	 @customerid int =null,
	 @invoiceformatid int =null,
	 @gardenalias varchar(100) =null,
	 @companyid  int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
UPDATE [dbo].[gardens]
   SET [gardenname] = @gardenname
      ,[gardencode] = @gardencode
      ,[customerid] = @customerid
      ,[companyid] = @companyid
	  ,[invoiceformatid]=@invoiceformatid
	  ,[gardenalias] = @gardenalias
  WHERE [gardens].gardenId=@gardenId
END
GO
/****** Object:  StoredProcedure [dbo].[usp_gardenInsertion]    Script Date: 05/12/2017 17:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		usp_gardenInsertion
-- Create date: 16/03/2017
-- Description:	
-- =============================================
CREATE PROCEDURE  [dbo].[usp_gardenInsertion]
	-- Add the parameters for the stored procedure here
	@gardenname varchar(100),
	@gardencode varchar(50) = Null,
	@customerid int = null,
	@companyid int,
	@invoiceformatid int =null,
	@gardenalias varchar(100) =null,
	@lastInsertId int output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [dbo].[gardens]
           ([gardenname]
           ,[gardencode]
           ,[customerid]
           ,[companyid],[invoiceformatid],[gardenalias])
     VALUES
           (@gardenname
           ,@gardencode
           ,@customerid
           ,@companyid,@invoiceformatid,@gardenalias)

	SET @lastInsertId = SCOPE_IDENTITY();
END
GO
/****** Object:  StoredProcedure [dbo].[usp_gardenDelete]    Script Date: 05/12/2017 17:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Abhik
-- Create date: 16/03/2017
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[usp_gardenDelete] 
	-- Add the parameters for the stored procedure here
	@gardenId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DELETE FROM [dbo].[gardens]
      WHERE [gardens].[gardenId]=@gardenId
END
GO
/****** Object:  StoredProcedure [dbo].[usp_gardenById]    Script Date: 05/12/2017 17:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Abhik Ghosh
-- Create date: 16/03/2017
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[usp_gardenById] 

	-- Add the parameters for the stored procedure here
	@gardenId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [gardens].[gardenId]
      ,[gardens].[gardenname]
      ,[gardens].[gardencode]
      ,[gardens].[customerid]
      ,[gardens].[companyid]
	  ,[customers].customername
	  ,[gardens].invoiceformatid
	  ,[gardens].gardenalias
	  ,[invoiceformat].invoiceformat
  FROM [gardens]
  LEFT JOIN
  [customers] ON [gardens].customerid = [customers].id
  LEFT JOIN
  [invoiceformat] ON [gardens].invoiceformatid = [invoiceformat].id
  WHERE [gardens].gardenId = @gardenId
END
GO
/****** Object:  StoredProcedure [dbo].[usp_GetArrivedShortBagDtlById]    Script Date: 05/12/2017 17:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Abhik
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[usp_GetArrivedShortBagDtlById] 
	-- Add the parameters for the stored procedure here
	@arrivalDetailId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [id]
      ,[shortTypeId]
      ,ShortTypes.ShortCode
      ,[shortpackage]
      ,[shortPkgNet]
      ,[arrivalShortBags].arrivalDtlId
      ,[serial]
		FROM [arrivalShortBags]
		
		INNER JOIN
		ShortTypes ON [arrivalShortBags].shortTypeId = ShortTypes.ShortId
		Where [arrivalShortBags].arrivalDtlId =@arrivalDetailId
END
GO
/****** Object:  StoredProcedure [dbo].[Usp_GetAllBroker]    Script Date: 05/12/2017 17:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Shibsankar
-- Create date: 18-03-2017
-- Description:	Get All Broker
-- =============================================
CREATE PROCEDURE [dbo].[Usp_GetAllBroker] 
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT  [BrokerId]
      ,[BrokerCode]
      ,[BrokerName]
      ,[Brokers].[EstateId]
      ,[estates].estate as EstateName
  FROM [dbo].[Brokers]
  Left Join [dbo].[estates] on [dbo].[estates].estateId=[dbo].[Brokers].EstateId
END
GO
/****** Object:  StoredProcedure [dbo].[usp_getFloorList]    Script Date: 05/12/2017 17:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Abhik
-- Create date: 24/03/2017
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[usp_getFloorList] 
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SELECT [floors].[floorId],[floors].[floorName],[floors].[warehouseId],
	[Warehouses].Name
	FROM [floors]
	INNER JOIN
	[Warehouses] ON [floors].[warehouseId] = [Warehouses].WarehouseId
	ORDER BY [floors].[floorName]
   
END
GO
/****** Object:  StoredProcedure [dbo].[usp_getGardenList]    Script Date: 05/12/2017 17:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Abhik Ghosh
-- Create date: 15/03/2017
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[usp_getGardenList] 
	-- Add the parameters for the stored procedure here
	@companyId int  
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	-- Insert statements for procedure here
	SELECT [gardens].[gardenId]
      ,[gardens].[gardenname]
      ,[gardens].[gardencode]
      ,[gardens].[customerid]
      ,[gardens].[companyid]
	  ,[customers].customername
	  ,[invoiceformat].invoiceformat
	  ,[invoiceformat].id
	  ,[gardens].gardenalias
  FROM [gardens]
  LEFT JOIN
  [customers] ON [gardens].customerid = [customers].id
  LEFT JOIN
  [invoiceformat] ON [gardens].invoiceformatid = [invoiceformat].id
  WHERE [gardens].companyid = @companyId
END
GO
/****** Object:  StoredProcedure [dbo].[usp_unloadmasterInsert]    Script Date: 05/12/2017 17:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		ABHIK
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[usp_unloadmasterInsert] 
	-- Add the parameters for the stored procedure here
	@unloadingnumber varchar(MAX),
	@receiptdate date,
	@lotnumber varchar(50),
	@gardenid int ,
	@carrier varchar(100) = NULL, 
	@lorrynum varchar(50) = NULL,
	@brokerid int ,
	@warehouseid int,
	@cnno varchar(50) = NULL,
	@cndate date = NULL,
	@gpno varchar(50) = NULL,
	@wbno varchar(50) = NULL,
	@companyid int,
	@yearid int,
	@lastInsertId int output
	
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [unloadingmaster]
           ([unloadingnumber]
           ,[receiptdate]
           ,[lotnumber]
           ,[gardenid]
           ,[carrier]
           ,[lorrynum]
           ,[brokerid]
           ,[warehouseid]
           ,[cnno]
           ,[cndate]
           ,[gpno]
           ,[wbno]
           ,[companyid],[yearid])
     VALUES
           (@unloadingnumber,@receiptdate,@lotnumber,@gardenid,@carrier,@lorrynum
           ,@brokerid,@warehouseid,@cnno,@cndate,@gpno,@wbno,@companyid,@yearid)
     set @lastInsertId =SCOPE_IDENTITY();      
END
GO
/****** Object:  StoredProcedure [dbo].[usp_unloadingmasterUpdate]    Script Date: 05/12/2017 17:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Abhik
-- Create date: 17/04/2017
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[usp_unloadingmasterUpdate] 
	-- Add the parameters for the stored procedure here
	@id int,
	
	@receiptdate date,
	@lotnumber varchar(50),
	@gardenid int ,
	@carrier varchar(100) = NULL, 
	@lorrynum varchar(50) = NULL,
	@brokerid int ,
	@warehouseid int,
	@cnno varchar(50) = NULL,
	@cndate date = NULL,
	@gpno varchar(50) = NULL,
	@wbno varchar(50) = NULL
	
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
UPDATE [unloadingmaster]
   SET 
       
       [receiptdate] = @receiptdate
      ,[lotnumber] = @lotnumber
      ,[gardenid] = @gardenid
      ,[carrier] = @carrier
      ,[lorrynum] = @lorrynum
      ,[brokerid] = @brokerid
      ,[warehouseid] = @warehouseid
      ,[cnno] = @cnno
      ,[cndate] = @cndate
      ,[gpno] = @gpno
      ,[wbno] = @wbno
WHERE id=@id

END
GO
/****** Object:  StoredProcedure [dbo].[usp_unloadingmasterDelete]    Script Date: 05/12/2017 17:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Aveek Ghosh [9874141533]
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[usp_unloadingmasterDelete] 
	-- Add the parameters for the stored procedure here
	@unloadmasterId int 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DELETE FROM unloadingmaster where unloadingmaster.id =@unloadmasterId
END
GO
/****** Object:  StoredProcedure [dbo].[usp_GetUnloadingmasterById]    Script Date: 05/12/2017 17:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Abhik
-- Create date: 17/04/2017
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[usp_GetUnloadingmasterById] 
	-- Add the parameters for the stored procedure here
	@unloadingmasterId int	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [id]
      ,[unloadingnumber]
      ,CONVERT(VARCHAR(10), [receiptdate], 103)as [receiptdate]
      ,[lotnumber]
      ,[gardenid]
      ,[carrier]
      ,[lorrynum]
      ,[brokerid]
      ,[warehouseid]
      ,[cnno]
      ,CONVERT(Varchar(10),[cndate],103) as [cndate]
      ,[gpno]
      ,[wbno]
      ,[companyid]
      ,[yearid]
  FROM [unloadingmaster]
  WHERE unloadingmaster.id=@unloadingmasterId



END
GO
/****** Object:  StoredProcedure [dbo].[usp_getGardenCode]    Script Date: 05/12/2017 17:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Aveek Ghosh
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[usp_getGardenCode] 
	-- Add the parameters for the stored procedure here
	@unloadMasterId int, 
	@gardencode varchar(100) output

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SET @gardencode=''
    -- Insert statements for procedure here
SELECT  @gardencode = gardens.gardencode

FROM
unloadingmaster
INNER JOIN
gardens ON unloadingmaster.gardenid = gardens.gardenId
LEFT JOIN
invoiceformat ON gardens.invoiceformatid = invoiceformat.id
WHERE unloadingmaster.id =@unloadMasterId
END
GO
/****** Object:  StoredProcedure [dbo].[usp_checkInvoiceFormat]    Script Date: 05/12/2017 17:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Aveek Ghosh
-- Create date: 03/05/2017
-- Description:	check invoice format
-- =============================================
CREATE PROCEDURE [dbo].[usp_checkInvoiceFormat] 
	-- Add the parameters for the stored procedure here
	@unloadingmasterId int,
	@invoiceFormatId int output
	

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
SET @invoiceFormatId=0
    -- Insert statements for procedure here
SELECT  @invoiceFormatId = ISNULL(invoiceformat.id, 0 )

FROM
unloadingmaster
INNER JOIN
gardens ON unloadingmaster.gardenid = gardens.gardenId
LEFT JOIN
invoiceformat ON gardens.invoiceformatid = invoiceformat.id
WHERE unloadingmaster.id =@unloadingmasterId

END
GO
/****** Object:  Table [dbo].[arrivalMaster]    Script Date: 05/12/2017 17:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[arrivalMaster](
	[arrivalId] [int] IDENTITY(1,1) NOT NULL,
	[unloadingId] [int] NULL,
	[arrivalNumber] [varchar](max) NOT NULL,
	[dateofarrival] [date] NOT NULL,
	[lotnumber] [varchar](50) NOT NULL,
	[gardenid] [int] NOT NULL,
	[carrier] [varchar](100) NULL,
	[lorrynum] [varchar](50) NULL,
	[brokerid] [int] NULL,
	[warehouseid] [int] NULL,
	[cnno] [varchar](50) NULL,
	[cndate] [datetime] NULL,
	[gpno] [varchar](50) NULL,
	[wbno] [varchar](50) NULL,
	[companyid] [int] NOT NULL,
	[yearid] [int] NOT NULL,
 CONSTRAINT [PK_arrivalMaster] PRIMARY KEY CLUSTERED 
(
	[arrivalId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[arrivalMaster] ON
INSERT [dbo].[arrivalMaster] ([arrivalId], [unloadingId], [arrivalNumber], [dateofarrival], [lotnumber], [gardenid], [carrier], [lorrynum], [brokerid], [warehouseid], [cnno], [cndate], [gpno], [wbno], [companyid], [yearid]) VALUES (4, 5, N'ARR/0001/23', CAST(0xC13C0B00 AS Date), N'L-00012', 2, N'ABC', N'WB0236', 2, 2, N'CN/0012/12''5', CAST(0x0000A76A00000000 AS DateTime), N'GP_0012', NULL, 1, 2)
INSERT [dbo].[arrivalMaster] ([arrivalId], [unloadingId], [arrivalNumber], [dateofarrival], [lotnumber], [gardenid], [carrier], [lorrynum], [brokerid], [warehouseid], [cnno], [cndate], [gpno], [wbno], [companyid], [yearid]) VALUES (10, NULL, N'ABCD/00122', CAST(0xC63C0B00 AS Date), N'L00012', 8, N'XY-Nax', N'ABC123', 4, 3, N'000236', CAST(0x0000A76B00000000 AS DateTime), N'G-0002', N'23', 1, 2)
INSERT [dbo].[arrivalMaster] ([arrivalId], [unloadingId], [arrivalNumber], [dateofarrival], [lotnumber], [gardenid], [carrier], [lorrynum], [brokerid], [warehouseid], [cnno], [cndate], [gpno], [wbno], [companyid], [yearid]) VALUES (12, 7, N'XYS/123', CAST(0xCA3C0B00 AS Date), N'L00012', 8, N'SUDARSHAN LT', N'WB 20 AB 3122', 6, 3, N'C0000420', CAST(0x0000A76F00000000 AS DateTime), N'G/05/02/222', N'1234/1256', 1, 2)
INSERT [dbo].[arrivalMaster] ([arrivalId], [unloadingId], [arrivalNumber], [dateofarrival], [lotnumber], [gardenid], [carrier], [lorrynum], [brokerid], [warehouseid], [cnno], [cndate], [gpno], [wbno], [companyid], [yearid]) VALUES (13, 6, N'123/ABHIK', CAST(0xCB3C0B00 AS Date), N'L00123', 2, N'Nabin', N'Wb00012', 1, 2, N'ABC', CAST(0x0000A76F00000000 AS DateTime), N'1223', NULL, 1, 2)
SET IDENTITY_INSERT [dbo].[arrivalMaster] OFF
/****** Object:  Table [dbo].[unloadingdetail]    Script Date: 05/12/2017 17:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[unloadingdetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[unloadingmasterid] [int] NOT NULL,
	[invoice] [varchar](100) NOT NULL,
	[grade] [varchar](100) NULL,
	[package] [decimal](12, 2) NULL,
	[yearofproduction] [varchar](100) NULL,
	[pkgsrlfrm] [int] NOT NULL,
	[pkgsrlto] [int] NOT NULL,
	[invoicequantity] [decimal](12, 2) NOT NULL,
	[receivequantity] [decimal](12, 2) NOT NULL,
	[gross] [decimal](12, 2) NOT NULL,
	[tare] [decimal](12, 2) NULL,
	[net] [decimal](12, 2) NOT NULL,
	[floorId] [int] NULL,
 CONSTRAINT [PK_unloadingdetail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[unloadingdetail] ON
INSERT [dbo].[unloadingdetail] ([id], [unloadingmasterid], [invoice], [grade], [package], [yearofproduction], [pkgsrlfrm], [pkgsrlto], [invoicequantity], [receivequantity], [gross], [tare], [net], [floorId]) VALUES (12, 5, N'1252/0012', N'BOPSM', CAST(300.00 AS Decimal(12, 2)), N'2008', 150, 199, CAST(50.00 AS Decimal(12, 2)), CAST(50.00 AS Decimal(12, 2)), CAST(30.20 AS Decimal(12, 2)), CAST(0.20 AS Decimal(12, 2)), CAST(30.00 AS Decimal(12, 2)), 2)
INSERT [dbo].[unloadingdetail] ([id], [unloadingmasterid], [invoice], [grade], [package], [yearofproduction], [pkgsrlfrm], [pkgsrlto], [invoicequantity], [receivequantity], [gross], [tare], [net], [floorId]) VALUES (13, 5, N'1236', N'CTC', CAST(200.00 AS Decimal(12, 2)), N'2004', 300, 350, CAST(51.00 AS Decimal(12, 2)), CAST(51.00 AS Decimal(12, 2)), CAST(30.00 AS Decimal(12, 2)), CAST(2.00 AS Decimal(12, 2)), CAST(32.00 AS Decimal(12, 2)), 2)
INSERT [dbo].[unloadingdetail] ([id], [unloadingmasterid], [invoice], [grade], [package], [yearofproduction], [pkgsrlfrm], [pkgsrlto], [invoicequantity], [receivequantity], [gross], [tare], [net], [floorId]) VALUES (14, 6, N'100', N'BOPSM', CAST(300.00 AS Decimal(12, 2)), N'2017', 230, 250, CAST(21.00 AS Decimal(12, 2)), CAST(21.00 AS Decimal(12, 2)), CAST(30.60 AS Decimal(12, 2)), CAST(0.60 AS Decimal(12, 2)), CAST(30.00 AS Decimal(12, 2)), 2)
INSERT [dbo].[unloadingdetail] ([id], [unloadingmasterid], [invoice], [grade], [package], [yearofproduction], [pkgsrlfrm], [pkgsrlto], [invoicequantity], [receivequantity], [gross], [tare], [net], [floorId]) VALUES (15, 6, N'ABC0012', N'BOPSM', CAST(200.00 AS Decimal(12, 2)), N'2007', 1000, 1020, CAST(21.00 AS Decimal(12, 2)), CAST(21.00 AS Decimal(12, 2)), CAST(20.30 AS Decimal(12, 2)), CAST(0.30 AS Decimal(12, 2)), CAST(20.00 AS Decimal(12, 2)), 2)
INSERT [dbo].[unloadingdetail] ([id], [unloadingmasterid], [invoice], [grade], [package], [yearofproduction], [pkgsrlfrm], [pkgsrlto], [invoicequantity], [receivequantity], [gross], [tare], [net], [floorId]) VALUES (16, 6, N'ABC00123', N'ORTHO', CAST(300.00 AS Decimal(12, 2)), N'1980', 1500, 2000, CAST(501.00 AS Decimal(12, 2)), CAST(501.00 AS Decimal(12, 2)), CAST(20.30 AS Decimal(12, 2)), CAST(0.30 AS Decimal(12, 2)), CAST(20.00 AS Decimal(12, 2)), 2)
INSERT [dbo].[unloadingdetail] ([id], [unloadingmasterid], [invoice], [grade], [package], [yearofproduction], [pkgsrlfrm], [pkgsrlto], [invoicequantity], [receivequantity], [gross], [tare], [net], [floorId]) VALUES (17, 6, N'BOP/BG0001/2/16-17', N'DUST', CAST(100.00 AS Decimal(12, 2)), N'1980', 200, 210, CAST(11.00 AS Decimal(12, 2)), CAST(11.00 AS Decimal(12, 2)), CAST(30.20 AS Decimal(12, 2)), CAST(0.20 AS Decimal(12, 2)), CAST(30.00 AS Decimal(12, 2)), 2)
INSERT [dbo].[unloadingdetail] ([id], [unloadingmasterid], [invoice], [grade], [package], [yearofproduction], [pkgsrlfrm], [pkgsrlto], [invoicequantity], [receivequantity], [gross], [tare], [net], [floorId]) VALUES (18, 7, N'100/MUN/100/15', N'BOPSM', CAST(1000.00 AS Decimal(12, 2)), N'1980', 100, 160, CAST(61.00 AS Decimal(12, 2)), CAST(61.00 AS Decimal(12, 2)), CAST(30.20 AS Decimal(12, 2)), CAST(0.20 AS Decimal(12, 2)), CAST(30.00 AS Decimal(12, 2)), 2)
INSERT [dbo].[unloadingdetail] ([id], [unloadingmasterid], [invoice], [grade], [package], [yearofproduction], [pkgsrlfrm], [pkgsrlto], [invoicequantity], [receivequantity], [gross], [tare], [net], [floorId]) VALUES (19, 7, N'10025/MUN/102/125', N'CTC', CAST(150.00 AS Decimal(12, 2)), N'1980', 1, 50, CAST(50.00 AS Decimal(12, 2)), CAST(50.00 AS Decimal(12, 2)), CAST(30.00 AS Decimal(12, 2)), CAST(0.20 AS Decimal(12, 2)), CAST(30.00 AS Decimal(12, 2)), 2)
SET IDENTITY_INSERT [dbo].[unloadingdetail] OFF
/****** Object:  Table [dbo].[shortBagDetail]    Script Date: 05/12/2017 17:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shortBagDetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[shortTypeId] [int] NOT NULL,
	[shortpackage] [decimal](12, 2) NULL,
	[shortPkgNet] [decimal](12, 2) NULL,
	[unloadingDetailId] [int] NULL,
	[serial] [int] NULL,
 CONSTRAINT [PK_shortBagDetail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[shortBagDetail] ON
INSERT [dbo].[shortBagDetail] ([id], [shortTypeId], [shortpackage], [shortPkgNet], [unloadingDetailId], [serial]) VALUES (18, 3, NULL, CAST(28.00 AS Decimal(12, 2)), 14, 234)
INSERT [dbo].[shortBagDetail] ([id], [shortTypeId], [shortpackage], [shortPkgNet], [unloadingDetailId], [serial]) VALUES (19, 4, NULL, CAST(16.00 AS Decimal(12, 2)), 15, 1005)
INSERT [dbo].[shortBagDetail] ([id], [shortTypeId], [shortpackage], [shortPkgNet], [unloadingDetailId], [serial]) VALUES (20, 4, NULL, CAST(20.00 AS Decimal(12, 2)), 16, 1600)
INSERT [dbo].[shortBagDetail] ([id], [shortTypeId], [shortpackage], [shortPkgNet], [unloadingDetailId], [serial]) VALUES (23, 1, NULL, CAST(28.00 AS Decimal(12, 2)), 17, 206)
INSERT [dbo].[shortBagDetail] ([id], [shortTypeId], [shortpackage], [shortPkgNet], [unloadingDetailId], [serial]) VALUES (24, 3, NULL, CAST(27.00 AS Decimal(12, 2)), 17, 209)
INSERT [dbo].[shortBagDetail] ([id], [shortTypeId], [shortpackage], [shortPkgNet], [unloadingDetailId], [serial]) VALUES (25, 3, NULL, CAST(28.00 AS Decimal(12, 2)), 18, 150)
INSERT [dbo].[shortBagDetail] ([id], [shortTypeId], [shortpackage], [shortPkgNet], [unloadingDetailId], [serial]) VALUES (26, 1, NULL, CAST(28.00 AS Decimal(12, 2)), 19, 3)
INSERT [dbo].[shortBagDetail] ([id], [shortTypeId], [shortpackage], [shortPkgNet], [unloadingDetailId], [serial]) VALUES (31, 4, NULL, CAST(28.00 AS Decimal(12, 2)), 12, 175)
INSERT [dbo].[shortBagDetail] ([id], [shortTypeId], [shortpackage], [shortPkgNet], [unloadingDetailId], [serial]) VALUES (32, 3, NULL, CAST(27.00 AS Decimal(12, 2)), 12, 185)
SET IDENTITY_INSERT [dbo].[shortBagDetail] OFF
/****** Object:  Table [dbo].[damageBagDtl]    Script Date: 05/12/2017 17:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[damageBagDtl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[damageTypeId] [int] NULL,
	[noofpackage] [decimal](12, 2) NULL,
	[net] [decimal](12, 2) NULL,
	[unloadingDtlId] [int] NULL,
	[serial] [int] NULL,
 CONSTRAINT [PK_damageBagDtl] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[damageBagDtl] ON
INSERT [dbo].[damageBagDtl] ([id], [damageTypeId], [noofpackage], [net], [unloadingDtlId], [serial]) VALUES (21, 1, NULL, CAST(30.00 AS Decimal(12, 2)), 13, 302)
INSERT [dbo].[damageBagDtl] ([id], [damageTypeId], [noofpackage], [net], [unloadingDtlId], [serial]) VALUES (26, 1, NULL, CAST(30.00 AS Decimal(12, 2)), 14, 231)
INSERT [dbo].[damageBagDtl] ([id], [damageTypeId], [noofpackage], [net], [unloadingDtlId], [serial]) VALUES (27, 5, NULL, CAST(30.00 AS Decimal(12, 2)), 14, 233)
INSERT [dbo].[damageBagDtl] ([id], [damageTypeId], [noofpackage], [net], [unloadingDtlId], [serial]) VALUES (28, 2, NULL, CAST(30.00 AS Decimal(12, 2)), 15, 1003)
INSERT [dbo].[damageBagDtl] ([id], [damageTypeId], [noofpackage], [net], [unloadingDtlId], [serial]) VALUES (29, 5, NULL, CAST(30.00 AS Decimal(12, 2)), 15, 1001)
INSERT [dbo].[damageBagDtl] ([id], [damageTypeId], [noofpackage], [net], [unloadingDtlId], [serial]) VALUES (31, 1, NULL, CAST(20.00 AS Decimal(12, 2)), 16, 1501)
INSERT [dbo].[damageBagDtl] ([id], [damageTypeId], [noofpackage], [net], [unloadingDtlId], [serial]) VALUES (35, 3, NULL, CAST(30.00 AS Decimal(12, 2)), 17, 201)
INSERT [dbo].[damageBagDtl] ([id], [damageTypeId], [noofpackage], [net], [unloadingDtlId], [serial]) VALUES (36, 6, NULL, CAST(30.00 AS Decimal(12, 2)), 17, 202)
INSERT [dbo].[damageBagDtl] ([id], [damageTypeId], [noofpackage], [net], [unloadingDtlId], [serial]) VALUES (37, 7, NULL, CAST(30.00 AS Decimal(12, 2)), 17, 205)
INSERT [dbo].[damageBagDtl] ([id], [damageTypeId], [noofpackage], [net], [unloadingDtlId], [serial]) VALUES (38, 1, NULL, CAST(30.00 AS Decimal(12, 2)), 18, 101)
INSERT [dbo].[damageBagDtl] ([id], [damageTypeId], [noofpackage], [net], [unloadingDtlId], [serial]) VALUES (39, 5, NULL, CAST(30.00 AS Decimal(12, 2)), 18, 102)
INSERT [dbo].[damageBagDtl] ([id], [damageTypeId], [noofpackage], [net], [unloadingDtlId], [serial]) VALUES (40, 2, NULL, CAST(30.00 AS Decimal(12, 2)), 19, 2)
INSERT [dbo].[damageBagDtl] ([id], [damageTypeId], [noofpackage], [net], [unloadingDtlId], [serial]) VALUES (45, 1, NULL, CAST(30.00 AS Decimal(12, 2)), 12, 160)
INSERT [dbo].[damageBagDtl] ([id], [damageTypeId], [noofpackage], [net], [unloadingDtlId], [serial]) VALUES (46, 5, NULL, CAST(30.00 AS Decimal(12, 2)), 12, 161)
SET IDENTITY_INSERT [dbo].[damageBagDtl] OFF
/****** Object:  StoredProcedure [dbo].[usp_arrivalMasterUpdate]    Script Date: 05/12/2017 17:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Abhik Ghosh
-- Create date: 04/05/2017
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[usp_arrivalMasterUpdate] 
	-- Add the parameters for the stored procedure here
		@arrivalId int,
		@unloadingId int,
		@arrivalNumber varchar(MAX),
		@dateofarrival date,
		@lotnumber varchar(50),
		@gardenid int,
		@carrier varchar(100)=NULL,
		@lorrynum varchar(50)=NULL,
		@brokerid int,
		@warehouseid int,
		@cnno varchar(50)=NULL,
		@cndate datetime=NULL,
		@gpno varchar(50)=NULL,
		@wbno varchar(50)=NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE [arrivalMaster]
   SET [unloadingId] = @unloadingId 
      ,[arrivalNumber] = @arrivalNumber 
      ,[dateofarrival] = @dateofarrival 
      ,[lotnumber] = @lotnumber 
      ,[gardenid] = @gardenid 
      ,[carrier] = @carrier
      ,[lorrynum] = @lorrynum
      ,[brokerid] = @brokerid 
      ,[warehouseid] = @warehouseid 
      ,[cnno] = @cnno
      ,[cndate] = @cndate
      ,[gpno] = @gpno 
      ,[wbno] = @wbno 
      
 WHERE 
arrivalMaster.arrivalId =@arrivalId
END
GO
/****** Object:  StoredProcedure [dbo].[usp_arrivalMasterList]    Script Date: 05/12/2017 17:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Abhik
-- Create date: 03/05/2017
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[usp_arrivalMasterList] 
	-- Add the parameters for the stored procedure here
	@companyId int,
	@yearid int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [arrivalMaster].[arrivalId]
      ,[arrivalMaster].[unloadingId]
      ,[arrivalMaster].[arrivalNumber]
      ,Convert(VARCHAR(10),CONVERT(date,[arrivalMaster].[dateofarrival],106),103)as dateofarrival
      
      ,[arrivalMaster].[lotnumber]
      ,[arrivalMaster].[gardenid]
      ,[arrivalMaster].[carrier]
      ,[arrivalMaster].[lorrynum]
      ,[arrivalMaster].[brokerid]
      ,[arrivalMaster].[warehouseid]
      ,[arrivalMaster].[cnno]
      ,[arrivalMaster].[cndate]
      ,[arrivalMaster].[gpno]
      ,[arrivalMaster].[wbno]
      ,[Brokers].BrokerName
      ,[unloadingmaster].unloadingnumber
      ,COUNT(arrivalDetail.id)as cnt
      ,[arrivalMaster].[companyid]
      ,[arrivalMaster].[yearid]
  FROM [arrivalMaster]
  LEFT JOIN
  unloadingmaster ON [arrivalMaster].[unloadingId] = unloadingmaster.id
  INNER JOIN   Brokers ON [arrivalMaster].[brokerid]=Brokers.BrokerId
  LEFT JOIN arrivalDetail ON arrivalMaster.arrivalId = arrivalDetail.arrivalId
  WHERE [arrivalMaster].[companyid] =@companyId  AND [arrivalMaster].[yearid] = @yearid
  GROUP BY 
  arrivalMaster.arrivalId
  ,[arrivalMaster].[unloadingId]
      ,[arrivalMaster].[arrivalNumber]
      ,[arrivalMaster].[dateofarrival]
      ,[arrivalMaster].[lotnumber]
      ,[arrivalMaster].[gardenid]
      ,[arrivalMaster].[carrier]
      ,[arrivalMaster].[lorrynum]
      ,[arrivalMaster].[brokerid]
      ,[arrivalMaster].[warehouseid]
      ,[arrivalMaster].[cnno]
      ,[arrivalMaster].[cndate]
      ,[arrivalMaster].[gpno]
      ,[arrivalMaster].[wbno]
      ,[Brokers].BrokerName
      ,[unloadingmaster].unloadingnumber
       ,[arrivalMaster].[companyid]
      ,[arrivalMaster].[yearid]
END
GO
/****** Object:  StoredProcedure [dbo].[usp_arrivalMasterInsertion]    Script Date: 05/12/2017 17:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Abhik Ghosh
-- Create date: 04/05/2017
-- Description:	Insertion of arrival master
-- =============================================
CREATE PROCEDURE [dbo].[usp_arrivalMasterInsertion]
	-- Add the parameters for the stored procedure here
		@unloadingId int =NULL,
		@arrivalNumber varchar,
		@dateofarrival date,
		@lotnumber varchar(50),
		@gardenid int,
		@carrier varchar(100)=NULL,
		@lorrynum varchar(50)=NULL,
		@brokerid int,
		@warehouseid int,
		@cnno varchar(50)=NULL,
		@cndate datetime=NULL,
		@gpno varchar(50)=NULL,
		@wbno varchar(50)=NULL,
		@companyid int,
		@yearid int,
		@lastinsertId int output
AS
BEGIN
	INSERT INTO [ssinternational_data].[dbo].[arrivalMaster]
           ([unloadingId]
           ,[arrivalNumber]
           ,[dateofarrival]
           ,[lotnumber]
           ,[gardenid]
           ,[carrier]
           ,[lorrynum]
           ,[brokerid]
           ,[warehouseid]
           ,[cnno]
           ,[cndate]
           ,[gpno]
           ,[wbno]
           ,[companyid]
           ,[yearid])
     VALUES
           (@unloadingId ,
		@arrivalNumber ,
		@dateofarrival ,
		@lotnumber ,
		@gardenid ,
		@carrier ,
		@lorrynum ,
		@brokerid ,
		@warehouseid ,
		@cnno ,
		@cndate ,
		@gpno ,
		@wbno ,
		@companyid ,
		@yearid )
		
		SET @lastinsertId =SCOPE_IDENTITY();
END
GO
/****** Object:  StoredProcedure [dbo].[usp_arrivalMasterGetById]    Script Date: 05/12/2017 17:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Abhik Ghosh
-- Create date: 04/05/2017
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[usp_arrivalMasterGetById]
	-- Add the parameters for the stored procedure here
	@arrivalId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [arrivalId]
      ,arrivalMaster.[unloadingId]
      ,arrivalMaster.[arrivalNumber]
      --,arrivalMaster.[dateofarrival]
      ,Convert(VARCHAR(10),CONVERT(date,[arrivalMaster].[dateofarrival],106),103)as dateofarrival
      ,arrivalMaster.[lotnumber]
      ,arrivalMaster.[gardenid]
      ,arrivalMaster.[carrier]
      ,arrivalMaster.[lorrynum]
      ,arrivalMaster.[brokerid]
      ,arrivalMaster.[warehouseid]
      ,arrivalMaster.[cnno]
      ,arrivalMaster.[cndate]
      ,arrivalMaster.[gpno]
      ,arrivalMaster.[wbno]
      ,arrivalMaster.[companyid]
      ,arrivalMaster.[yearid]
      ,unloadingmaster.unloadingnumber
      ,CONVERT(varchar(10),convert(date, unloadingmaster.receiptdate,106),103) as receiptdate
FROM [arrivalMaster]
LEFT JOIN unloadingmaster ON arrivalMaster.unloadingId = unloadingmaster.id
WHERE [arrivalMaster].[arrivalId] =@arrivalId
END
GO
/****** Object:  StoredProcedure [dbo].[usp_arrivalInvoiceList]    Script Date: 05/12/2017 17:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		ABHIK GHOSH
-- Create date: 05/03/2017
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[usp_arrivalInvoiceList] 
	-- Add the parameters for the stored procedure here
	  @arrivalMasterId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT arrivalDetail.[id]
      ,arrivalDetail.[arrivalId]
      ,arrivalDetail.[invoice]
      ,arrivalDetail.[grade]
      ,arrivalDetail.[package]
      ,arrivalDetail.[yearofproduction]
      ,arrivalDetail.[pkgsrlfrm]
      ,arrivalDetail.[pkgsrlto]
      ,arrivalDetail.[invoicequantity]
      ,arrivalDetail.[receivequantity]
      ,arrivalDetail.[gross]
      ,arrivalDetail.[tare]
      ,arrivalDetail.[net]
      ,arrivalDetail.[floorId]
      ,arrivalMaster.arrivalNumber
      ,CONVERT(varchar(10),[arrivalMaster].[dateofarrival],105)as dateofarrival
      ,floors.floorName
      ,Warehouses.Name 
      
  FROM [arrivalDetail]
  INNER JOIN 
  arrivalMaster ON arrivalMaster.arrivalId =arrivalDetail.arrivalId
  INNER JOIN
  floors
  ON arrivalDetail.floorId = floors.floorId
  LEFT JOIN
  Warehouses ON floors.warehouseId = Warehouses.WarehouseId
  WHERE arrivalMaster.arrivalId = @arrivalMasterId
  
END
GO
/****** Object:  StoredProcedure [dbo].[usp_arrivalDuplicateCheck]    Script Date: 05/12/2017 17:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Abhik Ghosh
-- Create date: 05/05/2017
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_arrivalDuplicateCheck]
	-- Add the parameters for the stored procedure here
	@companyId int,
	@yearId int,
	@arrivalNumber varchar(100),
	
	@numberofRecord int output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET @numberofRecord =0
    -- Insert statements for procedure here
	SELECT @numberofRecord = COUNT(*) from arrivalMaster 
	WHERE arrivalMaster.companyid =@companyId AND arrivalMaster.yearid = @yearId
	AND arrivalMaster.arrivalNumber =@arrivalNumber;
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_getArrivalGardenCode]    Script Date: 05/12/2017 17:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Aveek Ghosh
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[usp_getArrivalGardenCode] 
	-- Add the parameters for the stored procedure here
	@arrivalId int, 
	@gardencode varchar(100) output

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SET @gardencode=''
    -- Insert statements for procedure here
SELECT  @gardencode = gardens.gardencode

FROM
arrivalMaster
INNER JOIN
gardens ON arrivalMaster.gardenid = gardens.gardenId
LEFT JOIN
invoiceformat ON gardens.invoiceformatid = invoiceformat.id
WHERE arrivalMaster.arrivalId =@arrivalId
END
GO
/****** Object:  StoredProcedure [dbo].[usp_checkArrivalInvoiceFormat]    Script Date: 05/12/2017 17:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Aveek Ghosh
-- Create date: 03/05/2017
-- Description:	check invoice format
-- =============================================
CREATE PROCEDURE [dbo].[usp_checkArrivalInvoiceFormat] 
	-- Add the parameters for the stored procedure here
	@arrivalId int,
	@invoiceFormatId int output
	

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
SET @invoiceFormatId=0
    -- Insert statements for procedure here
SELECT  @invoiceFormatId = ISNULL(invoiceformat.id, 0 )

FROM
arrivalMaster
INNER JOIN
gardens ON arrivalMaster.gardenid = gardens.gardenId
LEFT JOIN
invoiceformat ON gardens.invoiceformatid = invoiceformat.id
WHERE arrivalMaster.arrivalId =@arrivalId

END
GO
/****** Object:  StoredProcedure [dbo].[usp_getListofUnloadingInvoices]    Script Date: 05/12/2017 17:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Abhik
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_getListofUnloadingInvoices]
	-- Add the parameters for the stored procedure here
	@unloadingMasterId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
SELECT [unloadingdetail].[id]
      ,[unloadingdetail].[unloadingmasterid]
      ,[unloadingdetail].[invoice]
      ,[unloadingdetail].[grade]
      ,[unloadingdetail].[package]
      ,[unloadingdetail].[yearofproduction]
      ,[unloadingdetail].[pkgsrlfrm]
      ,[unloadingdetail].[pkgsrlto]
      ,[unloadingdetail].[invoicequantity]
      ,[unloadingdetail].[receivequantity]
      ,[unloadingdetail].[gross]
      ,[unloadingdetail].[tare]
      ,[unloadingdetail].[net]
      ,[unloadingdetail].[floorId]
      ,[floors].floorName
      ,[unloadingmaster].unloadingnumber
      ,Convert(VARCHAR(10),CONVERT(date,unloadingmaster.receiptdate,106),103)as receiptdate
      
      
  FROM [unloadingdetail]
  INNER JOIN
  unloadingmaster ON unloadingmaster.id = unloadingdetail.unloadingmasterid
  LEFT JOIN
  floors ON [unloadingdetail].floorId = floors.floorId
  WHERE unloadingmaster.id = @unloadingMasterId



	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_GetUnloadingDtlById]    Script Date: 05/12/2017 17:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Abhik
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[usp_GetUnloadingDtlById] 
	-- Add the parameters for the stored procedure here
	@unloadingmasterId int,
	@unloadingdetailId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [id]
      ,[unloadingmasterid]
      ,[invoice]
      ,[grade]
      ,[package]
      ,[yearofproduction]
      ,[pkgsrlfrm]
      ,[pkgsrlto]
      ,[invoicequantity]
      ,[receivequantity]
      ,[gross]
      ,[tare]
      ,[net]
      ,[floorId]
  FROM [unloadingdetail]
  WHERE [unloadingdetail].unloadingmasterid =@unloadingmasterId 
  AND [unloadingdetail].id = @unloadingdetailId



END
GO
/****** Object:  StoredProcedure [dbo].[usp_getNumberofUnloadingInvoice]    Script Date: 05/12/2017 17:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Abhik
-- Create date: 24/04/2017
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[usp_getNumberofUnloadingInvoice] 
	-- Add the parameters for the stored procedure here
	@unloadingmasterid int,
	@numberofinvoice int output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET @numberofinvoice =0;
    -- Insert statements for procedure here
	SELECT @numberofinvoice = COUNT(*) from  unloadingdetail 
	WHERE unloadingdetail.unloadingmasterid =@unloadingmasterid
END
GO
/****** Object:  StoredProcedure [dbo].[usp_getUnloadingMasterList]    Script Date: 05/12/2017 17:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Abhik
-- Create date: 17/04/2017
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[usp_getUnloadingMasterList] 
	-- Add the parameters for the stored procedure here
	@companyId Int,
	@yearId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT unloadingmaster.[id]
      ,unloadingmaster.[unloadingnumber]
       ,CONVERT(VARCHAR(10), [receiptdate], 103)as [receiptdate]
      ,unloadingmaster.[lotnumber]
      ,unloadingmaster.[gardenid],gardens.gardenname
      ,unloadingmaster.[carrier]
      ,unloadingmaster.[lorrynum]
      ,unloadingmaster.[brokerid],Brokers.BrokerName
      ,unloadingmaster.[warehouseid],Warehouses.Name
      ,unloadingmaster.[cnno]
      ,unloadingmaster.[cndate]
      ,unloadingmaster.[gpno]
      ,unloadingmaster.[wbno]
      ,unloadingmaster.[companyid]
      ,unloadingmaster.[yearid]
      ,arrivalMaster.arrivalNumber
      ,COUNT(unloadingdetail.id)as cnt
  FROM [unloadingmaster] 
  INNER JOIN gardens ON unloadingmaster.gardenid = gardens.gardenId
  INNER JOIN Warehouses ON unloadingmaster.warehouseid = Warehouses.WarehouseId
  INNER JOIN Brokers ON unloadingmaster.brokerid = Brokers.BrokerId
  LEFT JOIN unloadingdetail ON unloadingmaster.id = unloadingdetail.unloadingmasterid
  LEFT JOIN arrivalMaster ON unloadingmaster.id = arrivalMaster.unloadingId
  WHERE unloadingmaster.[companyid] =@companyId AND unloadingmaster.[yearid]=@yearId
  GROUP BY unloadingmaster.id,unloadingmaster.[unloadingnumber]
   ,unloadingmaster.[receiptdate],unloadingmaster.[lotnumber]
   ,unloadingmaster.[gardenid],gardens.gardenname
      ,unloadingmaster.[carrier]
      ,unloadingmaster.[lorrynum]
      ,unloadingmaster.[brokerid],Brokers.BrokerName
      ,unloadingmaster.[warehouseid],Warehouses.Name
      ,unloadingmaster.[cnno]
      ,unloadingmaster.[cndate]
      ,unloadingmaster.[gpno]
      ,unloadingmaster.[wbno]
      ,unloadingmaster.[companyid]
      ,unloadingmaster.[yearid]
      ,arrivalMaster.arrivalNumber



END
GO
/****** Object:  StoredProcedure [dbo].[usp_unloadingInvoiceUpdate]    Script Date: 05/12/2017 17:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Abhik
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[usp_unloadingInvoiceUpdate] 
	-- Add the parameters for the stored procedure here
	@unloadingdetailId int ,
	@unloadingmasterid int,
	@invoice varchar(100),
	@grade varchar(100)=null,
	@package decimal(12,2)=null,
	@yearofproduction varchar(100)=null,
	@pkgsrlfrm int,
	@pkgsrlto int,
	@invoicequantity decimal(12,2),
	@receivequantity decimal(12,2),
	@gross decimal(12,2),
	@tare decimal(12,2) = null,
	@net decimal(12,2),
	@floorId int
	 
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- -Insert statements for procedure here
   UPDATE [unloadingdetail]
   SET [unloadingmasterid] = @unloadingmasterid 
      ,[invoice] = @invoice 
      ,[grade] = @grade 
      ,[package] = @package
      ,[yearofproduction] =@yearofproduction 
      ,[pkgsrlfrm] =@pkgsrlfrm 
      ,[pkgsrlto] = @pkgsrlto
      ,[invoicequantity] = @invoicequantity
      ,[receivequantity] = @receivequantity
      ,[gross] = @gross 
      ,[tare] =@tare
      ,[net] = @net
      ,[floorId] = @floorId
 WHERE [unloadingdetail].id = @unloadingdetailId



    
	---
	
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_unloadDetailInsert]    Script Date: 05/12/2017 17:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Abhik
-- Create date: 28/04/2017
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_unloadDetailInsert]
	-- Add the parameters for the stored procedure here
	
	@unloadingmasterid int,
	@invoice  varchar(100),
	@grade varchar(100)=NULL,
	@package decimal(12,2)=NULL,
	@yearofproduction varchar(100)=NULL,
	@pkgsrlfrm int,
	@pkgsrlto  int,
	@invoicequantity decimal(12,2),
	@receivequantity decimal(12,2),
	@gross decimal(12,2),
	@tare decimal(12,2)=NULL,
	@net decimal(12,2),
	@floorId int=NULL,
	@lastInsertId int output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [unloadingdetail]
           ([unloadingmasterid]
           ,[invoice]
           ,[grade]
           ,[package]
           ,[yearofproduction]
           ,[pkgsrlfrm]
           ,[pkgsrlto]
           ,[invoicequantity]
           ,[receivequantity]
           ,[gross]
           ,[tare]
           ,[net]
           ,[floorId])
     VALUES
           (@unloadingmasterid,
			@invoice,
			@grade,
			@package,
			@yearofproduction,
			@pkgsrlfrm,
			@pkgsrlto,
			@invoicequantity,
			@receivequantity,
			@gross,
			@tare,
			@net,
			@floorId)


 set @lastInsertId = SCOPE_IDENTITY();
	
	
	---
END
GO
/****** Object:  StoredProcedure [dbo].[usp_UnloadingShortBagDtlInsert]    Script Date: 05/12/2017 17:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Abhik
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[usp_UnloadingShortBagDtlInsert] 
	-- Add the parameters for the stored procedure here
	@unloadingDetailId int,
	@shortTypeId int,
	@shortpackage decimal(12,2)=null,
	@shortPkgNet decimal(12,2)=null,
	@serial int 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
--DELETE FROM shortBagDetail WHERE shortBagDetail.unloadingDetailId =@unloadingDetailId

    -- Insert statements for procedure here
	INSERT INTO [ssinternational_data].[dbo].[shortBagDetail]
           ([shortTypeId]
           ,[shortpackage]
           ,[shortPkgNet]
           ,[unloadingDetailId]
           ,[serial])
     VALUES
           (@shortTypeId
           ,@shortpackage
           ,@shortPkgNet
           ,@unloadingDetailId
           ,@serial)



END
GO
/****** Object:  StoredProcedure [dbo].[usp_unldShrtBagDelete]    Script Date: 05/12/2017 17:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Abhik Ghosh
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[usp_unldShrtBagDelete] 
	-- Add the parameters for the stored procedure here
	@unloadingDtlId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DELETE FROM shortBagDetail WHERE shortBagDetail.unloadingDetailId = @unloadingDtlId
END
GO
/****** Object:  StoredProcedure [dbo].[usp_unldDmgBagDelete]    Script Date: 05/12/2017 17:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Abhik Ghosh
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[usp_unldDmgBagDelete] 
	-- Add the parameters for the stored procedure here
	 @unloadingDtlId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DELETE FROM damageBagDtl WHERE damageBagDtl.unloadingDtlId = @unloadingDtlId
END
GO
/****** Object:  StoredProcedure [dbo].[usp_UnloadingDamageBagDtlInser]    Script Date: 05/12/2017 17:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Abhik
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[usp_UnloadingDamageBagDtlInser] 
	-- Add the parameters for the stored procedure here
	@unloadingDtlId int,
	@damageTypeId int ,
	@noofpackage decimal(12,2) = null,
	@net decimal(12,2) = null,
	@serial int = null
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	--DELETE FROM damageBagDtl WHERE damageBagDtl.unloadingDtlId = @unloadingDtlId
    -- Insert statements for procedure here
	INSERT INTO [damageBagDtl]
           ([damageTypeId]
           ,[noofpackage]
           ,[net]
           ,[unloadingDtlId]
           ,[serial])
     VALUES
           (@damageTypeId
           ,@noofpackage
           ,@net
           ,@unloadingDtlId
           ,@serial)
END
GO
/****** Object:  StoredProcedure [dbo].[usp_getUnloadingShortDetail]    Script Date: 05/12/2017 17:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Abhik
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_getUnloadingShortDetail]  
	-- Add the parameters for the stored procedure here
	@unloadingDetailId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Select shortBagDetail.id,shortBagDetail.shortpackage,
	shortBagDetail.shortPkgNet,shortBagDetail.shortTypeId,shortBagDetail.unloadingDetailId,ShortTypes.ShortName
	FROM shortBagDetail
	INNER JOIN
	unloadingdetail ON shortBagDetail.unloadingDetailId = unloadingdetail.id
	INNER JOIN
	ShortTypes ON shortBagDetail.shortTypeId = ShortTypes.ShortId
END
GO
/****** Object:  StoredProcedure [dbo].[usp_getUnloadingDamageDetail]    Script Date: 05/12/2017 17:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Abhik
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[usp_getUnloadingDamageDetail] 
	-- Add the parameters for the stored procedure here
	@unloadingDetailId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT damageBagDtl.id,damageBagDtl.damageTypeId,damageBagDtl.net,
	damageBagDtl.noofpackage,damageBagDtl.unloadingDtlId,DamageTypes.[Description]
	FROM
	damageBagDtl
	INNER JOIN
	unloadingdetail ON damageBagDtl.unloadingDtlId = unloadingdetail.id
	INNER JOIN
	DamageTypes ON damageBagDtl.damageTypeId = DamageTypes.DamageId
	Where damageBagDtl.unloadingDtlId = @unloadingDetailId
END
GO
/****** Object:  StoredProcedure [dbo].[usp_GetShoertBagDtlById]    Script Date: 05/12/2017 17:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Abhik
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[usp_GetShoertBagDtlById] 
	-- Add the parameters for the stored procedure here
	@unloadingDtlId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [id]
      ,[shortTypeId]
      ,ShortTypes.ShortCode
      ,[shortpackage]
      ,[shortPkgNet]
      ,[unloadingDetailId]
      ,[serial]
		FROM [shortBagDetail]
		INNER JOIN
		ShortTypes ON [shortBagDetail].shortTypeId = ShortTypes.ShortId
		Where shortBagDetail.unloadingDetailId =@unloadingDtlId
END
GO
/****** Object:  StoredProcedure [dbo].[usp_getDamageBagDetailById]    Script Date: 05/12/2017 17:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Abhik
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_getDamageBagDetailById] 
	-- Add the parameters for the stored procedure here
	@unloadingDtlId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [id]
      ,[damageTypeId]
      ,DamageTypes.DamageCode
      ,[noofpackage]
      ,[net]
      ,[unloadingDtlId]
      ,[serial]
  FROM [damageBagDtl]
  INNER JOIN
  DamageTypes ON [damageBagDtl].damageTypeId = DamageTypes.DamageId
  WHERE [damageBagDtl].unloadingDtlId = @unloadingDtlId
END
GO
/****** Object:  StoredProcedure [dbo].[usp_generateUnloadingFromArrival]    Script Date: 05/12/2017 17:00:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Abhik Ghosh
-- Create date: 10/05/2017
-- Description:	Generate arrival automatically from unloading
-- =============================================
CREATE PROCEDURE [dbo].[usp_generateUnloadingFromArrival]
	-- Add the parameters for the stored procedure here
	@unloadingMasterId int,
	@arrivalnumber varchar(100),
	@arrivalDate date
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	DECLARE @arrivalMasterId int
	DECLARE @arrivalDetailId int
	
	DECLARE @unldDtlId int
	DECLARE @invoice varchar(100)
	DECLARE @grade varchar(100)
	DECLARE @package decimal(12,2) 
	DECLARE @yearofproduction varchar(100)
    DECLARE @pkgsrlfrm int
	DECLARE @pkgsrlto int
	DECLARE @invoicequantity decimal(12,2)
	DECLARE @receivequantity decimal(12,2)
	DECLARE @gross decimal(12,2)
	DECLARE @tare decimal(12,2)
	DECLARE @net decimal(12,2)
    DECLARE @floorId int
	SET NOCOUNT ON;
	

    -- Insert statements for procedure here
	BEGIN TRY
		BEGIN TRANSACTION 
		-- Arrival master insertion
		INSERT INTO [ssinternational_data].[dbo].[arrivalMaster]
           ([unloadingId]
           ,[arrivalNumber]
           ,[dateofarrival]
           ,[lotnumber]
           ,[gardenid]
           ,[carrier]
           ,[lorrynum]
           ,[brokerid]
           ,[warehouseid]
           ,[cnno]
           ,[cndate]
           ,[gpno]
           ,[wbno]
           ,[companyid]
           ,[yearid])
     
    SELECT [id]
      ,@arrivalnumber
      ,@arrivalDate
      ,[lotnumber]
      ,[gardenid]
      ,[carrier]
      ,[lorrynum]
      ,[brokerid]
      ,[warehouseid]
      ,[cnno]
      ,[cndate]
      ,[gpno]
      ,[wbno]
      ,[companyid]
      ,[yearid]
  FROM [unloadingmaster]
  WHERE [unloadingmaster].id=@unloadingMasterId
	
  SET @arrivalMasterId =SCOPE_IDENTITY();
  ---Arrival master insert
  
  DECLARE unloadingDetail CURSOR FOR
  SELECT 
	   [id]	
       ,[invoice]
      ,[grade]
      ,[package]
      ,[yearofproduction]
      ,[pkgsrlfrm]
      ,[pkgsrlto]
      ,[invoicequantity]
      ,[receivequantity]
      ,[gross]
      ,[tare]
      ,[net]
      ,[floorId]
  FROM [unloadingdetail]
  WHERE [unloadingmasterid]=@unloadingMasterId	
-- 
  OPEN unloadingDetail
  FETCH NEXT FROM unloadingDetail INTO @unldDtlId, 
	@invoice,@grade,@package,@yearofproduction,@pkgsrlfrm,@pkgsrlto,@invoicequantity,@receivequantity,@gross,
	@tare,@net,@floorId
  WHILE @@FETCH_STATUS = 0
  BEGIN
	--arrival detail insertion
	INSERT INTO [ssinternational_data].[dbo].[arrivalDetail]
           ([arrivalId]
           ,[invoice]
           ,[grade]
           ,[package]
           ,[yearofproduction]
           ,[pkgsrlfrm]
           ,[pkgsrlto]
           ,[invoicequantity]
           ,[receivequantity]
           ,[gross]
           ,[tare]
           ,[net]
           ,[floorId])
     VALUES(@arrivalMasterId,@invoice,@grade,@package,@yearofproduction,@pkgsrlfrm,@pkgsrlto,
			@invoicequantity,@receivequantity,@gross,@tare,@net,@floorId
     )
	set @arrivalDetailId =SCOPE_IDENTITY()
	
	--damage bag
	INSERT INTO [ssinternational_data].[dbo].[arrivalDamageBags]
           ([damageTypeId]
           ,[noofpackage]
           ,[net]
           ,[arrivalDtlId]
           ,[serial])
	SELECT 
		  [damageTypeId]
		  ,[noofpackage]
		  ,[net]
		  ,@arrivalDetailId
		  ,[serial]
   FROM [damageBagDtl] WHERE damageBagDtl.unloadingDtlId =@unldDtlId
   
   
   --shortage bag
   
   INSERT INTO [ssinternational_data].[dbo].[arrivalShortBags]
           ([shortTypeId]
           ,[shortpackage]
           ,[shortPkgNet]
           ,[arrivalDtlId]
           ,[serial])
     SELECT 
       [shortTypeId]
      ,[shortpackage]
      ,[shortPkgNet]
      ,@arrivalDetailId
      ,[serial]
  FROM [shortBagDetail] WHERE [shortBagDetail].unloadingDetailId =@unldDtlId
   
   
   
   
  
   FETCH NEXT FROM unloadingDetail INTO 
	@unldDtlId,@invoice,@grade,@package,@yearofproduction,@pkgsrlfrm,@pkgsrlto,@invoicequantity,@receivequantity,@gross,
	@tare,@net,@floorId
  END
  
  CLOSE unloadingDetail
  DEALLOCATE unloadingDetail
--		
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION
	END CATCH
END
GO
/****** Object:  ForeignKey [FK_stock_arrivalDetail]    Script Date: 05/12/2017 17:00:20 ******/
ALTER TABLE [dbo].[stock]  WITH CHECK ADD  CONSTRAINT [FK_stock_arrivalDetail] FOREIGN KEY([arrivalDetailId])
REFERENCES [dbo].[arrivalDetail] ([id])
GO
ALTER TABLE [dbo].[stock] CHECK CONSTRAINT [FK_stock_arrivalDetail]
GO
/****** Object:  ForeignKey [FK_ShortTypes_companies]    Script Date: 05/12/2017 17:00:20 ******/
ALTER TABLE [dbo].[ShortTypes]  WITH CHECK ADD  CONSTRAINT [FK_ShortTypes_companies] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[companies] ([companyid])
GO
ALTER TABLE [dbo].[ShortTypes] CHECK CONSTRAINT [FK_ShortTypes_companies]
GO
/****** Object:  ForeignKey [FK_estates_company]    Script Date: 05/12/2017 17:00:20 ******/
ALTER TABLE [dbo].[estates]  WITH CHECK ADD  CONSTRAINT [FK_estates_company] FOREIGN KEY([companyid])
REFERENCES [dbo].[companies] ([companyid])
GO
ALTER TABLE [dbo].[estates] CHECK CONSTRAINT [FK_estates_company]
GO
/****** Object:  ForeignKey [FK_customers_company]    Script Date: 05/12/2017 17:00:20 ******/
ALTER TABLE [dbo].[customers]  WITH CHECK ADD  CONSTRAINT [FK_customers_company] FOREIGN KEY([companyid])
REFERENCES [dbo].[companies] ([companyid])
GO
ALTER TABLE [dbo].[customers] CHECK CONSTRAINT [FK_customers_company]
GO
/****** Object:  ForeignKey [FK_arrivalDamageBags_arrivalDetail]    Script Date: 05/12/2017 17:00:20 ******/
ALTER TABLE [dbo].[arrivalDamageBags]  WITH CHECK ADD  CONSTRAINT [FK_arrivalDamageBags_arrivalDetail] FOREIGN KEY([arrivalDtlId])
REFERENCES [dbo].[arrivalDetail] ([id])
GO
ALTER TABLE [dbo].[arrivalDamageBags] CHECK CONSTRAINT [FK_arrivalDamageBags_arrivalDetail]
GO
/****** Object:  ForeignKey [FK_arrivalDamageBags_DamageTypes]    Script Date: 05/12/2017 17:00:20 ******/
ALTER TABLE [dbo].[arrivalDamageBags]  WITH CHECK ADD  CONSTRAINT [FK_arrivalDamageBags_DamageTypes] FOREIGN KEY([damageTypeId])
REFERENCES [dbo].[DamageTypes] ([DamageId])
GO
ALTER TABLE [dbo].[arrivalDamageBags] CHECK CONSTRAINT [FK_arrivalDamageBags_DamageTypes]
GO
/****** Object:  ForeignKey [FK_Packages_companies]    Script Date: 05/12/2017 17:00:20 ******/
ALTER TABLE [dbo].[Packages]  WITH CHECK ADD  CONSTRAINT [FK_Packages_companies] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[companies] ([companyid])
GO
ALTER TABLE [dbo].[Packages] CHECK CONSTRAINT [FK_Packages_companies]
GO
/****** Object:  ForeignKey [FK_Warehouses_companies]    Script Date: 05/12/2017 17:00:22 ******/
ALTER TABLE [dbo].[Warehouses]  WITH CHECK ADD  CONSTRAINT [FK_Warehouses_companies] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[companies] ([companyid])
GO
ALTER TABLE [dbo].[Warehouses] CHECK CONSTRAINT [FK_Warehouses_companies]
GO
/****** Object:  ForeignKey [FK_Brokers_estates]    Script Date: 05/12/2017 17:00:23 ******/
ALTER TABLE [dbo].[Brokers]  WITH CHECK ADD  CONSTRAINT [FK_Brokers_estates] FOREIGN KEY([EstateId])
REFERENCES [dbo].[estates] ([estateId])
GO
ALTER TABLE [dbo].[Brokers] CHECK CONSTRAINT [FK_Brokers_estates]
GO
/****** Object:  ForeignKey [FK_arrivalShortBags_arrivalDetail]    Script Date: 05/12/2017 17:00:23 ******/
ALTER TABLE [dbo].[arrivalShortBags]  WITH CHECK ADD  CONSTRAINT [FK_arrivalShortBags_arrivalDetail] FOREIGN KEY([arrivalDtlId])
REFERENCES [dbo].[arrivalDetail] ([id])
GO
ALTER TABLE [dbo].[arrivalShortBags] CHECK CONSTRAINT [FK_arrivalShortBags_arrivalDetail]
GO
/****** Object:  ForeignKey [FK_arrivalShortBags_ShortTypes]    Script Date: 05/12/2017 17:00:23 ******/
ALTER TABLE [dbo].[arrivalShortBags]  WITH CHECK ADD  CONSTRAINT [FK_arrivalShortBags_ShortTypes] FOREIGN KEY([shortTypeId])
REFERENCES [dbo].[ShortTypes] ([ShortId])
GO
ALTER TABLE [dbo].[arrivalShortBags] CHECK CONSTRAINT [FK_arrivalShortBags_ShortTypes]
GO
/****** Object:  ForeignKey [FK_gardens_companies]    Script Date: 05/12/2017 17:00:23 ******/
ALTER TABLE [dbo].[gardens]  WITH CHECK ADD  CONSTRAINT [FK_gardens_companies] FOREIGN KEY([companyid])
REFERENCES [dbo].[companies] ([companyid])
GO
ALTER TABLE [dbo].[gardens] CHECK CONSTRAINT [FK_gardens_companies]
GO
/****** Object:  ForeignKey [FK_gardens_customer]    Script Date: 05/12/2017 17:00:23 ******/
ALTER TABLE [dbo].[gardens]  WITH CHECK ADD  CONSTRAINT [FK_gardens_customer] FOREIGN KEY([customerid])
REFERENCES [dbo].[customers] ([id])
GO
ALTER TABLE [dbo].[gardens] CHECK CONSTRAINT [FK_gardens_customer]
GO
/****** Object:  ForeignKey [FK_floors_warehouse]    Script Date: 05/12/2017 17:00:23 ******/
ALTER TABLE [dbo].[floors]  WITH CHECK ADD  CONSTRAINT [FK_floors_warehouse] FOREIGN KEY([warehouseId])
REFERENCES [dbo].[Warehouses] ([WarehouseId])
GO
ALTER TABLE [dbo].[floors] CHECK CONSTRAINT [FK_floors_warehouse]
GO
/****** Object:  ForeignKey [FK_unloadingmaster_broker]    Script Date: 05/12/2017 17:00:23 ******/
ALTER TABLE [dbo].[unloadingmaster]  WITH CHECK ADD  CONSTRAINT [FK_unloadingmaster_broker] FOREIGN KEY([brokerid])
REFERENCES [dbo].[Brokers] ([BrokerId])
GO
ALTER TABLE [dbo].[unloadingmaster] CHECK CONSTRAINT [FK_unloadingmaster_broker]
GO
/****** Object:  ForeignKey [FK_unloadingmaster_garden]    Script Date: 05/12/2017 17:00:23 ******/
ALTER TABLE [dbo].[unloadingmaster]  WITH CHECK ADD  CONSTRAINT [FK_unloadingmaster_garden] FOREIGN KEY([gardenid])
REFERENCES [dbo].[gardens] ([gardenId])
GO
ALTER TABLE [dbo].[unloadingmaster] CHECK CONSTRAINT [FK_unloadingmaster_garden]
GO
/****** Object:  ForeignKey [FK_unloadingmaster_warehouse]    Script Date: 05/12/2017 17:00:23 ******/
ALTER TABLE [dbo].[unloadingmaster]  WITH CHECK ADD  CONSTRAINT [FK_unloadingmaster_warehouse] FOREIGN KEY([warehouseid])
REFERENCES [dbo].[Warehouses] ([WarehouseId])
GO
ALTER TABLE [dbo].[unloadingmaster] CHECK CONSTRAINT [FK_unloadingmaster_warehouse]
GO
/****** Object:  ForeignKey [FK_arrivalMaster_unloadingmaster]    Script Date: 05/12/2017 17:00:23 ******/
ALTER TABLE [dbo].[arrivalMaster]  WITH CHECK ADD  CONSTRAINT [FK_arrivalMaster_unloadingmaster] FOREIGN KEY([unloadingId])
REFERENCES [dbo].[unloadingmaster] ([id])
GO
ALTER TABLE [dbo].[arrivalMaster] CHECK CONSTRAINT [FK_arrivalMaster_unloadingmaster]
GO
/****** Object:  ForeignKey [FK_unloadingdetail_unloadingmaster]    Script Date: 05/12/2017 17:00:23 ******/
ALTER TABLE [dbo].[unloadingdetail]  WITH CHECK ADD  CONSTRAINT [FK_unloadingdetail_unloadingmaster] FOREIGN KEY([unloadingmasterid])
REFERENCES [dbo].[unloadingmaster] ([id])
GO
ALTER TABLE [dbo].[unloadingdetail] CHECK CONSTRAINT [FK_unloadingdetail_unloadingmaster]
GO
/****** Object:  ForeignKey [FK_shortBagDetail_ShortTypes]    Script Date: 05/12/2017 17:00:23 ******/
ALTER TABLE [dbo].[shortBagDetail]  WITH CHECK ADD  CONSTRAINT [FK_shortBagDetail_ShortTypes] FOREIGN KEY([shortTypeId])
REFERENCES [dbo].[ShortTypes] ([ShortId])
GO
ALTER TABLE [dbo].[shortBagDetail] CHECK CONSTRAINT [FK_shortBagDetail_ShortTypes]
GO
/****** Object:  ForeignKey [FK_shortBagDetail_unloadingdetail]    Script Date: 05/12/2017 17:00:23 ******/
ALTER TABLE [dbo].[shortBagDetail]  WITH CHECK ADD  CONSTRAINT [FK_shortBagDetail_unloadingdetail] FOREIGN KEY([unloadingDetailId])
REFERENCES [dbo].[unloadingdetail] ([id])
GO
ALTER TABLE [dbo].[shortBagDetail] CHECK CONSTRAINT [FK_shortBagDetail_unloadingdetail]
GO
/****** Object:  ForeignKey [FK_damageBagDtl_DamageTypes]    Script Date: 05/12/2017 17:00:23 ******/
ALTER TABLE [dbo].[damageBagDtl]  WITH CHECK ADD  CONSTRAINT [FK_damageBagDtl_DamageTypes] FOREIGN KEY([damageTypeId])
REFERENCES [dbo].[DamageTypes] ([DamageId])
GO
ALTER TABLE [dbo].[damageBagDtl] CHECK CONSTRAINT [FK_damageBagDtl_DamageTypes]
GO
/****** Object:  ForeignKey [FK_damageBagDtl_unloadingdetail]    Script Date: 05/12/2017 17:00:23 ******/
ALTER TABLE [dbo].[damageBagDtl]  WITH CHECK ADD  CONSTRAINT [FK_damageBagDtl_unloadingdetail] FOREIGN KEY([unloadingDtlId])
REFERENCES [dbo].[unloadingdetail] ([id])
GO
ALTER TABLE [dbo].[damageBagDtl] CHECK CONSTRAINT [FK_damageBagDtl_unloadingdetail]
GO
