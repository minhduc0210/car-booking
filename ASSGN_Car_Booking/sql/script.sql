USE [PRJ_Car_Booking]
GO
/****** Object:  Table [dbo].[Cars]    Script Date: 09/03/2024 8:19:17 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cars](
	[CarID] [int] IDENTITY(1,1) NOT NULL,
	[CarType] [nvarchar](50) NULL,
	[Capacity] [int] NULL,
	[RentalPricePerDay] [decimal](10, 2) NULL,
	[img] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[CarID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContractDetails]    Script Date: 09/03/2024 8:19:17 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContractDetails](
	[ContractDetailID] [int] IDENTITY(1,1) NOT NULL,
	[ContractID] [int] NULL,
	[CarID] [int] NULL,
	[Status] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ContractDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contracts]    Script Date: 09/03/2024 8:19:17 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contracts](
	[ContractID] [int] IDENTITY(1,1) NOT NULL,
	[username] [text] NULL,
	[StartDateTime] [date] NULL,
	[EndDateTime] [date] NULL,
	[TotalCost] [decimal](10, 2) NULL,
	[Status] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ContractID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 09/03/2024 8:19:17 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[username] [varchar](100) NOT NULL,
	[dob] [date] NULL,
	[email] [varchar](320) NULL,
	[full_name] [varchar](100) NULL,
	[gender] [int] NULL,
	[password] [varchar](100) NULL,
	[role] [int] NULL,
	[img] [nvarchar](max) NULL,
	[status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Cars] ON 

INSERT [dbo].[Cars] ([CarID], [CarType], [Capacity], [RentalPricePerDay], [img]) VALUES (1, N'Sedan', 4, CAST(50.00 AS Decimal(10, 2)), N'https://imageio.forbes.com/specials-images/imageserve/5d35eacaf1176b0008974b54/2020-Chevrolet-Corvette-Stingray/0x0.jpg?format=jpg&crop=4560,2565,x790,y784,safe&width=960')
INSERT [dbo].[Cars] ([CarID], [CarType], [Capacity], [RentalPricePerDay], [img]) VALUES (2, N'SUV', 7, CAST(80.00 AS Decimal(10, 2)), N'https://www.gmenvolve.com/content/dam/gmenvolve/na/us/english/index/cars-segment-page/01-images/2023-gm-envolve-site-cars-overview-corvette.png?imwidth=960')
INSERT [dbo].[Cars] ([CarID], [CarType], [Capacity], [RentalPricePerDay], [img]) VALUES (3, N'Van', 9, CAST(100.00 AS Decimal(10, 2)), N'https://images.drive.com.au/driveau/image/upload/c_fill,f_auto,g_auto,h_1080,q_auto:eco,w_1920/v1/cms/uploads/Wd6eveISRWarJ0Mtk5Q8')
INSERT [dbo].[Cars] ([CarID], [CarType], [Capacity], [RentalPricePerDay], [img]) VALUES (4, N'Compact', 4, CAST(45.00 AS Decimal(10, 2)), N'https://www.carscoops.com/wp-content/uploads/2020/08/2020-Chevrolet-Corvette-Stingray-Z51-0-1024x555.jpg')
INSERT [dbo].[Cars] ([CarID], [CarType], [Capacity], [RentalPricePerDay], [img]) VALUES (5, N'Luxury', 4, CAST(150.00 AS Decimal(10, 2)), N'https://cdn.motor1.com/images/mgl/ZnMp0e/270:0:1619:1215/future-supercars-and-sports-cars.webp')
INSERT [dbo].[Cars] ([CarID], [CarType], [Capacity], [RentalPricePerDay], [img]) VALUES (6, N'Convertible', 4, CAST(90.00 AS Decimal(10, 2)), N'https://imgd.aeplcdn.com/370x208/n/cw/ec/141867/nexon-exterior-right-front-three-quarter-71.jpeg?isig=0&q=80')
INSERT [dbo].[Cars] ([CarID], [CarType], [Capacity], [RentalPricePerDay], [img]) VALUES (7, N'Hatchback', 5, CAST(45.00 AS Decimal(10, 2)), N'https://www.lamborghini.com/sites/it-en/files/DAM/lamborghini/facelift_2019/models_gw/2023/03_29_revuelto/gate_models_s_02_m.jpg')
INSERT [dbo].[Cars] ([CarID], [CarType], [Capacity], [RentalPricePerDay], [img]) VALUES (8, N'Minivan', 8, CAST(80.00 AS Decimal(10, 2)), N'https://carconfigurator.ferrari.com/rt-assets/data/cars/812gts/ui/splashpage.jpg')
INSERT [dbo].[Cars] ([CarID], [CarType], [Capacity], [RentalPricePerDay], [img]) VALUES (9, N'Sports Car', 2, CAST(120.00 AS Decimal(10, 2)), N'https://asv4.imgix.net/news/1406_1668094261.jpg')
INSERT [dbo].[Cars] ([CarID], [CarType], [Capacity], [RentalPricePerDay], [img]) VALUES (10, N'Truck', 3, CAST(60.00 AS Decimal(10, 2)), N'https://img.etimg.com/thumb/width-1200,height-900,imgsize-33204,resizemode-75,msid-96191686/industry/auto/auto-news/super-luxury-cars-clock-50-growth-highest-ever-in-india.jpg')
INSERT [dbo].[Cars] ([CarID], [CarType], [Capacity], [RentalPricePerDay], [img]) VALUES (11, N'Crossover', 5, CAST(75.00 AS Decimal(10, 2)), N'https://luxurysupercarsdubai.com/wp-content/uploads/2023/02/6-2-1024x768.webp')
INSERT [dbo].[Cars] ([CarID], [CarType], [Capacity], [RentalPricePerDay], [img]) VALUES (12, N'Electric Car', 4, CAST(100.00 AS Decimal(10, 2)), N'https://static.pakwheels.com/2023/04/rolls-royce-boat-tail-1.jpg')
INSERT [dbo].[Cars] ([CarID], [CarType], [Capacity], [RentalPricePerDay], [img]) VALUES (13, N'Luxury Car', 4, CAST(150.00 AS Decimal(10, 2)), N'https://static.pakwheels.com/2023/04/Screenshot-2023-04-13-133705.jpg')
SET IDENTITY_INSERT [dbo].[Cars] OFF
GO
SET IDENTITY_INSERT [dbo].[ContractDetails] ON 

INSERT [dbo].[ContractDetails] ([ContractDetailID], [ContractID], [CarID], [Status]) VALUES (1, 1, 1, N'Active')
INSERT [dbo].[ContractDetails] ([ContractDetailID], [ContractID], [CarID], [Status]) VALUES (2, 1, 2, N'Active')
INSERT [dbo].[ContractDetails] ([ContractDetailID], [ContractID], [CarID], [Status]) VALUES (3, 2, 3, N'Active')
INSERT [dbo].[ContractDetails] ([ContractDetailID], [ContractID], [CarID], [Status]) VALUES (4, 3, 4, N'Active')
INSERT [dbo].[ContractDetails] ([ContractDetailID], [ContractID], [CarID], [Status]) VALUES (5, 3, 5, N'Active')
INSERT [dbo].[ContractDetails] ([ContractDetailID], [ContractID], [CarID], [Status]) VALUES (6, 1, 1, N'Active')
INSERT [dbo].[ContractDetails] ([ContractDetailID], [ContractID], [CarID], [Status]) VALUES (7, 1, 2, N'Active')
INSERT [dbo].[ContractDetails] ([ContractDetailID], [ContractID], [CarID], [Status]) VALUES (8, 6, 4, N'Active')
INSERT [dbo].[ContractDetails] ([ContractDetailID], [ContractID], [CarID], [Status]) VALUES (9, 6, 6, N'Active')
INSERT [dbo].[ContractDetails] ([ContractDetailID], [ContractID], [CarID], [Status]) VALUES (10, 6, 11, N'Active')
INSERT [dbo].[ContractDetails] ([ContractDetailID], [ContractID], [CarID], [Status]) VALUES (11, 7, 4, N'Active')
INSERT [dbo].[ContractDetails] ([ContractDetailID], [ContractID], [CarID], [Status]) VALUES (12, 7, 6, N'Active')
INSERT [dbo].[ContractDetails] ([ContractDetailID], [ContractID], [CarID], [Status]) VALUES (13, 7, 11, N'Active')
INSERT [dbo].[ContractDetails] ([ContractDetailID], [ContractID], [CarID], [Status]) VALUES (14, 10, 4, N'Active')
INSERT [dbo].[ContractDetails] ([ContractDetailID], [ContractID], [CarID], [Status]) VALUES (15, 10, 6, N'Active')
INSERT [dbo].[ContractDetails] ([ContractDetailID], [ContractID], [CarID], [Status]) VALUES (16, 10, 11, N'Active')
INSERT [dbo].[ContractDetails] ([ContractDetailID], [ContractID], [CarID], [Status]) VALUES (17, 11, 5, N'Active')
INSERT [dbo].[ContractDetails] ([ContractDetailID], [ContractID], [CarID], [Status]) VALUES (18, 11, 13, N'Active')
INSERT [dbo].[ContractDetails] ([ContractDetailID], [ContractID], [CarID], [Status]) VALUES (19, 11, 8, N'Active')
INSERT [dbo].[ContractDetails] ([ContractDetailID], [ContractID], [CarID], [Status]) VALUES (20, 11, 1, N'Active')
INSERT [dbo].[ContractDetails] ([ContractDetailID], [ContractID], [CarID], [Status]) VALUES (21, 12, 5, N'Active')
INSERT [dbo].[ContractDetails] ([ContractDetailID], [ContractID], [CarID], [Status]) VALUES (22, 12, 13, N'Active')
INSERT [dbo].[ContractDetails] ([ContractDetailID], [ContractID], [CarID], [Status]) VALUES (23, 12, 8, N'Active')
INSERT [dbo].[ContractDetails] ([ContractDetailID], [ContractID], [CarID], [Status]) VALUES (24, 12, 1, N'Active')
INSERT [dbo].[ContractDetails] ([ContractDetailID], [ContractID], [CarID], [Status]) VALUES (25, 16, 4, N'Active')
INSERT [dbo].[ContractDetails] ([ContractDetailID], [ContractID], [CarID], [Status]) VALUES (26, 16, 6, N'Active')
INSERT [dbo].[ContractDetails] ([ContractDetailID], [ContractID], [CarID], [Status]) VALUES (27, 16, 11, N'Active')
INSERT [dbo].[ContractDetails] ([ContractDetailID], [ContractID], [CarID], [Status]) VALUES (28, 17, 1, N'Active')
INSERT [dbo].[ContractDetails] ([ContractDetailID], [ContractID], [CarID], [Status]) VALUES (29, 17, 9, N'Active')
INSERT [dbo].[ContractDetails] ([ContractDetailID], [ContractID], [CarID], [Status]) VALUES (30, 17, 2, N'Active')
INSERT [dbo].[ContractDetails] ([ContractDetailID], [ContractID], [CarID], [Status]) VALUES (31, 18, 12, N'Active')
INSERT [dbo].[ContractDetails] ([ContractDetailID], [ContractID], [CarID], [Status]) VALUES (32, 18, 7, N'Active')
INSERT [dbo].[ContractDetails] ([ContractDetailID], [ContractID], [CarID], [Status]) VALUES (33, 19, 12, N'Active')
INSERT [dbo].[ContractDetails] ([ContractDetailID], [ContractID], [CarID], [Status]) VALUES (34, 19, 7, N'Active')
INSERT [dbo].[ContractDetails] ([ContractDetailID], [ContractID], [CarID], [Status]) VALUES (35, 20, 12, N'Active')
INSERT [dbo].[ContractDetails] ([ContractDetailID], [ContractID], [CarID], [Status]) VALUES (36, 21, 12, N'Active')
INSERT [dbo].[ContractDetails] ([ContractDetailID], [ContractID], [CarID], [Status]) VALUES (37, 22, 10, N'Active')
INSERT [dbo].[ContractDetails] ([ContractDetailID], [ContractID], [CarID], [Status]) VALUES (38, 23, 7, N'Active')
INSERT [dbo].[ContractDetails] ([ContractDetailID], [ContractID], [CarID], [Status]) VALUES (39, 23, 5, N'Active')
INSERT [dbo].[ContractDetails] ([ContractDetailID], [ContractID], [CarID], [Status]) VALUES (40, 24, 8, N'Active')
INSERT [dbo].[ContractDetails] ([ContractDetailID], [ContractID], [CarID], [Status]) VALUES (41, 25, 13, N'Active')
INSERT [dbo].[ContractDetails] ([ContractDetailID], [ContractID], [CarID], [Status]) VALUES (42, 25, 3, N'Active')
INSERT [dbo].[ContractDetails] ([ContractDetailID], [ContractID], [CarID], [Status]) VALUES (43, 26, 8, N'Active')
INSERT [dbo].[ContractDetails] ([ContractDetailID], [ContractID], [CarID], [Status]) VALUES (44, 27, 10, N'Active')
INSERT [dbo].[ContractDetails] ([ContractDetailID], [ContractID], [CarID], [Status]) VALUES (45, 28, 4, N'Active')
INSERT [dbo].[ContractDetails] ([ContractDetailID], [ContractID], [CarID], [Status]) VALUES (46, 28, 11, N'Active')
INSERT [dbo].[ContractDetails] ([ContractDetailID], [ContractID], [CarID], [Status]) VALUES (47, 29, 9, N'Active')
INSERT [dbo].[ContractDetails] ([ContractDetailID], [ContractID], [CarID], [Status]) VALUES (48, 29, 2, N'Active')
INSERT [dbo].[ContractDetails] ([ContractDetailID], [ContractID], [CarID], [Status]) VALUES (49, 30, 10, N'Active')
INSERT [dbo].[ContractDetails] ([ContractDetailID], [ContractID], [CarID], [Status]) VALUES (50, 31, 4, N'Active')
SET IDENTITY_INSERT [dbo].[ContractDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Contracts] ON 

INSERT [dbo].[Contracts] ([ContractID], [username], [StartDateTime], [EndDateTime], [TotalCost], [Status]) VALUES (1, N'Aline', CAST(N'2024-02-20' AS Date), CAST(N'2024-02-25' AS Date), CAST(260.00 AS Decimal(10, 2)), N'Active')
INSERT [dbo].[Contracts] ([ContractID], [username], [StartDateTime], [EndDateTime], [TotalCost], [Status]) VALUES (2, N'Aline', CAST(N'2024-03-10' AS Date), CAST(N'2024-03-15' AS Date), CAST(400.00 AS Decimal(10, 2)), N'Active')
INSERT [dbo].[Contracts] ([ContractID], [username], [StartDateTime], [EndDateTime], [TotalCost], [Status]) VALUES (3, N'Aline', CAST(N'2024-04-05' AS Date), CAST(N'2024-04-10' AS Date), CAST(300.00 AS Decimal(10, 2)), N'Active')
INSERT [dbo].[Contracts] ([ContractID], [username], [StartDateTime], [EndDateTime], [TotalCost], [Status]) VALUES (5, N'Branden', CAST(N'2024-02-26' AS Date), CAST(N'2024-02-26' AS Date), CAST(0.00 AS Decimal(10, 2)), N'Pending')
INSERT [dbo].[Contracts] ([ContractID], [username], [StartDateTime], [EndDateTime], [TotalCost], [Status]) VALUES (6, N'Branden', CAST(N'2024-02-26' AS Date), CAST(N'2024-02-26' AS Date), CAST(210.00 AS Decimal(10, 2)), N'Pending')
INSERT [dbo].[Contracts] ([ContractID], [username], [StartDateTime], [EndDateTime], [TotalCost], [Status]) VALUES (7, N'Aline', CAST(N'2024-02-28' AS Date), CAST(N'2024-02-28' AS Date), CAST(210.00 AS Decimal(10, 2)), N'Pending')
INSERT [dbo].[Contracts] ([ContractID], [username], [StartDateTime], [EndDateTime], [TotalCost], [Status]) VALUES (8, N'Aline', CAST(N'2024-02-29' AS Date), CAST(N'2024-02-29' AS Date), CAST(0.00 AS Decimal(10, 2)), N'Pending')
INSERT [dbo].[Contracts] ([ContractID], [username], [StartDateTime], [EndDateTime], [TotalCost], [Status]) VALUES (9, N'Aline', CAST(N'2024-02-29' AS Date), CAST(N'2024-02-29' AS Date), CAST(0.00 AS Decimal(10, 2)), N'Pending')
INSERT [dbo].[Contracts] ([ContractID], [username], [StartDateTime], [EndDateTime], [TotalCost], [Status]) VALUES (10, N'Aline', CAST(N'2024-02-29' AS Date), CAST(N'2024-02-29' AS Date), CAST(210.00 AS Decimal(10, 2)), N'Pending')
INSERT [dbo].[Contracts] ([ContractID], [username], [StartDateTime], [EndDateTime], [TotalCost], [Status]) VALUES (11, N'Aline', CAST(N'2024-02-29' AS Date), CAST(N'2024-02-29' AS Date), CAST(430.00 AS Decimal(10, 2)), N'Pending')
INSERT [dbo].[Contracts] ([ContractID], [username], [StartDateTime], [EndDateTime], [TotalCost], [Status]) VALUES (12, N'Aline', CAST(N'2024-02-29' AS Date), CAST(N'2024-02-29' AS Date), CAST(430.00 AS Decimal(10, 2)), N'Pending')
INSERT [dbo].[Contracts] ([ContractID], [username], [StartDateTime], [EndDateTime], [TotalCost], [Status]) VALUES (13, N'Aline', CAST(N'2024-02-29' AS Date), CAST(N'2024-02-29' AS Date), CAST(0.00 AS Decimal(10, 2)), N'Pending')
INSERT [dbo].[Contracts] ([ContractID], [username], [StartDateTime], [EndDateTime], [TotalCost], [Status]) VALUES (14, N'Aline', CAST(N'2024-02-29' AS Date), CAST(N'2024-02-29' AS Date), CAST(0.00 AS Decimal(10, 2)), N'Pending')
INSERT [dbo].[Contracts] ([ContractID], [username], [StartDateTime], [EndDateTime], [TotalCost], [Status]) VALUES (15, N'Aline', CAST(N'2024-02-29' AS Date), CAST(N'2024-02-29' AS Date), CAST(0.00 AS Decimal(10, 2)), N'Pending')
INSERT [dbo].[Contracts] ([ContractID], [username], [StartDateTime], [EndDateTime], [TotalCost], [Status]) VALUES (16, N'Aline', CAST(N'2024-02-29' AS Date), CAST(N'2024-03-06' AS Date), CAST(210.00 AS Decimal(10, 2)), N'Pending')
INSERT [dbo].[Contracts] ([ContractID], [username], [StartDateTime], [EndDateTime], [TotalCost], [Status]) VALUES (17, N'Aline', CAST(N'2024-02-29' AS Date), CAST(N'2024-03-06' AS Date), CAST(250.00 AS Decimal(10, 2)), N'Pending')
INSERT [dbo].[Contracts] ([ContractID], [username], [StartDateTime], [EndDateTime], [TotalCost], [Status]) VALUES (18, N'Aline', CAST(N'2024-03-04' AS Date), CAST(N'2024-03-04' AS Date), CAST(145.00 AS Decimal(10, 2)), N'Pending')
INSERT [dbo].[Contracts] ([ContractID], [username], [StartDateTime], [EndDateTime], [TotalCost], [Status]) VALUES (19, N'Aline', CAST(N'2024-03-04' AS Date), CAST(N'2024-03-04' AS Date), CAST(145.00 AS Decimal(10, 2)), N'Pending')
INSERT [dbo].[Contracts] ([ContractID], [username], [StartDateTime], [EndDateTime], [TotalCost], [Status]) VALUES (20, N'Aline', CAST(N'2024-03-04' AS Date), CAST(N'2024-03-04' AS Date), CAST(100.00 AS Decimal(10, 2)), N'Pending')
INSERT [dbo].[Contracts] ([ContractID], [username], [StartDateTime], [EndDateTime], [TotalCost], [Status]) VALUES (21, N'Aline', CAST(N'2024-03-04' AS Date), CAST(N'2024-03-21' AS Date), CAST(100.00 AS Decimal(10, 2)), N'Pending')
INSERT [dbo].[Contracts] ([ContractID], [username], [StartDateTime], [EndDateTime], [TotalCost], [Status]) VALUES (22, N'Aline', CAST(N'2024-03-04' AS Date), CAST(N'2024-03-04' AS Date), CAST(60.00 AS Decimal(10, 2)), N'Pending')
INSERT [dbo].[Contracts] ([ContractID], [username], [StartDateTime], [EndDateTime], [TotalCost], [Status]) VALUES (23, N'Aline', CAST(N'2024-03-04' AS Date), CAST(N'2024-03-26' AS Date), CAST(195.00 AS Decimal(10, 2)), N'Pending')
INSERT [dbo].[Contracts] ([ContractID], [username], [StartDateTime], [EndDateTime], [TotalCost], [Status]) VALUES (24, N'admin', CAST(N'2024-03-05' AS Date), CAST(N'2024-03-05' AS Date), CAST(0.00 AS Decimal(10, 2)), N'Pending')
INSERT [dbo].[Contracts] ([ContractID], [username], [StartDateTime], [EndDateTime], [TotalCost], [Status]) VALUES (25, N'admin', CAST(N'2024-03-05' AS Date), CAST(N'2024-03-09' AS Date), CAST(0.00 AS Decimal(10, 2)), N'Pending')
INSERT [dbo].[Contracts] ([ContractID], [username], [StartDateTime], [EndDateTime], [TotalCost], [Status]) VALUES (26, N'admin', CAST(N'2024-03-05' AS Date), CAST(N'2024-03-08' AS Date), CAST(0.00 AS Decimal(10, 2)), N'Rejected')
INSERT [dbo].[Contracts] ([ContractID], [username], [StartDateTime], [EndDateTime], [TotalCost], [Status]) VALUES (27, N'admin', CAST(N'2024-03-05' AS Date), CAST(N'2024-03-06' AS Date), CAST(60.00 AS Decimal(10, 2)), N'Rejected')
INSERT [dbo].[Contracts] ([ContractID], [username], [StartDateTime], [EndDateTime], [TotalCost], [Status]) VALUES (28, N'minhduc', CAST(N'2024-03-06' AS Date), CAST(N'2024-03-06' AS Date), CAST(120.00 AS Decimal(10, 2)), N'Pending')
INSERT [dbo].[Contracts] ([ContractID], [username], [StartDateTime], [EndDateTime], [TotalCost], [Status]) VALUES (29, N'minhduc', CAST(N'2024-03-06' AS Date), CAST(N'2024-03-06' AS Date), CAST(200.00 AS Decimal(10, 2)), N'Pending')
INSERT [dbo].[Contracts] ([ContractID], [username], [StartDateTime], [EndDateTime], [TotalCost], [Status]) VALUES (30, N'minhduc', CAST(N'2024-03-06' AS Date), CAST(N'2024-03-15' AS Date), CAST(60.00 AS Decimal(10, 2)), N'Accepted')
INSERT [dbo].[Contracts] ([ContractID], [username], [StartDateTime], [EndDateTime], [TotalCost], [Status]) VALUES (31, N'minhduc', CAST(N'2024-03-09' AS Date), CAST(N'2024-03-12' AS Date), CAST(45.00 AS Decimal(10, 2)), N'Pending')
SET IDENTITY_INSERT [dbo].[Contracts] OFF
GO
INSERT [dbo].[Users] ([username], [dob], [email], [full_name], [gender], [password], [role], [img], [status]) VALUES (N'admin', CAST(N'2023-05-26' AS Date), N'malesuada@hotmail.net', N'Castor', 0, N'202cb962ac59075b964b07152d234b70', 0, N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNL_ZnOTpXSvhf1UaK7beHey2BX42U6solRA&usqp=CAU', 1)
INSERT [dbo].[Users] ([username], [dob], [email], [full_name], [gender], [password], [role], [img], [status]) VALUES (N'Aline', CAST(N'2023-07-19' AS Date), N'phasellus.dolor@yahoo.org', N'Kadeem', 0, N'202cb962ac59075b964b07152d234b70', 1, N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNL_ZnOTpXSvhf1UaK7beHey2BX42U6solRA&usqp=CAU', 1)
INSERT [dbo].[Users] ([username], [dob], [email], [full_name], [gender], [password], [role], [img], [status]) VALUES (N'Branden', CAST(N'2023-08-15' AS Date), N'consequat.purus@google.com', N'Yuli', 0, N'123', 0, N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNL_ZnOTpXSvhf1UaK7beHey2BX42U6solRA&usqp=CAU', 1)
INSERT [dbo].[Users] ([username], [dob], [email], [full_name], [gender], [password], [role], [img], [status]) VALUES (N'Chiquita', CAST(N'2023-04-29' AS Date), N'tellus.justo.sit@google.com', N'Ulysses', 1, N'123', 0, N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNL_ZnOTpXSvhf1UaK7beHey2BX42U6solRA&usqp=CAU', 1)
INSERT [dbo].[Users] ([username], [dob], [email], [full_name], [gender], [password], [role], [img], [status]) VALUES (N'Christian', CAST(N'2023-05-26' AS Date), N'eu.erat@google.net', N'Damian', 0, N'123', 0, N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNL_ZnOTpXSvhf1UaK7beHey2BX42U6solRA&usqp=CAU', 1)
INSERT [dbo].[Users] ([username], [dob], [email], [full_name], [gender], [password], [role], [img], [status]) VALUES (N'Clio', CAST(N'2023-08-17' AS Date), N'fusce@icloud.com', N'Elvis Nam', 0, N'123', 0, N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNL_ZnOTpXSvhf1UaK7beHey2BX42U6solRA&usqp=CAU', 1)
INSERT [dbo].[Users] ([username], [dob], [email], [full_name], [gender], [password], [role], [img], [status]) VALUES (N'minhduc', CAST(N'2024-03-02' AS Date), N'duchqmhe180232@fpt.edu.vn', N'Minh Duc', 0, N'ddabc9300d276045893c801412af3059', 1, N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNL_ZnOTpXSvhf1UaK7beHey2BX42U6solRA&usqp=CAU', 1)
GO
ALTER TABLE [dbo].[Contracts] ADD  DEFAULT ((0)) FOR [TotalCost]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [df_img]  DEFAULT ('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNL_ZnOTpXSvhf1UaK7beHey2BX42U6solRA&usqp=CAU') FOR [img]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [df_status]  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[ContractDetails]  WITH CHECK ADD FOREIGN KEY([CarID])
REFERENCES [dbo].[Cars] ([CarID])
GO
ALTER TABLE [dbo].[ContractDetails]  WITH CHECK ADD FOREIGN KEY([ContractID])
REFERENCES [dbo].[Contracts] ([ContractID])
GO

CREATE TRIGGER [dbo].[UpdateContractTotalCost]
ON [dbo].[ContractDetails]
AFTER INSERT
AS
BEGIN
    DECLARE @ContractID INT;
    
    -- Get the ContractID of the newly inserted contract details
    SELECT @ContractID = ContractID FROM inserted;
    
    -- Update the TotalCost in the Contracts table
    UPDATE Contracts
    SET TotalCost = (
        SELECT SUM(RentalPricePerDay)
        FROM ContractDetails cd
        INNER JOIN Cars c ON cd.CarID = c.CarID
        WHERE cd.ContractID = @ContractID
    )
    WHERE ContractID = @ContractID;
END;