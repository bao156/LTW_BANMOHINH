USE [BanMoHinh]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 1/20/2021 12:37:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Accounts](
	[Email] [varchar](100) NOT NULL,
	[Password] [varchar](100) NOT NULL,
	[Role] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Accounts] PRIMARY KEY CLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 1/20/2021 12:37:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CartDetail]    Script Date: 1/20/2021 12:37:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CartDetail](
	[CartId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_CartDetail] PRIMARY KEY CLUSTERED 
(
	[CartId] ASC,
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Order_Items]    Script Date: 1/20/2021 12:37:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_Items](
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_Order_Items] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC,
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orders]    Script Date: 1/20/2021 12:37:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[Total] [float] NULL,
	[CreatedAtDate] [date] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 1/20/2021 12:37:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](100) NOT NULL,
	[ProductType] [varchar](50) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [int] NOT NULL,
	[ImageSource] [varchar](50) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Users]    Script Date: 1/20/2021 12:37:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Firstname] [nvarchar](50) NOT NULL,
	[Lastname] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](100) NULL,
	[Email] [varchar](100) NOT NULL,
	[Phone] [nchar](15) NULL,
	[Birthday] [date] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Accounts] ([Email], [Password], [Role]) VALUES (N'betweentheraindrop156@gmail.com', N'123456', N'user')
INSERT [dbo].[Accounts] ([Email], [Password], [Role]) VALUES (N'dungtien157@gmail.com', N'123456', N'admin')
INSERT [dbo].[Accounts] ([Email], [Password], [Role]) VALUES (N'leminh157@gmail.com', N'123456', N'user')
INSERT [dbo].[Accounts] ([Email], [Password], [Role]) VALUES (N'nguyenthaibao157@gmail.com', N'123456', N'user')
SET IDENTITY_INSERT [dbo].[Cart] ON 

