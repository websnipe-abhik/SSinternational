USE [ssinternational_data]
GO
/****** Object:  StoredProcedure [dbo].[usp_checkuser]    Script Date: 11-03-2017 PM 05:53:59 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_customerById]    Script Date: 11-03-2017 PM 05:53:59 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_customerInsert]    Script Date: 11-03-2017 PM 05:53:59 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_customerUpdate]    Script Date: 11-03-2017 PM 05:53:59 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_getcompanylist]    Script Date: 11-03-2017 PM 05:53:59 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_getCustomerList]    Script Date: 11-03-2017 PM 05:53:59 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_getFiscalList]    Script Date: 11-03-2017 PM 05:53:59 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_getUserDataById]    Script Date: 11-03-2017 PM 05:53:59 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_updateuserlogintime]    Script Date: 11-03-2017 PM 05:53:59 ******/
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
/****** Object:  Table [dbo].[companies]    Script Date: 11-03-2017 PM 05:53:59 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[customers]    Script Date: 11-03-2017 PM 05:53:59 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[financialyears]    Script Date: 11-03-2017 PM 05:53:59 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[users]    Script Date: 11-03-2017 PM 05:53:59 ******/
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
SET IDENTITY_INSERT [dbo].[companies] ON 

INSERT [dbo].[companies] ([companyid], [companyname], [companyaddress], [companystate], [companypin], [companytin], [companypanypan], [companytan]) VALUES (1, N'Unity Tea Warehousing Company (P) Ltd.', NULL, N'West Bengal', NULL, NULL, NULL, NULL)
INSERT [dbo].[companies] ([companyid], [companyname], [companyaddress], [companystate], [companypin], [companytin], [companypanypan], [companytan]) VALUES (2, N'ABC International', NULL, N'Karnatak', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[companies] OFF
SET IDENTITY_INSERT [dbo].[customers] ON 

INSERT [dbo].[customers] ([id], [customername], [customerphone], [customeraddress], [companyid]) VALUES (1, N'HINDUSTAN', N'9874141533', NULL, 1)
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
INSERT [dbo].[customers] ([id], [customername], [customerphone], [customeraddress], [companyid]) VALUES (13, N'AMALGAMATED PLANTATIONS (P) LTD', N'9874141533', NULL, 1)
INSERT [dbo].[customers] ([id], [customername], [customerphone], [customeraddress], [companyid]) VALUES (14, N'KOOMBER', N'9874141533', NULL, 1)
INSERT [dbo].[customers] ([id], [customername], [customerphone], [customeraddress], [companyid]) VALUES (15, N'LOPCHU TEA CO LTD.', N'033-24704-155', NULL, 1)
INSERT [dbo].[customers] ([id], [customername], [customerphone], [customeraddress], [companyid]) VALUES (16, N'SIANGTEA & INDUSTRIES (P) LTD.', N'+91 9870125693', NULL, 1)
INSERT [dbo].[customers] ([id], [customername], [customerphone], [customeraddress], [companyid]) VALUES (17, N'PARAMOUNDTEA MAR(P)LTD', N'033-2569-2363', NULL, 1)
INSERT [dbo].[customers] ([id], [customername], [customerphone], [customeraddress], [companyid]) VALUES (18, N'WTA LIMITED', N'9874125393', NULL, 1)
INSERT [dbo].[customers] ([id], [customername], [customerphone], [customeraddress], [companyid]) VALUES (19, N'CAMELLIA TEA GROUP (P) LTD', N'9874412525', NULL, 1)
INSERT [dbo].[customers] ([id], [customername], [customerphone], [customeraddress], [companyid]) VALUES (20, N'ASSAM COMPANY LTD (BBR)', N'1234567891', NULL, 1)
INSERT [dbo].[customers] ([id], [customername], [customerphone], [customeraddress], [companyid]) VALUES (21, N'KARBI PLANTATIONS (P) LTD', N'1234567891', NULL, 1)
INSERT [dbo].[customers] ([id], [customername], [customerphone], [customeraddress], [companyid]) VALUES (22, N'ROSSELL INDUSTRIES LTD', N'1234567891', NULL, 1)
INSERT [dbo].[customers] ([id], [customername], [customerphone], [customeraddress], [companyid]) VALUES (23, N'KOOMBER TEA CO.PVT LTD.', N'1234567891', NULL, 1)
INSERT [dbo].[customers] ([id], [customername], [customerphone], [customeraddress], [companyid]) VALUES (24, N'Dhruba Tea House', N'1234567891', N'78/1 M.Road
Kolkata :700001', 1)
INSERT [dbo].[customers] ([id], [customername], [customerphone], [customeraddress], [companyid]) VALUES (25, N'TEST', N'1234567891', N'ghhg', 1)
INSERT [dbo].[customers] ([id], [customername], [customerphone], [customeraddress], [companyid]) VALUES (26, N'Yogada Satsanga Society India', N'(0651) 2460071,2460074', NULL, 1)
SET IDENTITY_INSERT [dbo].[customers] OFF
SET IDENTITY_INSERT [dbo].[financialyears] ON 

INSERT [dbo].[financialyears] ([fiscalid], [startdate], [enddate], [fiscalyear]) VALUES (1, CAST(0x363B0B00 AS Date), CAST(0xA23C0B00 AS Date), N'2016-2017')
INSERT [dbo].[financialyears] ([fiscalid], [startdate], [enddate], [fiscalyear]) VALUES (2, CAST(0xA33C0B00 AS Date), CAST(0x0F3E0B00 AS Date), N'2017-2018')
SET IDENTITY_INSERT [dbo].[financialyears] OFF
SET IDENTITY_INSERT [dbo].[users] ON 

-- INSERT [dbo].[users] ([userid], [login], [password], [firstname], [lastname], [isActive], [dateofcreation], [logintime]) VALUES (1, N'Admin', N'’:{½s%ðißµ ', N'Abhik', N'Ghosh', 1, CAST(0x863C0B00 AS Date), CAST(0x0000A733011DFD9E AS DateTime))
SET IDENTITY_INSERT [dbo].[users] OFF
ALTER TABLE [dbo].[customers]  WITH CHECK ADD  CONSTRAINT [FK_customers_company] FOREIGN KEY([companyid])
REFERENCES [dbo].[companies] ([companyid])
GO
ALTER TABLE [dbo].[customers] CHECK CONSTRAINT [FK_customers_company]
GO
