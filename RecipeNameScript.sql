USE [master]
GO
/****** Object:  Database [fooddb]    Script Date: 12-01-2020 12:25:16 ******/
CREATE DATABASE [fooddb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'fooddb', FILENAME = N'G:\Program files\MSSQL12.MSSQLSERVER\MSSQL\DATA\fooddb.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'fooddb_log', FILENAME = N'G:\Program files\MSSQL12.MSSQLSERVER\MSSQL\DATA\fooddb_log.ldf' , SIZE = 1088KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [fooddb] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [fooddb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [fooddb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [fooddb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [fooddb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [fooddb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [fooddb] SET ARITHABORT OFF 
GO
ALTER DATABASE [fooddb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [fooddb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [fooddb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [fooddb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [fooddb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [fooddb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [fooddb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [fooddb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [fooddb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [fooddb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [fooddb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [fooddb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [fooddb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [fooddb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [fooddb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [fooddb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [fooddb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [fooddb] SET RECOVERY FULL 
GO
ALTER DATABASE [fooddb] SET  MULTI_USER 
GO
ALTER DATABASE [fooddb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [fooddb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [fooddb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [fooddb] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [fooddb] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'fooddb', N'ON'
GO
USE [fooddb]
GO
/****** Object:  Table [dbo].[tbl_food]    Script Date: 12-01-2020 12:25:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_food](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_food] ON 

INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (1, N'Aloo Palak		                ')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (2, N'Gobi Manchurian')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (3, N'Sindhi Saibhaji')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (4, N'Shahi Paneer	9')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (5, N'Potato in Curd Gravy')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (6, N'Navratan Korma')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (7, N'Malai Kofta')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (8, N'Samosa')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (9, N'Masala Vada')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (10, N'Hot Kachori')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (11, N'Spicy Sev')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (12, N'Pear and Mango Chutney')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (13, N'Green All-Purpose Chutney')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (14, N'Sarson ka saag')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (15, N'Sweet Pongal')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (16, N'Ulundu vada')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (17, N'Adai')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (18, N'Dhaal vada')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (19, N'Shrikhand')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (20, N'Puranpoli')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (21, N'Patisa (Soan Papdi)')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (22, N'Coconut Burfi')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (23, N'Imarti.')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (24, N'Kaju Barfi')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (25, N'Khajur Burfi or Rolls')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (26, N'Kalakand (Milk Burfi)')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (27, N'Badam ka seera')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (28, N'Carrot Halwa')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (29, N'Doodhi Halwa')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (30, N'Chickoo Halwa')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (31, N'Dal ka seera.')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (32, N'Atte ka seera')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (33, N'Beetroot Halwa')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (34, N'Rava (Semolina) Ladoo	28')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (35, N'Rossogolla')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (36, N'Pedhas')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (37, N'Mava Burfi')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (38, N'Malai Ladoo')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (39, N'Gulab Jamoon')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (40, N'Sweet Kachori')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (41, N'Spicy Khaja')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (42, N'Shankarpala')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (43, N'Mitha Khaja')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (44, N'Karanjia')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (45, N'Boondi')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (46, N'Sada (Plain) Dosa')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (47, N'Rava Dosa')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (48, N'Mixed Dal Dosas')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (49, N'Masala Dosa')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (50, N'Chutney spread')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (51, N'Channa Bhatu')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (52, N'Pav Bhaji')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (53, N'Vegetable Pie')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (54, N'Poha')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (55, N'Bhel')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (56, N'Tandoori Roti (without  Tandoor)')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (57, N'Naan')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (58, N'Spicy Roti')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (59, N'Baked Bread Rolls')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (60, N'Simple Potato Cake')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (61, N'Mix Veg Curry')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (62, N'Palak Paneer.')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (63, N'Mysore Pak (South Indian Dish)')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (64, N'Cabbage Kofta Curry')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (65, N'Pineapple Gojju')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (66, N'Tur Dal Kofta')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (67, N'Tikha Baigan Masala')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (68, N'Vaangi Baath (Brinjal Rice)')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (69, N'Bread Besan Bajji')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (70, N'Vegetable Cutlet')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (71, N'Kesar Pista Kulfi')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (72, N'Apple, Banana & Carrot Halwa (ABC Halwa)')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (73, N'Avial (Mixed Vegetables With Sauce)')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (74, N'Milagu Kuzhambu')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (75, N'Paruppu Thogaiyal')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (76, N'Erissery (Maya Nair)')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (77, N'Vella Appam (PK John)')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (78, N'Poricha Koottu')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (79, N'Aviyal')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (80, N'Tamarind pickle (Pulikkachal)')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (81, N'7-cup sweet')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (82, N'VenPongal')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (83, N'Lime pickle')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (84, N'Ginger Pickle')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (85, N'Coriander-tomato chutney')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (86, N'Paruppu podi')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (87, N'Curd Vadai')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (88, N'Vegetable Cutlet')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (89, N'Rasam Powder')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (90, N'Sambar powder')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (91, N'Bonda with mashed potato')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (92, N'Dahi Vada (Savory Balls In Yogurt)')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (93, N'VEGETABLE Kurma')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (94, N'More Kozhambhu')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (95, N'Lemon Pickle')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (96, N'Ras Malai')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (97, N'Pulikacchal')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (98, N'Gotsu')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (99, N'Katirikka Rasavangi')
GO
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (100, N'Pitlai')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (101, N'Erucheri')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (102, N'Venn pongal')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (103, N'Badusha')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (104, N'Dum Alu')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (105, N'Haaq')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (106, N'Simla mirch sabzi')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (107, N'Tomato Chutney')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (108, N'Mint Chutney')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (109, N'Coconut Chutney')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (110, N'Coriander Chutney')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (111, N'')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (112, N'Moolangi Chutne')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (113, N'Pinapple Gojj')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (114, N'Bittergourd Gojj')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (115, N'Bhindi Gojj')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (116, N'Sweet Mango Chutne')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (117, N'Hot Mango Chutne')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (118, N'Puli Inj')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (119, N'Mango Pachad')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (120, N'Gobi Manchuria')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (121, N'Vegetable Pula')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (122, N'Peas Pula')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (123, N'Vaangi Baat')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (124, N'Bisi Bela Huli Annwder')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (125, N'Bisi Bela Huli Ann')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (126, N'Puliyogare Mi')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (127, N'Puliyogar')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (128, N'Cabbage Upkar')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (129, N'Aloo Du')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (130, N'Avia')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (131, N'Bharva Bhind')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (132, N'Bharwa Bhainga')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (133, N'Bhaingan Bharth')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (134, N'Malai Koft')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (135, N'Home-made Panee')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (136, N'Rasmala')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (137, N'Coconut Laddo')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (138, N'Kaju Bharf')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (139, N'Sweet Ponga')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (140, N'Rava Laddo')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (141, N'Kalakan')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (142, N'Mango Shrikan')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (143, N'Hot and Sour Tomatckle')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (144, N'Rasam Powde')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (145, N'Garam Masala Powde')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (146, N'Tandoori Masala Po')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (147, N'Pepper Rasa')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (148, N'Morkhozumbu')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (149, N'Pitl')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (150, N'Majjige Hul')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (151, N'Dhal Makhan')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (152, N'Dhokl')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (153, N'Medu Vad')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (154, N'Tomato Sou')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (155, N'Pudina Parath')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (156, N'Lemon and Chilli pe')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (157, N'Mango pickl')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (158, N'Rasmala')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (159, N'Jaleb')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (160, N'Basoond')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (161, N'Sweet ponga')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (162, N'Dal payasa')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (163, N'Kozhukkatta')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (164, N'Pol')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (165, N'Somaas')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (166, N'Baadhush')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (167, N'Ribbon Murukk')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (168, N'Omappod')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (169, N'Seeda')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (170, N'Thatta')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (171, N'Thenkuzha')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (172, N'Motichoor Lado')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (173, N'Kozhakatta')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (174, N'Brinjal Curr')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (175, N'Green Pula')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (176, N'Baigan fry Recip')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (177, N'Kozukkattai (Stuffice Balls)')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (178, N'Onion Rice')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (179, N'Aratikaaya Masala su (Spiced Raw Banana Curry)')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (180, N'Pulihora (Tamarinde)')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (181, N'Masala Vada')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (182, N'Ravva Dosa')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (183, N'Bhakar Wadi')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (184, N'Aloo Gobhi Methi Kk')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (185, N'Khatti Arvi Ka Sa')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (186, N'Dum Ka Karela')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (187, N'Dum Gobhi')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (188, N'Garam Masala')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (189, N'Kalagoora Pulusu (d Vegetables with Fenugreek Seeds)')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (190, N'Sarkarai Pongal')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (191, N'Malai Kofta')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (192, N'Vegetable Jhalfr')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (193, N'Navaratna Curry')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (194, N'Vegetable Kofta')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (195, N'Rasmalai')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (196, N'Sweet Shakarpara (onds)	')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (197, N'Besan Ladoo')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (198, N'Cashewnut Barfi')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (199, N'Dryfruit Halwa')
GO
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (200, N'Dal Payasam')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (201, N'Red Beet Parath4')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (202, N'Green Onion Bhurj4')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (203, N'Mysore Bonda')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (204, N'Dahi Wada')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (205, N'Rasmalai')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (206, N'Instant Dhokla')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (207, N'Matar Palak')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (208, N'Aloo Mutter')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (209, N'Venn Pongal')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (210, N'Tamilian Kurma')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (211, N'Vegetable Korma')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (212, N'Mixed Vegetable Koin Tomato Curry')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (213, N'Chakali')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (214, N'Moong Soup With Pa')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (215, N'Healthy Tomato sou2')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (216, N'Corn Soup with Vegles')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (217, N'Green Peas Skin')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (218, N'Hara Nariel Ka Sh')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (219, N'Lentil and Vegetabroth')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (220, N'Letil Soup')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (221, N'Tum Yum Soup')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (222, N'Sweet Corn Soup')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (223, N'RAJMA CURRY')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (224, N'MALAI KOFTA CURR7')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (225, N'Cheesy Sweet Jamun8')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (226, N'Kofta Lajawab')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (227, N'Beetroot Paratha9')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (228, N'Badshahi Baigan')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (229, N'Red Tomato Grav0')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (230, N'Green Gravy')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (231, N'White Gravy')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (232, N'Brown Gravy')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (233, N'Besan Burfi')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (234, N'Raabdi')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (235, N'Ras Malai')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (236, N'Rasagulla.')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (237, N'Dum Arvi')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (238, N'Dum Aloo')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (239, N'Matar Paneer')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (240, N'Bhindi Masala')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (241, N'Vegetable Jalfrasi6')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (242, N'Rasam Masala')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (243, N'Mangalore Rasam Po')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (244, N'Mangalore Rasam')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (245, N'Sambar')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (246, N'Cauliflower Curr2')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (247, N'Sambar Masala')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (248, N'Vada')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (249, N'Didir Onion Rava')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (250, N'Didir Dosa')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (251, N'Dosai')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (252, N'Basic Curry Sauc4')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (253, N'Biryani')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (254, N'Double Ka Meetha (d Pudding)')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (255, N'Indian Cream of To Soup')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (256, N'Kadhi')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (257, N'Bengan ka bhurt7')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (258, N'Halwa')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (259, N'Toll House Pan Co')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (260, N'Rasavangi')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (261, N'Stuffed Brinjal C')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (262, N'Maida Bonda')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (263, N'Rava Bonda')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (264, N'Palak Paneer.')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (265, N'Coconut Milk Pula8')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (266, N'Tomato pickle')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (267, N'Lime pickle')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (268, N'Ginger Pickle')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (269, N'Tamarind pickle (Pkachal)')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (270, N'Maavadu (Tender mapickle)')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (271, N'Aavakkai (Mango pi)	')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (272, N'Gonkura Thokku')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (273, N'Curd Vadai')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (274, N'Cabbage Vadai')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (275, N'Urud Vadai (Medhu i)')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (276, N'Dal Vadai (Aama va')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (277, N'Mangalore bonda')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (278, N'Rawa Kichadi')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (279, N'Rice Uppuma')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (280, N'Aval uppuma')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (281, N'VenPongal')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (282, N'Sevai (Idiyappam1')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (283, N'Morkkali')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (284, N'Masala Dosai')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (285, N'Uthappam')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (286, N'Maida dosai')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (287, N'Rava dosai')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (288, N'Laddu')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (289, N'Rava laddu (Ravaal)')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (290, N'Sakkarai Pongal')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (291, N'Jilebi')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (292, N'Kozhukkattai')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (293, N'Poli')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (294, N'Somaasi')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (295, N'Panchamritham (frualad)')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (296, N'Milk Appam')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (297, N'Sweet Puttu')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (298, N'Paanagam')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (299, N'Sweet Adai')
GO
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (300, N'Chole')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (301, N'Palak Paneer.')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (302, N'Oatmeal Raisin Co')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (303, N'Kunuku')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (304, N'Cashew Kunuku')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (305, N'Vermicilli Masala i')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (306, N'Medhu Vadai')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (307, N'Madhur Vadai')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (308, N'Spinach Vadai')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (309, N'Kara Vadai')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (310, N'Potato Bhonda')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (311, N'Bhonda')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (312, N'Thukada')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (313, N'Idli')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (314, N'Kanjeepuram Idl')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (315, N'Aval Dosai')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (316, N'Vella (Jaggery) D')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (317, N'Rava Dosai')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (318, N'Ordinary Adai')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (319, N'Thaval Adai')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (320, N'Peseret')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (321, N'Tamarind Uppma')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (322, N'Moor Kali')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (323, N'Eggplant Gotsu')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (324, N'Eggplant Podi Curr')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (325, N'Plantain Puli Curr')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (326, N'Plantain Curry')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (327, N'Vazai Thandu Curr')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (328, N'Potato Podimas')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (329, N'Venn Pongal')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (330, N'Badam Kheer')
INSERT [dbo].[tbl_food] ([id], [Name]) VALUES (331, N'Paal Poori (Swe')
SET IDENTITY_INSERT [dbo].[tbl_food] OFF
USE [master]
GO
ALTER DATABASE [fooddb] SET  READ_WRITE 
GO