INSERT [dbo].[Cart] ([Id], [UserID]) VALUES (1, 2)
INSERT [dbo].[Cart] ([Id], [UserID]) VALUES (2, 9)
SET IDENTITY_INSERT [dbo].[Cart] OFF
INSERT [dbo].[CartDetail] ([CartId], [ProductId], [Quantity]) VALUES (1, 5, 2)
INSERT [dbo].[CartDetail] ([CartId], [ProductId], [Quantity]) VALUES (1, 11, 2)
INSERT [dbo].[CartDetail] ([CartId], [ProductId], [Quantity]) VALUES (1, 18, 1)
INSERT [dbo].[CartDetail] ([CartId], [ProductId], [Quantity]) VALUES (1, 29, 2)
INSERT [dbo].[CartDetail] ([CartId], [ProductId], [Quantity]) VALUES (1, 31, 2)
INSERT [dbo].[CartDetail] ([CartId], [ProductId], [Quantity]) VALUES (2, 20, 1)
INSERT [dbo].[Order_Items] ([OrderId], [ProductId], [Quantity]) VALUES (1, 4, 2)
INSERT [dbo].[Order_Items] ([OrderId], [ProductId], [Quantity]) VALUES (2, 9, 1)
INSERT [dbo].[Order_Items] ([OrderId], [ProductId], [Quantity]) VALUES (3, 11, 2)
INSERT [dbo].[Order_Items] ([OrderId], [ProductId], [Quantity]) VALUES (3, 18, 1)
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [UserId], [Total], [CreatedAtDate]) VALUES (1, 2, 4000000, CAST(N'2021-01-12' AS Date))
INSERT [dbo].[Orders] ([Id], [UserId], [Total], [CreatedAtDate]) VALUES (2, 2, 2500000, CAST(N'2021-01-12' AS Date))
INSERT [dbo].[Orders] ([Id], [UserId], [Total], [CreatedAtDate]) VALUES (3, 2, 7000000, CAST(N'2021-01-13' AS Date))
SET IDENTITY_INSERT [dbo].[Orders] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Id], [ProductName], [ProductType], [Quantity], [Price], [ImageSource]) VALUES (2, N'Tượng công chúa Shirahoshi', N'onepiece', 20, 1500000, N'shira.jpg')
INSERT [dbo].[Product] ([Id], [ProductName], [ProductType], [Quantity], [Price], [ImageSource]) VALUES (4, N'Tượng Luffy', N'onepiece', 15, 2000000, N'luffy.jpg')
INSERT [dbo].[Product] ([Id], [ProductName], [ProductType], [Quantity], [Price], [ImageSource]) VALUES (5, N'Tượng Zoro', N'onepiece', 50, 5000000, N'zoro.jpg')
INSERT [dbo].[Product] ([Id], [ProductName], [ProductType], [Quantity], [Price], [ImageSource]) VALUES (6, N'Tượng Robin', N'onepiece', 20, 2000000, N'robin.jpg')
INSERT [dbo].[Product] ([Id], [ProductName], [ProductType], [Quantity], [Price], [ImageSource]) VALUES (9, N'Tượng Hancock', N'onepiece', 10, 2500000, N'hancock.jpg')
INSERT [dbo].[Product] ([Id], [ProductName], [ProductType], [Quantity], [Price], [ImageSource]) VALUES (10, N'Tượng Saber', N'fate', 20, 1500000, N'saber.jpg')
INSERT [dbo].[Product] ([Id], [ProductName], [ProductType], [Quantity], [Price], [ImageSource]) VALUES (11, N'Tượng Latios', N'pokemon', 25, 3000000, N'latios.jpg')
INSERT [dbo].[Product] ([Id], [ProductName], [ProductType], [Quantity], [Price], [ImageSource]) VALUES (12, N'Tượng Milotic', N'pokemon', 30, 5000000, N'milotic.png')
INSERT [dbo].[Product] ([Id], [ProductName], [ProductType], [Quantity], [Price], [ImageSource]) VALUES (13, N'Tượng Nami', N'onepiece', 20, 3500000, N'nami.jpg')
INSERT [dbo].[Product] ([Id], [ProductName], [ProductType], [Quantity], [Price], [ImageSource]) VALUES (14, N'Tượng Phượng Hoàng Marco', N'onepiece', 20, 1000000, N'marco.jpg')
INSERT [dbo].[Product] ([Id], [ProductName], [ProductType], [Quantity], [Price], [ImageSource]) VALUES (15, N'Tượng Vinsmoke Sanji', N'onepiece', 20, 1250000, N'sanji.jpg')
INSERT [dbo].[Product] ([Id], [ProductName], [ProductType], [Quantity], [Price], [ImageSource]) VALUES (16, N'Tượng ho-oh', N'pokemon', 20, 1100000, N'hooh.jpg')
INSERT [dbo].[Product] ([Id], [ProductName], [ProductType], [Quantity], [Price], [ImageSource]) VALUES (17, N'Tượng jirachi', N'pokemon', 30, 2500000, N'jirachi.jpg')
INSERT [dbo].[Product] ([Id], [ProductName], [ProductType], [Quantity], [Price], [ImageSource]) VALUES (18, N'Tượng Latias', N'pokemon', 25, 1000000, N'latias.jpg')
INSERT [dbo].[Product] ([Id], [ProductName], [ProductType], [Quantity], [Price], [ImageSource]) VALUES (19, N'Mega Lucario', N'pokemon', 15, 3250000, N'lucario.jpg')
INSERT [dbo].[Product] ([Id], [ProductName], [ProductType], [Quantity], [Price], [ImageSource]) VALUES (20, N'Tượng Mew', N'pokemon', 25, 3550000, N'mew.jpg')
INSERT [dbo].[Product] ([Id], [ProductName], [ProductType], [Quantity], [Price], [ImageSource]) VALUES (21, N'Tượng Pikachu', N'pokemon', 15, 15000000, N'pikachu.jpg')
INSERT [dbo].[Product] ([Id], [ProductName], [ProductType], [Quantity], [Price], [ImageSource]) VALUES (22, N'Tượng suicune', N'pokemon', 25, 1850000, N'suicune.jpg')
INSERT [dbo].[Product] ([Id], [ProductName], [ProductType], [Quantity], [Price], [ImageSource]) VALUES (23, N'Tượng Hinata', N'naruto', 30, 1750000, N'hinata.jpg')
INSERT [dbo].[Product] ([Id], [ProductName], [ProductType], [Quantity], [Price], [ImageSource]) VALUES (24, N'Tượng Jirachi', N'naruto', 25, 2250000, N'jirachi.jpg')
INSERT [dbo].[Product] ([Id], [ProductName], [ProductType], [Quantity], [Price], [ImageSource]) VALUES (25, N'Tượng naruto', N'naruto', 25, 3600000, N'naruto.jpg')
INSERT [dbo].[Product] ([Id], [ProductName], [ProductType], [Quantity], [Price], [ImageSource]) VALUES (26, N'Tượng Pain', N'naruto', 15, 2650000, N'pain.jpg')
INSERT [dbo].[Product] ([Id], [ProductName], [ProductType], [Quantity], [Price], [ImageSource]) VALUES (27, N'Tượng Sasuke Lightning', N'naruto', 12, 1200000, N'sasukea.jpg')
INSERT [dbo].[Product] ([Id], [ProductName], [ProductType], [Quantity], [Price], [ImageSource]) VALUES (28, N'Tượng Dark Sasuke', N'naruto', 15, 2000000, N'sasukec.jpg')
INSERT [dbo].[Product] ([Id], [ProductName], [ProductType], [Quantity], [Price], [ImageSource]) VALUES (29, N'Tượng Sasuke Fight', N'naruto', 15, 15000000, N'sasukub.jpg')
INSERT [dbo].[Product] ([Id], [ProductName], [ProductType], [Quantity], [Price], [ImageSource]) VALUES (30, N'Tượng Tsunade', N'naruto', 12, 1220000, N'tsunade.jpg')
INSERT [dbo].[Product] ([Id], [ProductName], [ProductType], [Quantity], [Price], [ImageSource]) VALUES (31, N'Tượng Alter Saber', N'fate', 12, 1230000, N'altersaber.jpg')
INSERT [dbo].[Product] ([Id], [ProductName], [ProductType], [Quantity], [Price], [ImageSource]) VALUES (32, N'Tượng Archer', N'fate', 30, 2250000, N'archer.jpg')
INSERT [dbo].[Product] ([Id], [ProductName], [ProductType], [Quantity], [Price], [ImageSource]) VALUES (33, N'Tượng Caster', N'fate', 12, 2220000, N'caester.jpg')
INSERT [dbo].[Product] ([Id], [ProductName], [ProductType], [Quantity], [Price], [ImageSource]) VALUES (34, N'Tượng Gilmash', N'fate', 45, 500000, N'gil.jpg')
INSERT [dbo].[Product] ([Id], [ProductName], [ProductType], [Quantity], [Price], [ImageSource]) VALUES (35, N'Tượng Rider', N'fate', 12, 2540000, N'rider.jpg')
INSERT [dbo].[Product] ([Id], [ProductName], [ProductType], [Quantity], [Price], [ImageSource]) VALUES (36, N'Tượng Rin', N'fate', 16, 2560000, N'rin.jpg')
INSERT [dbo].[Product] ([Id], [ProductName], [ProductType], [Quantity], [Price], [ImageSource]) VALUES (37, N'Tượng Sakura', N'fate', 20, 2400000, N'sakura.jpg')
INSERT [dbo].[Product] ([Id], [ProductName], [ProductType], [Quantity], [Price], [ImageSource]) VALUES (38, N'Tượng Erza Thường', N'fairytail', 25, 3100000, N'erza.jpg')
INSERT [dbo].[Product] ([Id], [ProductName], [ProductType], [Quantity], [Price], [ImageSource]) VALUES (39, N'Vip Armor Erza', N'fairytail', 25, 1000000, N'erzaa.jpg')
INSERT [dbo].[Product] ([Id], [ProductName], [ProductType], [Quantity], [Price], [ImageSource]) VALUES (40, N'Tượng Erza Vải', N'fairytail', 25, 1500000, N'erzab.jpg')
INSERT [dbo].[Product] ([Id], [ProductName], [ProductType], [Quantity], [Price], [ImageSource]) VALUES (41, N'Tượng Erza Bunny', N'fairytail', 12, 3500000, N'erzabunny.jpg')
INSERT [dbo].[Product] ([Id], [ProductName], [ProductType], [Quantity], [Price], [ImageSource]) VALUES (42, N'Tượng Gray Frost Arrow', N'fairytail', 25, 4000000, N'gray.jpg')
INSERT [dbo].[Product] ([Id], [ProductName], [ProductType], [Quantity], [Price], [ImageSource]) VALUES (43, N'Tượng Lucy', N'fairytail', 15, 2540000, N'lucy.jpg')
INSERT [dbo].[Product] ([Id], [ProductName], [ProductType], [Quantity], [Price], [ImageSource]) VALUES (44, N'Tượng Cat Lucy', N'fairytail', 12, 3600000, N'lucycat.jpg')
INSERT [dbo].[Product] ([Id], [ProductName], [ProductType], [Quantity], [Price], [ImageSource]) VALUES (47, N'Tượng Cat Wendy', N'fairytail', 25, 3550000, N'wendy.jpg')
INSERT [dbo].[Product] ([Id], [ProductName], [ProductType], [Quantity], [Price], [ImageSource]) VALUES (48, N'Tượng Erza đẹp', N'fairytail', 15, 15000000, N'erzaf.jpg')
INSERT [dbo].[Product] ([Id], [ProductName], [ProductType], [Quantity], [Price], [ImageSource]) VALUES (1049, N'Tượng LA LA', N'onepiece', 15, 2000000, N'')
SET IDENTITY_INSERT [dbo].[Product] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [Firstname], [Lastname], [Address], [Email], [Phone], [Birthday]) VALUES (2, N'Nguyễn Thái', N'Bảo', N'Đồng Tháp', N'nguyenthaibao157@gmail.com', N'0836877964     ', CAST(N'1999-01-01' AS Date))
INSERT [dbo].[Users] ([Id], [Firstname], [Lastname], [Address], [Email], [Phone], [Birthday]) VALUES (8, N'Nguyễn Tiến', N'Dũng', N'Meo Meo', N'dungtien157@gmail.com', N'0672181522     ', CAST(N'1999-05-10' AS Date))
INSERT [dbo].[Users] ([Id], [Firstname], [Lastname], [Address], [Email], [Phone], [Birthday]) VALUES (9, N'Lê', N'Minh', N'An Giang', N'leminh157@gmail.com', N'0836877962     ', CAST(N'2021-01-13' AS Date))
SET IDENTITY_INSERT [dbo].[Users] OFF
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Users]
GO
ALTER TABLE [dbo].[CartDetail]  WITH CHECK ADD  CONSTRAINT [FK_CartDetail_Cart] FOREIGN KEY([CartId])
REFERENCES [dbo].[Cart] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CartDetail] CHECK CONSTRAINT [FK_CartDetail_Cart]
GO
ALTER TABLE [dbo].[CartDetail]  WITH CHECK ADD  CONSTRAINT [FK_CartDetail_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CartDetail] CHECK CONSTRAINT [FK_CartDetail_Product]
GO
ALTER TABLE [dbo].[Order_Items]  WITH CHECK ADD  CONSTRAINT [FK_Order_Items_Order] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Order_Items] CHECK CONSTRAINT [FK_Order_Items_Order]
GO
ALTER TABLE [dbo].[Order_Items]  WITH CHECK ADD  CONSTRAINT [FK_Order_Items_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Order_Items] CHECK CONSTRAINT [FK_Order_Items_Product]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Order_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Order_Users]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Accounts] FOREIGN KEY([Email])
REFERENCES [dbo].[Accounts] ([Email])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Accounts]
GO
