USE [Exam]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 19.12.2024 18:59:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[OrderComposition] [nvarchar](10) NOT NULL,
	[OrderCount] [int] NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[OrderDeliveryDate] [datetime] NOT NULL,
	[OrderPickupPointId] [int] NOT NULL,
	[OrderClientSurname] [nvarchar](50) NULL,
	[OrderClientFirstName] [nvarchar](50) NULL,
	[OrderClientPatronymic] [nvarchar](50) NULL,
	[OrderCode] [int] NOT NULL,
	[OrderStatus] [nvarchar](8) NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderProduct]    Script Date: 19.12.2024 18:59:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderProduct](
	[OrderID] [int] NOT NULL,
	[ProductArticleNumber] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[ProductArticleNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PickupPoint]    Script Date: 19.12.2024 18:59:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PickupPoint](
	[PickupPointId] [int] IDENTITY(1,1) NOT NULL,
	[PickupPointIndex] [int] NOT NULL,
	[PickupPointCity] [nvarchar](255) NOT NULL,
	[PickupPointStreet] [nvarchar](255) NOT NULL,
	[PickupPointHouse] [int] NOT NULL,
 CONSTRAINT [PK_PickupPoint] PRIMARY KEY CLUSTERED 
(
	[PickupPointId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 19.12.2024 18:59:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductArticleNumber] [nvarchar](100) NOT NULL,
	[ProductName] [nvarchar](max) NOT NULL,
	[ProductDescription] [nvarchar](max) NOT NULL,
	[ProductCategory] [nvarchar](max) NOT NULL,
	[ProductPhoto] [image] NOT NULL,
	[ProductManufacturer] [nvarchar](max) NOT NULL,
	[ProductCost] [decimal](10, 2) NOT NULL,
	[ProductDiscountAmount] [tinyint] NULL,
	[ProductQuantityInStock] [int] NOT NULL,
	[ProductStatus] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK__Product__2EA7DCD5F73A287F] PRIMARY KEY CLUSTERED 
(
	[ProductArticleNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 19.12.2024 18:59:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 19.12.2024 18:59:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserSurname] [nvarchar](50) NOT NULL,
	[UserFirstName] [nvarchar](50) NOT NULL,
	[UserPatronymic] [nvarchar](50) NOT NULL,
	[UserLogin] [nvarchar](50) NOT NULL,
	[UserPassword] [nvarchar](50) NOT NULL,
	[UserRole] [int] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([OrderID], [OrderComposition], [OrderCount], [OrderDate], [OrderDeliveryDate], [OrderPickupPointId], [OrderClientSurname], [OrderClientFirstName], [OrderClientPatronymic], [OrderCode], [OrderStatus]) VALUES (1, N'А112Т4', 2, CAST(N'2022-05-04T00:00:00.000' AS DateTime), CAST(N'2022-05-10T00:00:00.000' AS DateTime), 24, N'Новиков', N'Матвей', N'Маркович', 201, N'Новый ')
INSERT [dbo].[Order] ([OrderID], [OrderComposition], [OrderCount], [OrderDate], [OrderDeliveryDate], [OrderPickupPointId], [OrderClientSurname], [OrderClientFirstName], [OrderClientPatronymic], [OrderCode], [OrderStatus]) VALUES (2, N'F893T5', 2, CAST(N'2022-05-04T00:00:00.000' AS DateTime), CAST(N'2022-05-10T00:00:00.000' AS DateTime), 24, N'Новиков', N'Матвей', N'Маркович', 201, N'Новый ')
INSERT [dbo].[Order] ([OrderID], [OrderComposition], [OrderCount], [OrderDate], [OrderDeliveryDate], [OrderPickupPointId], [OrderClientSurname], [OrderClientFirstName], [OrderClientPatronymic], [OrderCode], [OrderStatus]) VALUES (3, N'E530Y6', 1, CAST(N'2022-05-05T00:00:00.000' AS DateTime), CAST(N'2022-05-11T00:00:00.000' AS DateTime), 25, NULL, NULL, NULL, 202, N'Новый ')
INSERT [dbo].[Order] ([OrderID], [OrderComposition], [OrderCount], [OrderDate], [OrderDeliveryDate], [OrderPickupPointId], [OrderClientSurname], [OrderClientFirstName], [OrderClientPatronymic], [OrderCode], [OrderStatus]) VALUES (4, N'F346G5', 2, CAST(N'2022-05-05T00:00:00.000' AS DateTime), CAST(N'2022-05-11T00:00:00.000' AS DateTime), 25, NULL, NULL, NULL, 202, N'Новый ')
INSERT [dbo].[Order] ([OrderID], [OrderComposition], [OrderCount], [OrderDate], [OrderDeliveryDate], [OrderPickupPointId], [OrderClientSurname], [OrderClientFirstName], [OrderClientPatronymic], [OrderCode], [OrderStatus]) VALUES (5, N'J432E4', 1, CAST(N'2022-05-06T00:00:00.000' AS DateTime), CAST(N'2022-05-12T00:00:00.000' AS DateTime), 26, N'Соловьев', N'Пётр', N'Никитич', 203, N'Новый ')
INSERT [dbo].[Order] ([OrderID], [OrderComposition], [OrderCount], [OrderDate], [OrderDeliveryDate], [OrderPickupPointId], [OrderClientSurname], [OrderClientFirstName], [OrderClientPatronymic], [OrderCode], [OrderStatus]) VALUES (6, N'D344Y7', 2, CAST(N'2022-05-06T00:00:00.000' AS DateTime), CAST(N'2022-05-12T00:00:00.000' AS DateTime), 26, N'Соловьев', N'Пётр', N'Никитич', 203, N'Новый ')
INSERT [dbo].[Order] ([OrderID], [OrderComposition], [OrderCount], [OrderDate], [OrderDeliveryDate], [OrderPickupPointId], [OrderClientSurname], [OrderClientFirstName], [OrderClientPatronymic], [OrderCode], [OrderStatus]) VALUES (7, N'E245R5', 1, CAST(N'2022-05-07T00:00:00.000' AS DateTime), CAST(N'2022-05-13T00:00:00.000' AS DateTime), 27, NULL, NULL, NULL, 204, N'Новый ')
INSERT [dbo].[Order] ([OrderID], [OrderComposition], [OrderCount], [OrderDate], [OrderDeliveryDate], [OrderPickupPointId], [OrderClientSurname], [OrderClientFirstName], [OrderClientPatronymic], [OrderCode], [OrderStatus]) VALUES (8, N'D378D3', 2, CAST(N'2022-05-07T00:00:00.000' AS DateTime), CAST(N'2022-05-13T00:00:00.000' AS DateTime), 27, NULL, NULL, NULL, 204, N'Новый ')
INSERT [dbo].[Order] ([OrderID], [OrderComposition], [OrderCount], [OrderDate], [OrderDeliveryDate], [OrderPickupPointId], [OrderClientSurname], [OrderClientFirstName], [OrderClientPatronymic], [OrderCode], [OrderStatus]) VALUES (9, N'H732R5', 3, CAST(N'2022-05-08T00:00:00.000' AS DateTime), CAST(N'2022-05-14T00:00:00.000' AS DateTime), 28, N'Васильева', N'Софья', N'Глебовна', 205, N'Новый ')
INSERT [dbo].[Order] ([OrderID], [OrderComposition], [OrderCount], [OrderDate], [OrderDeliveryDate], [OrderPickupPointId], [OrderClientSurname], [OrderClientFirstName], [OrderClientPatronymic], [OrderCode], [OrderStatus]) VALUES (10, N'R464G6', 2, CAST(N'2022-05-08T00:00:00.000' AS DateTime), CAST(N'2022-05-14T00:00:00.000' AS DateTime), 28, N'Васильева', N'Софья', N'Глебовна', 205, N'Новый ')
INSERT [dbo].[Order] ([OrderID], [OrderComposition], [OrderCount], [OrderDate], [OrderDeliveryDate], [OrderPickupPointId], [OrderClientSurname], [OrderClientFirstName], [OrderClientPatronymic], [OrderCode], [OrderStatus]) VALUES (11, N'K535G6', 3, CAST(N'2022-05-09T00:00:00.000' AS DateTime), CAST(N'2022-05-15T00:00:00.000' AS DateTime), 29, NULL, NULL, NULL, 206, N'Новый ')
INSERT [dbo].[Order] ([OrderID], [OrderComposition], [OrderCount], [OrderDate], [OrderDeliveryDate], [OrderPickupPointId], [OrderClientSurname], [OrderClientFirstName], [OrderClientPatronymic], [OrderCode], [OrderStatus]) VALUES (12, N'E573G6', 3, CAST(N'2022-05-09T00:00:00.000' AS DateTime), CAST(N'2022-05-15T00:00:00.000' AS DateTime), 29, NULL, NULL, NULL, 206, N'Новый ')
INSERT [dbo].[Order] ([OrderID], [OrderComposition], [OrderCount], [OrderDate], [OrderDeliveryDate], [OrderPickupPointId], [OrderClientSurname], [OrderClientFirstName], [OrderClientPatronymic], [OrderCode], [OrderStatus]) VALUES (13, N'G532R5', 5, CAST(N'2022-05-10T00:00:00.000' AS DateTime), CAST(N'2022-05-16T00:00:00.000' AS DateTime), 30, NULL, NULL, NULL, 207, N'Новый ')
INSERT [dbo].[Order] ([OrderID], [OrderComposition], [OrderCount], [OrderDate], [OrderDeliveryDate], [OrderPickupPointId], [OrderClientSurname], [OrderClientFirstName], [OrderClientPatronymic], [OrderCode], [OrderStatus]) VALUES (14, N'F344S4', 6, CAST(N'2022-05-10T00:00:00.000' AS DateTime), CAST(N'2022-05-16T00:00:00.000' AS DateTime), 30, NULL, NULL, NULL, 207, N'Новый ')
INSERT [dbo].[Order] ([OrderID], [OrderComposition], [OrderCount], [OrderDate], [OrderDeliveryDate], [OrderPickupPointId], [OrderClientSurname], [OrderClientFirstName], [OrderClientPatronymic], [OrderCode], [OrderStatus]) VALUES (15, N'D526R4', 5, CAST(N'2022-05-11T00:00:00.000' AS DateTime), CAST(N'2022-05-17T00:00:00.000' AS DateTime), 31, NULL, NULL, NULL, 208, N'Новый ')
INSERT [dbo].[Order] ([OrderID], [OrderComposition], [OrderCount], [OrderDate], [OrderDeliveryDate], [OrderPickupPointId], [OrderClientSurname], [OrderClientFirstName], [OrderClientPatronymic], [OrderCode], [OrderStatus]) VALUES (16, N'S753T5', 4, CAST(N'2022-05-11T00:00:00.000' AS DateTime), CAST(N'2022-05-17T00:00:00.000' AS DateTime), 31, NULL, NULL, NULL, 208, N'Новый ')
INSERT [dbo].[Order] ([OrderID], [OrderComposition], [OrderCount], [OrderDate], [OrderDeliveryDate], [OrderPickupPointId], [OrderClientSurname], [OrderClientFirstName], [OrderClientPatronymic], [OrderCode], [OrderStatus]) VALUES (17, N'V472S3', 3, CAST(N'2022-05-12T00:00:00.000' AS DateTime), CAST(N'2022-05-18T00:00:00.000' AS DateTime), 32, N'Львов', N'Роман', N'Павлович', 209, N'Новый ')
INSERT [dbo].[Order] ([OrderID], [OrderComposition], [OrderCount], [OrderDate], [OrderDeliveryDate], [OrderPickupPointId], [OrderClientSurname], [OrderClientFirstName], [OrderClientPatronymic], [OrderCode], [OrderStatus]) VALUES (18, N'A436H7', 3, CAST(N'2022-05-12T00:00:00.000' AS DateTime), CAST(N'2022-05-18T00:00:00.000' AS DateTime), 32, N'Львов', N'Роман', N'Павлович', 209, N'Новый ')
INSERT [dbo].[Order] ([OrderID], [OrderComposition], [OrderCount], [OrderDate], [OrderDeliveryDate], [OrderPickupPointId], [OrderClientSurname], [OrderClientFirstName], [OrderClientPatronymic], [OrderCode], [OrderStatus]) VALUES (19, N'O875F6', 4, CAST(N'2022-05-13T00:00:00.000' AS DateTime), CAST(N'2022-05-19T00:00:00.000' AS DateTime), 33, NULL, NULL, NULL, 210, N'Завершен')
INSERT [dbo].[Order] ([OrderID], [OrderComposition], [OrderCount], [OrderDate], [OrderDeliveryDate], [OrderPickupPointId], [OrderClientSurname], [OrderClientFirstName], [OrderClientPatronymic], [OrderCode], [OrderStatus]) VALUES (20, N'E479G6', 1, CAST(N'2022-05-13T00:00:00.000' AS DateTime), CAST(N'2022-05-19T00:00:00.000' AS DateTime), 33, NULL, NULL, NULL, 210, N'Завершен')
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[PickupPoint] ON 

INSERT [dbo].[PickupPoint] ([PickupPointId], [PickupPointIndex], [PickupPointCity], [PickupPointStreet], [PickupPointHouse]) VALUES (1, 344288, N'Ангарск', N'Чехова', 1)
INSERT [dbo].[PickupPoint] ([PickupPointId], [PickupPointIndex], [PickupPointCity], [PickupPointStreet], [PickupPointHouse]) VALUES (2, 614164, N'Ангарск', N'Степная', 30)
INSERT [dbo].[PickupPoint] ([PickupPointId], [PickupPointIndex], [PickupPointCity], [PickupPointStreet], [PickupPointHouse]) VALUES (3, 394242, N'Ангарск', N'Коммунистическая', 43)
INSERT [dbo].[PickupPoint] ([PickupPointId], [PickupPointIndex], [PickupPointCity], [PickupPointStreet], [PickupPointHouse]) VALUES (4, 660540, N'Ангарск', N'Солнечная', 25)
INSERT [dbo].[PickupPoint] ([PickupPointId], [PickupPointIndex], [PickupPointCity], [PickupPointStreet], [PickupPointHouse]) VALUES (5, 125837, N'Ангарск', N'Шоссейная', 40)
INSERT [dbo].[PickupPoint] ([PickupPointId], [PickupPointIndex], [PickupPointCity], [PickupPointStreet], [PickupPointHouse]) VALUES (6, 125703, N'Ангарск', N'Партизанская', 49)
INSERT [dbo].[PickupPoint] ([PickupPointId], [PickupPointIndex], [PickupPointCity], [PickupPointStreet], [PickupPointHouse]) VALUES (7, 625283, N'Ангарск', N'Победы', 46)
INSERT [dbo].[PickupPoint] ([PickupPointId], [PickupPointIndex], [PickupPointCity], [PickupPointStreet], [PickupPointHouse]) VALUES (8, 614611, N'Ангарск', N'Молодежная', 50)
INSERT [dbo].[PickupPoint] ([PickupPointId], [PickupPointIndex], [PickupPointCity], [PickupPointStreet], [PickupPointHouse]) VALUES (9, 454311, N'Ангарск', N'Новая', 19)
INSERT [dbo].[PickupPoint] ([PickupPointId], [PickupPointIndex], [PickupPointCity], [PickupPointStreet], [PickupPointHouse]) VALUES (10, 660007, N'Ангарск', N'Октябрьская', 19)
INSERT [dbo].[PickupPoint] ([PickupPointId], [PickupPointIndex], [PickupPointCity], [PickupPointStreet], [PickupPointHouse]) VALUES (11, 603036, N'Ангарск', N'Садовая', 4)
INSERT [dbo].[PickupPoint] ([PickupPointId], [PickupPointIndex], [PickupPointCity], [PickupPointStreet], [PickupPointHouse]) VALUES (12, 450983, N'Ангарск', N'Комсомольская', 26)
INSERT [dbo].[PickupPoint] ([PickupPointId], [PickupPointIndex], [PickupPointCity], [PickupPointStreet], [PickupPointHouse]) VALUES (13, 394782, N'Ангарск', N'Чехова', 3)
INSERT [dbo].[PickupPoint] ([PickupPointId], [PickupPointIndex], [PickupPointCity], [PickupPointStreet], [PickupPointHouse]) VALUES (14, 603002, N'Ангарск', N'Дзержинского', 28)
INSERT [dbo].[PickupPoint] ([PickupPointId], [PickupPointIndex], [PickupPointCity], [PickupPointStreet], [PickupPointHouse]) VALUES (15, 450558, N'Ангарск', N'Набережная', 30)
INSERT [dbo].[PickupPoint] ([PickupPointId], [PickupPointIndex], [PickupPointCity], [PickupPointStreet], [PickupPointHouse]) VALUES (16, 394060, N'Ангарск', N'Фрунзе', 43)
INSERT [dbo].[PickupPoint] ([PickupPointId], [PickupPointIndex], [PickupPointCity], [PickupPointStreet], [PickupPointHouse]) VALUES (17, 410661, N'Ангарск', N'Школьная', 50)
INSERT [dbo].[PickupPoint] ([PickupPointId], [PickupPointIndex], [PickupPointCity], [PickupPointStreet], [PickupPointHouse]) VALUES (18, 625590, N'Ангарск', N'Коммунистическая', 20)
INSERT [dbo].[PickupPoint] ([PickupPointId], [PickupPointIndex], [PickupPointCity], [PickupPointStreet], [PickupPointHouse]) VALUES (19, 625683, N'Ангарск', N'8 Марта', 22)
INSERT [dbo].[PickupPoint] ([PickupPointId], [PickupPointIndex], [PickupPointCity], [PickupPointStreet], [PickupPointHouse]) VALUES (20, 400562, N'Ангарск', N'Зеленая', 32)
INSERT [dbo].[PickupPoint] ([PickupPointId], [PickupPointIndex], [PickupPointCity], [PickupPointStreet], [PickupPointHouse]) VALUES (21, 614510, N'Ангарск', N'Маяковского', 47)
INSERT [dbo].[PickupPoint] ([PickupPointId], [PickupPointIndex], [PickupPointCity], [PickupPointStreet], [PickupPointHouse]) VALUES (22, 410542, N'Ангарск', N'Светлая', 46)
INSERT [dbo].[PickupPoint] ([PickupPointId], [PickupPointIndex], [PickupPointCity], [PickupPointStreet], [PickupPointHouse]) VALUES (23, 620839, N'Ангарск', N'Цветочная', 8)
INSERT [dbo].[PickupPoint] ([PickupPointId], [PickupPointIndex], [PickupPointCity], [PickupPointStreet], [PickupPointHouse]) VALUES (24, 443890, N'Ангарск', N'Коммунистическая', 1)
INSERT [dbo].[PickupPoint] ([PickupPointId], [PickupPointIndex], [PickupPointCity], [PickupPointStreet], [PickupPointHouse]) VALUES (25, 603379, N'Ангарск', N'Спортивная', 46)
INSERT [dbo].[PickupPoint] ([PickupPointId], [PickupPointIndex], [PickupPointCity], [PickupPointStreet], [PickupPointHouse]) VALUES (26, 603721, N'Ангарск', N'Гоголя', 41)
INSERT [dbo].[PickupPoint] ([PickupPointId], [PickupPointIndex], [PickupPointCity], [PickupPointStreet], [PickupPointHouse]) VALUES (27, 410172, N'Ангарск', N'Северная', 13)
INSERT [dbo].[PickupPoint] ([PickupPointId], [PickupPointIndex], [PickupPointCity], [PickupPointStreet], [PickupPointHouse]) VALUES (28, 420151, N'Ангарск', N'Вишневая', 32)
INSERT [dbo].[PickupPoint] ([PickupPointId], [PickupPointIndex], [PickupPointCity], [PickupPointStreet], [PickupPointHouse]) VALUES (29, 125061, N'Ангарск', N'Подгорная', 8)
INSERT [dbo].[PickupPoint] ([PickupPointId], [PickupPointIndex], [PickupPointCity], [PickupPointStreet], [PickupPointHouse]) VALUES (30, 630370, N'Ангарск', N'Шоссейная', 24)
INSERT [dbo].[PickupPoint] ([PickupPointId], [PickupPointIndex], [PickupPointCity], [PickupPointStreet], [PickupPointHouse]) VALUES (31, 614753, N'Ангарск', N'Полевая', 35)
INSERT [dbo].[PickupPoint] ([PickupPointId], [PickupPointIndex], [PickupPointCity], [PickupPointStreet], [PickupPointHouse]) VALUES (32, 426030, N'Ангарск', N'Маяковского', 44)
INSERT [dbo].[PickupPoint] ([PickupPointId], [PickupPointIndex], [PickupPointCity], [PickupPointStreet], [PickupPointHouse]) VALUES (33, 123123, N'saddasads', N'adsads', 2)
INSERT [dbo].[PickupPoint] ([PickupPointId], [PickupPointIndex], [PickupPointCity], [PickupPointStreet], [PickupPointHouse]) VALUES (34, 625560, N'Ангарск', N'Некрасова', 12)
INSERT [dbo].[PickupPoint] ([PickupPointId], [PickupPointIndex], [PickupPointCity], [PickupPointStreet], [PickupPointHouse]) VALUES (35, 630201, N'Ангарск', N'Комсомольская', 17)
INSERT [dbo].[PickupPoint] ([PickupPointId], [PickupPointIndex], [PickupPointCity], [PickupPointStreet], [PickupPointHouse]) VALUES (36, 190949, N'Ангарск', N'Мичурина', 26)
INSERT [dbo].[PickupPoint] ([PickupPointId], [PickupPointIndex], [PickupPointCity], [PickupPointStreet], [PickupPointHouse]) VALUES (37, 123123, N'saddasads', N'adsads', 2)
INSERT [dbo].[PickupPoint] ([PickupPointId], [PickupPointIndex], [PickupPointCity], [PickupPointStreet], [PickupPointHouse]) VALUES (40, 123123, N'saddasads', N'adsads', 2)
SET IDENTITY_INSERT [dbo].[PickupPoint] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductId], [ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (1, N'A436H7', N'Парфюм "Весенний сад"', N'Легкий весенний аромат с нотами ландыша и яблока.', N'Парфюмерия', 0x737072696E675F67617264656E2E6A7067, N'SpringScents', CAST(1699.00 AS Decimal(10, 2)), 170, 22, N'В наличии')
INSERT [dbo].[Product] ([ProductId], [ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (2, N'D344Y7', N'Лосьон для тела "Нежность"', N'Легкий лосьон с ароматом ванили и кокоса для увлажнения и питания кожи.', N'Косметика', 0x626F64795F6C6F74696F6E5F74656E6465722E6A7067, N'BodyLine', CAST(799.00 AS Decimal(10, 2)), 80, 18, N'В наличии')
INSERT [dbo].[Product] ([ProductId], [ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (3, N'D378D3', N'Гель для душа "Энергия утра"', N'Освежающий гель с экстрактом мяты и цитрусов.', N'Косметика', 0x6D6F726E696E675F656E657267792E6A7067, N'RefreshLine', CAST(399.00 AS Decimal(10, 2)), 40, 45, N'В наличии')
INSERT [dbo].[Product] ([ProductId], [ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (4, N'D526R4', N'Шампунь "Объем и сила"', N'Шампунь для тонких волос с коллагеном и кератином.', N'Косметика', 0x766F6C756D655F706F7765722E6A7067, N'StrongHair', CAST(449.00 AS Decimal(10, 2)), 45, 50, N'В наличии')
INSERT [dbo].[Product] ([ProductId], [ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (5, N'E245R5', N'Парфюм "Цветочный рай"', N'Яркий цветочный аромат с нотами розы и пиона.', N'Парфюмерия', 0x666C6F7765725F70617261646973652E6A7067, N'FloraDeluxe', CAST(2599.00 AS Decimal(10, 2)), 160, 12, N'В наличии')
INSERT [dbo].[Product] ([ProductId], [ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (6, N'E479G6', N'Парфюм "Тропический вечер"', N'Экзотический аромат с нотами манго и пачули.', N'Парфюмерия', 0x74726F706963616C5F6576656E696E672E6A7067, N'ExoticPerfume', CAST(2099.00 AS Decimal(10, 2)), 210, 15, N'В наличии')
INSERT [dbo].[Product] ([ProductId], [ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (7, N'E530Y6', N'Крем для лица "Увлажнение 24ч"', N'Увлажняющий крем для лица с гиалуроновой кислотой и витамином Е.', N'Косметика', 0x6D6F6973747572697A696E675F3234682E6A7067, N'Белоснежка', CAST(699.00 AS Decimal(10, 2)), 70, 25, N'В наличии')
INSERT [dbo].[Product] ([ProductId], [ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (8, N'E573G6', N'Скраб для тела "Миндаль и мед"', N'Отшелушивающий скраб с натуральными частицами миндаля.', N'Косметика', 0x616C6D6F6E645F73637275622E6A7067, N'NatureSpa', CAST(599.00 AS Decimal(10, 2)), 60, 28, N'В наличии')
INSERT [dbo].[Product] ([ProductId], [ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (9, N'F344S4', N'Маска для лица "Успокаивающая"', N'Маска с экстрактом лаванды для снятия раздражения.', N'Косметика', 0x63616C6D696E675F6D61736B2E6A7067, N'FaceCare', CAST(399.00 AS Decimal(10, 2)), 40, 35, N'В наличии')
INSERT [dbo].[Product] ([ProductId], [ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (10, N'F346G5', N'Парфюм "Вечерний бриз"', N'Элегантный вечерний аромат с нотами жасмина, амбры и мускуса.', N'Парфюмерия', 0x6576656E696E675F627265657A652E6A7067, N'ЭлитАромат', CAST(2999.00 AS Decimal(10, 2)), 200, 10, N'В наличии')
INSERT [dbo].[Product] ([ProductId], [ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (11, N'F893T5', N'Гель для умывания "Чистая кожа"', N'Нежный гель для умывания с экстрактами ромашки и алоэ вера для чувствительной кожи.', N'Косметика', 0x636C65616E5F736B696E5F67656C2E6A7067, N'Nature Beauty', CAST(499.00 AS Decimal(10, 2)), 50, 30, N'В наличии')
INSERT [dbo].[Product] ([ProductId], [ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (12, N'G532R5', N'Туалетная вода "Гармония природы"', N'Природный аромат с нотами трав и древесины.', N'Парфюмерия', 0x6E61747572655F6861726D6F6E792E6A7067, N'GreenEssence', CAST(1899.00 AS Decimal(10, 2)), 190, 18, N'В наличии')
INSERT [dbo].[Product] ([ProductId], [ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (13, N'H732R5', N'Туалетная вода "Морская свежесть"', N'Свежий морской аромат с нотами акватики и зелёного яблока.', N'Парфюмерия', 0x7365615F66726573686E6573732E6A7067, N'OceanAroma', CAST(1799.00 AS Decimal(10, 2)), 180, 20, N'В наличии')
INSERT [dbo].[Product] ([ProductId], [ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (14, N'J432E4', N'Шампунь "Сияние волос"', N'Шампунь для нормальных волос с протеинами шёлка и аргановым маслом.', N'Косметика', 0x7368696E655F686169722E6A7067, N'ВитаКосметик', CAST(399.00 AS Decimal(10, 2)), 40, 50, N'В наличии')
INSERT [dbo].[Product] ([ProductId], [ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (15, N'K535G6', N'Парфюм "Ночной цветок"', N'Теплый и сладкий аромат с нотами ванили и белых цветов.', N'Парфюмерия', 0x6E696768745F666C6F7765722E6A7067, N'EdenPerfume', CAST(3199.00 AS Decimal(10, 2)), 220, 8, N'В наличии')
INSERT [dbo].[Product] ([ProductId], [ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (16, N'O875F6', N'Крем для тела "Питательный уход"', N'Питательный крем для тела с маслом авокадо.', N'Косметика', 0x6E6F7572697368696E675F626F64792E6A7067, N'BodyWell', CAST(699.00 AS Decimal(10, 2)), 70, 25, N'В наличии')
INSERT [dbo].[Product] ([ProductId], [ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (17, N'R464G6', N'Крем для рук "Бархатные руки"', N'Питательный крем с маслом ши и витаминами для мягкости рук.', N'Косметика', 0x76656C7665745F68616E64732E6A7067, N'CareSoft', CAST(299.00 AS Decimal(10, 2)), 30, 40, N'В наличии')
INSERT [dbo].[Product] ([ProductId], [ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (18, N'S753T5', N'Парфюм "Сладкая ночь"', N'Глубокий вечерний аромат с нотами сандала и шоколада.', N'Парфюмерия', 0x73776565745F6E696768742E6A7067, N'NightDelight', CAST(2899.00 AS Decimal(10, 2)), 190, 10, N'В наличии')
INSERT [dbo].[Product] ([ProductId], [ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (19, N'V472S3', N'Бальзам для губ "Клубника"', N'Увлажняющий бальзам с ароматом клубники и витамином Е.', N'Косметика', 0x737472617762657272795F62616C6D2E6A7067, N'LipCare', CAST(199.00 AS Decimal(10, 2)), 20, 60, N'В наличии')
INSERT [dbo].[Product] ([ProductId], [ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (20, N'А112Т4', N'Туалетная вода "Свежесть утра"', N'Легкий цитрусовый аромат с нотами мандарина и зелёного чая.', N'Парфюмерия', 0x66726573685F6D6F726E696E672E6A7067, N'Парфюм Люкс', CAST(1999.00 AS Decimal(10, 2)), 200, 15, N'В наличии')
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (1, N'Администратор')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (2, N'Менеджер')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (3, N'Клиент')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (4, N'string')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (1, N'Константинова ', N'Вероника', N'Агафоновна', N'loginDEsgg2018', N'qhgYnW', 2)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (2, N'Меркушев ', N'Мартын', N'Федотович', N'loginDEdcd2018', N'LxR6YI', 3)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (3, N'Казаков ', N'Федот', N'Кондратович', N'loginDEisg2018', N'Cp8ddU', 2)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (4, N'Карпов ', N'Улеб', N'Леонидович', N'loginDEcph2018', N'7YpE0p', 1)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (5, N'Королёв ', N'Матвей', N'Вадимович', N'loginDEgco2018', N'nMr|ss', 3)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (6, N'Юдин ', N'Герман', N'Кондратович', N'loginDEwjg2018', N'9UfqWQ', 3)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (7, N'Беляева ', N'Анна', N'Вячеславовна', N'loginDEjbz2018', N'xIAWNI', 1)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (8, N'Беляев ', N'Валентин', N'Артёмович', N'loginDEmgu2018', N'0gC3bk', 2)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (9, N'Семёнов ', N'Герман', N'Дмитрьевич', N'loginDErdg2018', N'ni0ue0', 2)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (10, N'Шестаков ', N'Илья', N'Антонинович', N'loginDEjtv2018', N'f2ZaN6', 3)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (11, N'Власов ', N'Вадим', N'Васильевич', N'loginDEtfj2018', N'{{ksPn', 3)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (12, N'Савельев ', N'Арсений', N'Авксентьевич', N'loginDEpnb2018', N'{ADBdc', 1)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (13, N'Ефимов ', N'Руслан', N'Якунович', N'loginDEzer2018', N'5&R+zs', 1)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (14, N'Бурова ', N'Марфа', N'Федотовна', N'loginDEiin2018', N'y9l*b}', 3)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (15, N'Селезнёв ', N'Александр', N'Никитевич', N'loginDEqda2018', N'|h+r}I', 3)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (16, N'Кулакова ', N'Виктория', N'Георгьевна', N'loginDEbnj2018', N'#ИМЯ?', 3)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (17, N'Дорофеева ', N'Кира', N'Демьяновна', N'loginDEqte2018', N'dC8bDI', 3)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (18, N'Сафонова ', N'Нинель', N'Якововна', N'loginDEfeo2018', N'8cI7vq', 3)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (19, N'Ситникова ', N'София', N'Лукьевна', N'loginDEvni2018', N'e4pVIv', 3)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (20, N'Медведев ', N'Ириней', N'Геннадьевич', N'loginDEjis2018', N'A9K++2', 2)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (21, N'Суханова ', N'Евгения', N'Улебовна', N'loginDExvv2018', N'R1zh}|', 2)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (22, N'Игнатьев ', N'Владлен', N'Дамирович', N'loginDEadl2018', N'F&IWf4', 2)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (23, N'Ефремов ', N'Христофор', N'Владиславович', N'loginDEyzn2018', N'P1v24R', 3)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (24, N'Кошелев ', N'Ростислав', N'Куприянович', N'loginDEphn2018', N'F}jGsJ', 3)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (25, N'Галкина ', N'Тамара', N'Авксентьевна', N'loginDEdvk2018', N'NKNkup', 1)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (26, N'Журавлёва ', N'Вера', N'Арсеньевна', N'loginDEtld2018', N'c+CECK', 2)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (27, N'Савина ', N'Таисия', N'Глебовна', N'loginDEima2018', N'XK3sOA', 1)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (28, N'Иванов ', N'Яков', N'Мэлорович', N'loginDEyfe2018', N'4Bbzpa', 3)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (29, N'Лыткин ', N'Ким', N'Алексеевич', N'loginDEwqc2018', N'vRtAP*', 2)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (30, N'Логинов ', N'Федот', N'Святославович', N'loginDEgtt2018', N'7YD|BR', 2)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (31, N'Русакова ', N'Марина', N'Юлиановна', N'loginDEiwl2018', N'LhlmIl', 2)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (32, N'Константинов ', N'Пётр', N'Кондратович', N'loginDEyvi2018', N'22beR}', 1)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (33, N'Поляков ', N'Анатолий', N'Игоревич', N'loginDEtfz2018', N'uQY0ZQ', 3)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (34, N'Панфилова ', N'Василиса', N'Григорьевна', N'loginDEikb2018', N'*QkUxc', 1)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (35, N'Воробьёв ', N'Герман', N'Романович', N'loginDEdmi2018', N'HOGFbU', 3)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (36, N'Андреев ', N'Ростислав', N'Федосеевич', N'loginDEtlo2018', N'58Jxrg', 1)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (37, N'Бобров ', N'Агафон', N'Владимирович', N'loginDEsnd2018', N'lLHqZf', 1)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (38, N'Лапин ', N'Алексей', N'Витальевич', N'loginDEgno2018', N'4fqLiO', 1)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (39, N'Шестаков ', N'Авдей', N'Иванович', N'loginDEgnl2018', N'wdio{u', 3)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (40, N'Гаврилова ', N'Алина', N'Эдуардовна', N'loginDEzna2018', N'yz1iMB', 3)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (41, N'Жуков ', N'Юлиан', N'Валерьянович', N'loginDEsyh2018', N'&4jYGs', 2)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (42, N'Пономарёв ', N'Максим', N'Альвианович', N'loginDExex2018', N'rnh36{', 3)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (43, N'Зиновьева ', N'Мария', N'Лаврентьевна', N'loginDEdjm2018', N'KjI1JR', 2)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (44, N'Осипов ', N'Артём', N'Мэлорович', N'loginDEgup2018', N'36|KhF', 3)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (45, N'Лапин ', N'Вячеслав', N'Геласьевич', N'loginDEdat2018', N'ussd8Q', 1)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (46, N'Зуев ', N'Ириней', N'Вадимович', N'loginDEffj2018', N'cJP+HC', 3)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (47, N'Коновалова ', N'Агафья', N'Митрофановна', N'loginDEisp2018', N'dfz5Ii', 2)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (48, N'Исаев ', N'Дмитрий', N'Аристархович', N'loginDEfrp2018', N'6dcR|9', 2)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (49, N'Белозёрова ', N'Алевтина', N'Лаврентьевна', N'loginDEaee2018', N'5&qONH', 3)
INSERT [dbo].[User] ([UserId], [UserSurname], [UserFirstName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (50, N'Самсонов ', N'Агафон', N'Максимович', N'loginDEthu2018', N'|0xWzV', 3)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_PickupPoint] FOREIGN KEY([OrderPickupPointId])
REFERENCES [dbo].[PickupPoint] ([PickupPointId])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_PickupPoint]
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD  CONSTRAINT [FK__OrderProd__Produ__412EB0B6] FOREIGN KEY([ProductArticleNumber])
REFERENCES [dbo].[Product] ([ProductArticleNumber])
GO
ALTER TABLE [dbo].[OrderProduct] CHECK CONSTRAINT [FK__OrderProd__Produ__412EB0B6]
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD  CONSTRAINT [FK_OrderProduct_Order] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
ALTER TABLE [dbo].[OrderProduct] CHECK CONSTRAINT [FK_OrderProduct_Order]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([UserRole])
REFERENCES [dbo].[Role] ([RoleID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
