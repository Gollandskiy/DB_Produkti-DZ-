USE [master]
GO
/****** Object:  Database [Shop_Produkti]    Script Date: 17.07.2023 18:57:55 ******/
CREATE DATABASE [Shop_Produkti]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Shop_Produkti', FILENAME = N'D:\SQL Management ШАГ\Shop_Produkti.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Shop_Produkti_log', FILENAME = N'D:\SQL Management ШАГ\Shop_Produkti_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Shop_Produkti] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Shop_Produkti].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Shop_Produkti] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Shop_Produkti] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Shop_Produkti] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Shop_Produkti] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Shop_Produkti] SET ARITHABORT OFF 
GO
ALTER DATABASE [Shop_Produkti] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Shop_Produkti] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Shop_Produkti] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Shop_Produkti] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Shop_Produkti] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Shop_Produkti] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Shop_Produkti] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Shop_Produkti] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Shop_Produkti] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Shop_Produkti] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Shop_Produkti] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Shop_Produkti] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Shop_Produkti] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Shop_Produkti] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Shop_Produkti] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Shop_Produkti] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Shop_Produkti] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Shop_Produkti] SET RECOVERY FULL 
GO
ALTER DATABASE [Shop_Produkti] SET  MULTI_USER 
GO
ALTER DATABASE [Shop_Produkti] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Shop_Produkti] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Shop_Produkti] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Shop_Produkti] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Shop_Produkti] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Shop_Produkti] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Shop_Produkti', N'ON'
GO
ALTER DATABASE [Shop_Produkti] SET QUERY_STORE = ON
GO
ALTER DATABASE [Shop_Produkti] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Shop_Produkti]
GO
/****** Object:  Table [dbo].[Produkt_Table]    Script Date: 17.07.2023 18:57:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Produkt_Table](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Category] [nvarchar](50) NULL,
	[Price] [float] NULL,
	[Discount] [int] NULL,
	[Quantity] [int] NULL,
	[Measurement] [nvarchar](50) NULL,
	[Producer] [nvarchar](50) NULL,
	[Country] [nvarchar](50) NULL,
	[Supplier] [nvarchar](50) NULL,
	[Date_Delivery] [date] NULL,
	[Expire_Date] [date] NULL,
 CONSTRAINT [PK_Produkt_Table] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Produkt_Table] ON 

INSERT [dbo].[Produkt_Table] ([ID], [Name], [Category], [Price], [Discount], [Quantity], [Measurement], [Producer], [Country], [Supplier], [Date_Delivery], [Expire_Date]) VALUES (1, N'Хлеб Белый', N'Хлебобулочные', 15, 0, 100, N'Штук', N'Хлеб_Компани', N'Украина', N'Деливери_Юкрейн', CAST(N'2023-07-17' AS Date), CAST(N'2023-09-18' AS Date))
INSERT [dbo].[Produkt_Table] ([ID], [Name], [Category], [Price], [Discount], [Quantity], [Measurement], [Producer], [Country], [Supplier], [Date_Delivery], [Expire_Date]) VALUES (2, N'Хлеб Черный', N'Хлебобулочные', 20, 5, 75, N'Штук', N'Хлеб_Компани', N'Украина', N'Деливери_Юкрейн', CAST(N'2023-07-18' AS Date), CAST(N'2023-08-03' AS Date))
INSERT [dbo].[Produkt_Table] ([ID], [Name], [Category], [Price], [Discount], [Quantity], [Measurement], [Producer], [Country], [Supplier], [Date_Delivery], [Expire_Date]) VALUES (3, N'Хлеб Украинский', N'Хлебобулочные', 18, 10, 90, N'Штук', N'Хлеб_Компани', N'Украина', N'Деливери_Юкрейн', CAST(N'2023-07-28' AS Date), CAST(N'2023-08-19' AS Date))
INSERT [dbo].[Produkt_Table] ([ID], [Name], [Category], [Price], [Discount], [Quantity], [Measurement], [Producer], [Country], [Supplier], [Date_Delivery], [Expire_Date]) VALUES (4, N'Пиво Оболонь', N'Алкоголь', 30, 0, 150, N'Литр', N'Оболонь_Корп', N'Украина', N'Алко_Деливери', CAST(N'2023-07-12' AS Date), CAST(N'2023-07-29' AS Date))
INSERT [dbo].[Produkt_Table] ([ID], [Name], [Category], [Price], [Discount], [Quantity], [Measurement], [Producer], [Country], [Supplier], [Date_Delivery], [Expire_Date]) VALUES (5, N'Пиво Львивське', N'Алкоголь', 40, 15, 100, N'Литр', N'Львивське_Продакшн', N'Украина', N'Алко_Деливери', CAST(N'2023-07-12' AS Date), CAST(N'2023-07-25' AS Date))
INSERT [dbo].[Produkt_Table] ([ID], [Name], [Category], [Price], [Discount], [Quantity], [Measurement], [Producer], [Country], [Supplier], [Date_Delivery], [Expire_Date]) VALUES (6, N'Пиво Зиберт', N'Алкоголь', 35, 18, 85, N'Литр', N'Зиберт_Алко', N'Украина', N'Алко_Деливери', CAST(N'2023-07-29' AS Date), CAST(N'2023-08-17' AS Date))
INSERT [dbo].[Produkt_Table] ([ID], [Name], [Category], [Price], [Discount], [Quantity], [Measurement], [Producer], [Country], [Supplier], [Date_Delivery], [Expire_Date]) VALUES (7, N'Шоколад Милка', N'Сладости', 40, 0, 5, N'Ящик', N'Милка', N'Польша', N'Шугар_Деливери', CAST(N'2023-08-13' AS Date), CAST(N'2023-08-17' AS Date))
INSERT [dbo].[Produkt_Table] ([ID], [Name], [Category], [Price], [Discount], [Quantity], [Measurement], [Producer], [Country], [Supplier], [Date_Delivery], [Expire_Date]) VALUES (8, N'Шоколад Рошен', N'Сладости', 40, 0, 10, N'Ящик', N'Рошен', N'Украина', N'Шугар_Деливери', CAST(N'2023-08-13' AS Date), CAST(N'2023-08-18' AS Date))
INSERT [dbo].[Produkt_Table] ([ID], [Name], [Category], [Price], [Discount], [Quantity], [Measurement], [Producer], [Country], [Supplier], [Date_Delivery], [Expire_Date]) VALUES (9, N'Шоколад Черный', N'Сладости', 30, 12, 20, N'Ящик', N'Комбо_Чоколейд', N'Испания', N'Шугар_Деливери', CAST(N'2023-08-25' AS Date), CAST(N'2023-09-15' AS Date))
INSERT [dbo].[Produkt_Table] ([ID], [Name], [Category], [Price], [Discount], [Quantity], [Measurement], [Producer], [Country], [Supplier], [Date_Delivery], [Expire_Date]) VALUES (10, N'Молоко Обычное', N'Молочное', 25, 0, 30, N'Пачки', N'Молочка_Ворлд', N'Румыния', N'Милк_Делив', CAST(N'2023-08-01' AS Date), CAST(N'2023-08-06' AS Date))
INSERT [dbo].[Produkt_Table] ([ID], [Name], [Category], [Price], [Discount], [Quantity], [Measurement], [Producer], [Country], [Supplier], [Date_Delivery], [Expire_Date]) VALUES (11, N'Молоко Козье', N'Молочное', 50, 20, 30, N'Пачки', N'Молочка_Ворлд', N'Польша', N'Милк_Делив', CAST(N'2023-08-01' AS Date), CAST(N'2023-08-07' AS Date))
INSERT [dbo].[Produkt_Table] ([ID], [Name], [Category], [Price], [Discount], [Quantity], [Measurement], [Producer], [Country], [Supplier], [Date_Delivery], [Expire_Date]) VALUES (12, N'Сыр Голандский', N'Молочное', 70, 10, 15, N'Ящик', N'Сырный_Мир', N'Украина', N'Милк_Делив', CAST(N'2023-07-29' AS Date), CAST(N'2023-08-13' AS Date))
INSERT [dbo].[Produkt_Table] ([ID], [Name], [Category], [Price], [Discount], [Quantity], [Measurement], [Producer], [Country], [Supplier], [Date_Delivery], [Expire_Date]) VALUES (13, N'Вафли', N'Сладости', 25, 0, 100, N'Пачки', N'Рошен', N'Украина', N'Шугар_Деливери', CAST(N'2023-07-15' AS Date), CAST(N'2023-08-11' AS Date))
INSERT [dbo].[Produkt_Table] ([ID], [Name], [Category], [Price], [Discount], [Quantity], [Measurement], [Producer], [Country], [Supplier], [Date_Delivery], [Expire_Date]) VALUES (14, N'Пельмени(Мясо)', N'Полуфабрикаты', 60, 20, 12, N'Пачки', N'Полуфка', N'Польша', N'Полуф_Делив', CAST(N'2023-08-01' AS Date), CAST(N'2023-09-15' AS Date))
INSERT [dbo].[Produkt_Table] ([ID], [Name], [Category], [Price], [Discount], [Quantity], [Measurement], [Producer], [Country], [Supplier], [Date_Delivery], [Expire_Date]) VALUES (15, N'Хинкали(Мясо,чеснок)', N'Полуфабрикаты', 75, 0, 15, N'Пачки', N'Полуфка', N'Германия', N'Полуф_Делив', CAST(N'2023-08-02' AS Date), CAST(N'2023-09-11' AS Date))
INSERT [dbo].[Produkt_Table] ([ID], [Name], [Category], [Price], [Discount], [Quantity], [Measurement], [Producer], [Country], [Supplier], [Date_Delivery], [Expire_Date]) VALUES (16, N'Вареники(Капуста)', N'Полуфабрикаты', 65, 30, 20, N'Пачки', N'Полуфка', N'Молдова', N'Полуф_Делив', CAST(N'2023-08-03' AS Date), CAST(N'2023-08-29' AS Date))
INSERT [dbo].[Produkt_Table] ([ID], [Name], [Category], [Price], [Discount], [Quantity], [Measurement], [Producer], [Country], [Supplier], [Date_Delivery], [Expire_Date]) VALUES (17, N'Колбаса', N'Мясное', 40, 20, 50, N'Штук', N'Ферма', N'Украина', N'Ферм_Доставка', CAST(N'2023-08-07' AS Date), CAST(N'2023-08-30' AS Date))
INSERT [dbo].[Produkt_Table] ([ID], [Name], [Category], [Price], [Discount], [Quantity], [Measurement], [Producer], [Country], [Supplier], [Date_Delivery], [Expire_Date]) VALUES (18, N'Балык', N'Мясное', 80, 0, 25, N'Кг', N'Ферма', N'Беларусь', N'Ферм_Доставка', CAST(N'2023-08-09' AS Date), CAST(N'2023-09-01' AS Date))
INSERT [dbo].[Produkt_Table] ([ID], [Name], [Category], [Price], [Discount], [Quantity], [Measurement], [Producer], [Country], [Supplier], [Date_Delivery], [Expire_Date]) VALUES (19, N'Филе(Куриное)', N'Мясное', 100, 5, 50, N'Кг', N'Ферма', N'Беларусь', N'Ферм_Доставка', CAST(N'2023-08-09' AS Date), CAST(N'2023-09-02' AS Date))
INSERT [dbo].[Produkt_Table] ([ID], [Name], [Category], [Price], [Discount], [Quantity], [Measurement], [Producer], [Country], [Supplier], [Date_Delivery], [Expire_Date]) VALUES (20, N'Ряженка', N'Молочное', 40, 20, 60, N'Литр', N'Молочка_Ворлд', N'Украина', N'Милк_Делив', CAST(N'2023-07-26' AS Date), CAST(N'2023-07-31' AS Date))
INSERT [dbo].[Produkt_Table] ([ID], [Name], [Category], [Price], [Discount], [Quantity], [Measurement], [Producer], [Country], [Supplier], [Date_Delivery], [Expire_Date]) VALUES (21, N'Конфеты "Пчелка"', N'Сладости', 60, 30, 50, N'Кг', N'Рошен', N'Украина', N'Шугар_Деливери', CAST(N'2023-08-14' AS Date), CAST(N'2023-09-09' AS Date))
INSERT [dbo].[Produkt_Table] ([ID], [Name], [Category], [Price], [Discount], [Quantity], [Measurement], [Producer], [Country], [Supplier], [Date_Delivery], [Expire_Date]) VALUES (22, N'Напиток Фанта', N'Напиток', 30, 0, 70, N'Литр', N'Фанта', N'США', N'Фанта_Делив', CAST(N'2023-08-29' AS Date), CAST(N'2023-09-10' AS Date))
INSERT [dbo].[Produkt_Table] ([ID], [Name], [Category], [Price], [Discount], [Quantity], [Measurement], [Producer], [Country], [Supplier], [Date_Delivery], [Expire_Date]) VALUES (23, N'Бананы', N'Фрукты', 40, 20, 80, N'Кг', N'Бананс_Продакшн', N'Кипр', N'Фруктс_Фаст', CAST(N'2023-07-09' AS Date), CAST(N'2023-07-16' AS Date))
INSERT [dbo].[Produkt_Table] ([ID], [Name], [Category], [Price], [Discount], [Quantity], [Measurement], [Producer], [Country], [Supplier], [Date_Delivery], [Expire_Date]) VALUES (24, N'Картошка', N'Овощи', 25, 0, 100, N'Кг', N'Потато_Фарм', N'Беларусь', N'Овощи_Фаст', CAST(N'2023-07-09' AS Date), CAST(N'2023-08-23' AS Date))
INSERT [dbo].[Produkt_Table] ([ID], [Name], [Category], [Price], [Discount], [Quantity], [Measurement], [Producer], [Country], [Supplier], [Date_Delivery], [Expire_Date]) VALUES (25, N'Помидоры', N'Овощи', 55, 0, 40, N'Кг', N'Томато_Фарм', N'Беларусь', N'Овощи_Фаст', CAST(N'2023-07-09' AS Date), CAST(N'2023-07-23' AS Date))
INSERT [dbo].[Produkt_Table] ([ID], [Name], [Category], [Price], [Discount], [Quantity], [Measurement], [Producer], [Country], [Supplier], [Date_Delivery], [Expire_Date]) VALUES (26, N'Филе Тунца', N'Мясное', 100, 25, 10, N'Кг', N'Фиш_Делив', N'Испания', N'Фиш_Делив', CAST(N'2023-07-19' AS Date), CAST(N'2023-07-29' AS Date))
INSERT [dbo].[Produkt_Table] ([ID], [Name], [Category], [Price], [Discount], [Quantity], [Measurement], [Producer], [Country], [Supplier], [Date_Delivery], [Expire_Date]) VALUES (27, N'Фрикадельки', N'Мясное', 70, 15, 30, N'Пачки', N'Ферма', N'Украина', N'Ферм_Доставка', CAST(N'2023-07-10' AS Date), CAST(N'2023-08-05' AS Date))
INSERT [dbo].[Produkt_Table] ([ID], [Name], [Category], [Price], [Discount], [Quantity], [Measurement], [Producer], [Country], [Supplier], [Date_Delivery], [Expire_Date]) VALUES (28, N'Круасан', N'Хлебобулочные', 20, 0, 100, N'Пачки', N'Хлеб_Компани', N'Польша', N'Деливери_Юкрейн', CAST(N'2023-06-19' AS Date), CAST(N'2023-07-15' AS Date))
INSERT [dbo].[Produkt_Table] ([ID], [Name], [Category], [Price], [Discount], [Quantity], [Measurement], [Producer], [Country], [Supplier], [Date_Delivery], [Expire_Date]) VALUES (29, N'Масло', N'Молочное', 65, 15, 50, N'Пачки', N'Молочка_Ворлд', N'Германия', N'Милк_Делив', CAST(N'2023-09-23' AS Date), CAST(N'2023-10-03' AS Date))
INSERT [dbo].[Produkt_Table] ([ID], [Name], [Category], [Price], [Discount], [Quantity], [Measurement], [Producer], [Country], [Supplier], [Date_Delivery], [Expire_Date]) VALUES (30, N'Мороженое', N'Молочное', 15, 1, 100, N'Штук', N'Молочка_Ворлд', N'Германия', N'Милк_Делив', CAST(N'2023-07-02' AS Date), CAST(N'2023-08-02' AS Date))
INSERT [dbo].[Produkt_Table] ([ID], [Name], [Category], [Price], [Discount], [Quantity], [Measurement], [Producer], [Country], [Supplier], [Date_Delivery], [Expire_Date]) VALUES (31, N'Кетчуп', N'Соус', 30, 15, 25, N'Штук', N'Соус_Индастрис', N'Молдова', N'Фаст_Соус', CAST(N'2023-08-02' AS Date), CAST(N'2023-08-19' AS Date))
INSERT [dbo].[Produkt_Table] ([ID], [Name], [Category], [Price], [Discount], [Quantity], [Measurement], [Producer], [Country], [Supplier], [Date_Delivery], [Expire_Date]) VALUES (32, N'Майонез', N'Соус', 30, 15, 25, N'Штук', N'Соус_Индастрис', N'Украина', N'Фаст_Соус', CAST(N'2023-08-02' AS Date), CAST(N'2023-08-17' AS Date))
INSERT [dbo].[Produkt_Table] ([ID], [Name], [Category], [Price], [Discount], [Quantity], [Measurement], [Producer], [Country], [Supplier], [Date_Delivery], [Expire_Date]) VALUES (33, N'Соус Чили', N'Соус', 45, 0, 45, N'Штук', N'Соус_Индастрис', N'Беларусь', N'Фаст_Соус', CAST(N'2023-08-02' AS Date), CAST(N'2023-08-25' AS Date))
INSERT [dbo].[Produkt_Table] ([ID], [Name], [Category], [Price], [Discount], [Quantity], [Measurement], [Producer], [Country], [Supplier], [Date_Delivery], [Expire_Date]) VALUES (34, N'Чипсы Лейс', N'Закуски', 50, 13, 88, N'Пачки', N'Лейс', N'Украина', N'Лейс_Деливери', CAST(N'2023-09-07' AS Date), CAST(N'2023-10-05' AS Date))
INSERT [dbo].[Produkt_Table] ([ID], [Name], [Category], [Price], [Discount], [Quantity], [Measurement], [Producer], [Country], [Supplier], [Date_Delivery], [Expire_Date]) VALUES (35, N'Сухарики Флинт', N'Закуски', 35, 0, 50, N'Пачки', N'Флинт', N'Украина', N'Флинт_Делив', CAST(N'2023-09-08' AS Date), CAST(N'2023-10-10' AS Date))
INSERT [dbo].[Produkt_Table] ([ID], [Name], [Category], [Price], [Discount], [Quantity], [Measurement], [Producer], [Country], [Supplier], [Date_Delivery], [Expire_Date]) VALUES (36, N'Сушеный Кальмар', N'Закуски', 60, 50, 20, N'Пачки', N'Фиш_Делив', N'Польша', N'Фиш_Делив', CAST(N'2023-10-10' AS Date), CAST(N'2023-10-15' AS Date))
INSERT [dbo].[Produkt_Table] ([ID], [Name], [Category], [Price], [Discount], [Quantity], [Measurement], [Producer], [Country], [Supplier], [Date_Delivery], [Expire_Date]) VALUES (37, N'Чай Черный', N'Напиток', 30, 20, 60, N'Литр', N'Липтон', N'Беларусь', N'Липтон_Деливери', CAST(N'2023-06-10' AS Date), CAST(N'2023-07-05' AS Date))
INSERT [dbo].[Produkt_Table] ([ID], [Name], [Category], [Price], [Discount], [Quantity], [Measurement], [Producer], [Country], [Supplier], [Date_Delivery], [Expire_Date]) VALUES (38, N'Чай Зеленый', N'Напиток', 34, 20, 60, N'Литр', N'Липтон', N'Беларусь', N'Липтон_Деливери', CAST(N'2023-06-10' AS Date), CAST(N'2023-07-05' AS Date))
INSERT [dbo].[Produkt_Table] ([ID], [Name], [Category], [Price], [Discount], [Quantity], [Measurement], [Producer], [Country], [Supplier], [Date_Delivery], [Expire_Date]) VALUES (39, N'Чай с ягодами', N'Напиток', 40, 0, 60, N'Литр', N'Липтон', N'Беларусь', N'Липтон_Деливери', CAST(N'2023-06-10' AS Date), CAST(N'2023-07-15' AS Date))
INSERT [dbo].[Produkt_Table] ([ID], [Name], [Category], [Price], [Discount], [Quantity], [Measurement], [Producer], [Country], [Supplier], [Date_Delivery], [Expire_Date]) VALUES (40, N'Напиток Спрайт', N'Напиток', 35, 60, 90, N'Литр', N'Спрайт', N'США', N'Спрайт_Делив', CAST(N'2023-11-11' AS Date), CAST(N'2023-12-12' AS Date))
INSERT [dbo].[Produkt_Table] ([ID], [Name], [Category], [Price], [Discount], [Quantity], [Measurement], [Producer], [Country], [Supplier], [Date_Delivery], [Expire_Date]) VALUES (41, N'Виски', N'Алкоголь', 70, 11, 20, N'Штук', N'Джек_Дэниэл', N'США', N'Алко_Деливери', CAST(N'2023-06-15' AS Date), CAST(N'2023-10-15' AS Date))
INSERT [dbo].[Produkt_Table] ([ID], [Name], [Category], [Price], [Discount], [Quantity], [Measurement], [Producer], [Country], [Supplier], [Date_Delivery], [Expire_Date]) VALUES (42, N'Ликер', N'Алкоголь', 50, 30, 25, N'Штук', N'Лик_Алко', N'США', N'Алко_Деливери', CAST(N'2023-06-25' AS Date), CAST(N'2023-08-10' AS Date))
INSERT [dbo].[Produkt_Table] ([ID], [Name], [Category], [Price], [Discount], [Quantity], [Measurement], [Producer], [Country], [Supplier], [Date_Delivery], [Expire_Date]) VALUES (43, N'Водка', N'Алкоголь', 35, 80, 50, N'Штук', N'Водко_Корп', N'Россия', N'Алко_Деливери', CAST(N'2023-08-22' AS Date), CAST(N'2023-09-15' AS Date))
INSERT [dbo].[Produkt_Table] ([ID], [Name], [Category], [Price], [Discount], [Quantity], [Measurement], [Producer], [Country], [Supplier], [Date_Delivery], [Expire_Date]) VALUES (44, N'Корм(Коты)', N'Корм', 15, 0, 100, N'Штук', N'Энимал_Хелп', N'Бразилия', N'Юкрейн_Деливери', CAST(N'2023-06-07' AS Date), CAST(N'2023-06-24' AS Date))
INSERT [dbo].[Produkt_Table] ([ID], [Name], [Category], [Price], [Discount], [Quantity], [Measurement], [Producer], [Country], [Supplier], [Date_Delivery], [Expire_Date]) VALUES (45, N'Корм(Собаки)', N'Корм', 15, 0, 100, N'Штук', N'Энимал_Хелп', N'Бразилия', N'Юкрейн_Деливери', CAST(N'2023-06-08' AS Date), CAST(N'2023-06-25' AS Date))
INSERT [dbo].[Produkt_Table] ([ID], [Name], [Category], [Price], [Discount], [Quantity], [Measurement], [Producer], [Country], [Supplier], [Date_Delivery], [Expire_Date]) VALUES (46, N'Корм(Попугаи)', N'Корм', 15, 0, 100, N'Штук', N'Энимал_Хелп', N'США', N'Юкрейн_Деливери', CAST(N'2023-06-09' AS Date), CAST(N'2023-06-26' AS Date))
INSERT [dbo].[Produkt_Table] ([ID], [Name], [Category], [Price], [Discount], [Quantity], [Measurement], [Producer], [Country], [Supplier], [Date_Delivery], [Expire_Date]) VALUES (47, N'Корм(Грызуны)', N'Корм', 20, 15, 99, N'Штук', N'Энимал_Хелп', N'Канада', N'Юкрейн_Деливери', CAST(N'2023-09-30' AS Date), CAST(N'2023-10-31' AS Date))
INSERT [dbo].[Produkt_Table] ([ID], [Name], [Category], [Price], [Discount], [Quantity], [Measurement], [Producer], [Country], [Supplier], [Date_Delivery], [Expire_Date]) VALUES (48, N'Сметана', N'Молочное', 45, 20, 50, N'Штук', N'Молочка_Ворлд', N'Украина', N'Милк_Делив', CAST(N'2023-12-12' AS Date), CAST(N'2023-12-27' AS Date))
INSERT [dbo].[Produkt_Table] ([ID], [Name], [Category], [Price], [Discount], [Quantity], [Measurement], [Producer], [Country], [Supplier], [Date_Delivery], [Expire_Date]) VALUES (49, N'Вода(Обычная)', N'Напиток', 20, 0, 150, N'Литр', N'Моршинська', N'Украина', N'Моршинська', CAST(N'2023-05-30' AS Date), CAST(N'2023-07-20' AS Date))
INSERT [dbo].[Produkt_Table] ([ID], [Name], [Category], [Price], [Discount], [Quantity], [Measurement], [Producer], [Country], [Supplier], [Date_Delivery], [Expire_Date]) VALUES (50, N'Вода(Газированная)', N'Напиток', 25, 0, 100, N'Литр', N'Моршинська', N'Украина', N'Моршинська', CAST(N'2023-05-31' AS Date), CAST(N'2023-07-21' AS Date))
SET IDENTITY_INSERT [dbo].[Produkt_Table] OFF
GO
USE [master]
GO
ALTER DATABASE [Shop_Produkti] SET  READ_WRITE 
GO
