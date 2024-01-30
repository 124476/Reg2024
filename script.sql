USE [master]
GO
ALTER DATABASE [WorldSkills2024DB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WorldSkills2024DB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WorldSkills2024DB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WorldSkills2024DB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WorldSkills2024DB] SET ARITHABORT OFF 
GO
ALTER DATABASE [WorldSkills2024DB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WorldSkills2024DB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WorldSkills2024DB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WorldSkills2024DB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WorldSkills2024DB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WorldSkills2024DB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WorldSkills2024DB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WorldSkills2024DB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WorldSkills2024DB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WorldSkills2024DB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WorldSkills2024DB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WorldSkills2024DB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WorldSkills2024DB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WorldSkills2024DB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WorldSkills2024DB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WorldSkills2024DB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WorldSkills2024DB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WorldSkills2024DB] SET RECOVERY FULL 
GO
ALTER DATABASE [WorldSkills2024DB] SET  MULTI_USER 
GO
ALTER DATABASE [WorldSkills2024DB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WorldSkills2024DB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WorldSkills2024DB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WorldSkills2024DB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [WorldSkills2024DB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [WorldSkills2024DB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'WorldSkills2024DB', N'ON'
GO
ALTER DATABASE [WorldSkills2024DB] SET QUERY_STORE = ON
GO
ALTER DATABASE [WorldSkills2024DB] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [WorldSkills2024DB]
GO
/****** Object:  Table [dbo].[Doctor]    Script Date: 30.01.2024 19:50:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doctor](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
 CONSTRAINT [PK_Doctor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gospital]    Script Date: 30.01.2024 19:50:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gospital](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Diagnoz] [nvarchar](250) NULL,
	[Chel] [nvarchar](250) NULL,
	[Otdelenie] [int] NULL,
	[Yslovie] [bit] NULL,
	[DateStart] [date] NULL,
	[DateEnd] [date] NULL,
	[PacientId] [int] NULL,
 CONSTRAINT [PK_History] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Meropriation]    Script Date: 30.01.2024 19:50:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Meropriation](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Meropriation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Otdel]    Script Date: 30.01.2024 19:50:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Otdel](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Otdel] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pacient]    Script Date: 30.01.2024 19:50:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pacient](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Photo] [image] NULL,
	[Otechestvo] [nvarchar](50) NULL,
	[Subname] [nvarchar](50) NULL,
	[Number] [nvarchar](50) NULL,
	[Seria] [nvarchar](50) NULL,
	[DateBorn] [date] NULL,
	[Pol] [bit] NULL,
	[Adress] [nvarchar](250) NULL,
	[Phone] [nvarchar](50) NULL,
	[Mail] [nvarchar](50) NULL,
	[DateCard] [date] NULL,
	[DateLast] [date] NULL,
	[DateNext] [date] NULL,
	[DateEnd] [date] NULL,
	[Polis] [nvarchar](50) NULL,
 CONSTRAINT [PK_Pacient] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Places]    Script Date: 30.01.2024 19:50:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Places](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PacientId] [int] NULL,
	[Date] [date] NULL,
	[TipId] [int] NULL,
	[Result] [nvarchar](250) NULL,
	[Recomendation] [nvarchar](250) NULL,
	[DoctorId] [int] NULL,
	[Money] [nvarchar](50) NULL,
 CONSTRAINT [PK_Places] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rechept]    Script Date: 30.01.2024 19:50:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rechept](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Doza] [nvarchar](50) NULL,
	[Format] [nvarchar](50) NULL,
	[PlacesId] [int] NULL,
 CONSTRAINT [PK_Rechept] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Doctor] ON 

INSERT [dbo].[Doctor] ([Id], [Name], [Password]) VALUES (1, N'Anastasia Gully', N'kY1|`7B6')
INSERT [dbo].[Doctor] ([Id], [Name], [Password]) VALUES (2, N'Falkner Sinkings', N'nH1$+Vb%KA')
INSERT [dbo].[Doctor] ([Id], [Name], [Password]) VALUES (3, N'Ebeneser Tilbey', N'cV7>"!41GFrsE')
INSERT [dbo].[Doctor] ([Id], [Name], [Password]) VALUES (4, N'Raymund Brehaut', N'iC0.K/r<Jk')
INSERT [dbo].[Doctor] ([Id], [Name], [Password]) VALUES (5, N'Aleta Targe', N'oG3*P79c')
INSERT [dbo].[Doctor] ([Id], [Name], [Password]) VALUES (6, N'Iorgos Batrip', N'eP7~7$L0)K+')
INSERT [dbo].[Doctor] ([Id], [Name], [Password]) VALUES (7, N'Annadiane Grosvenor', N'tM3>2u$tR4')
INSERT [dbo].[Doctor] ([Id], [Name], [Password]) VALUES (8, N'Finley Tully', N'nE5<zhPrhI+\9')
INSERT [dbo].[Doctor] ([Id], [Name], [Password]) VALUES (9, N'Erhart Shorten', N'bC0<x/x1OYYlV>HQ')
INSERT [dbo].[Doctor] ([Id], [Name], [Password]) VALUES (10, N'Demetrius Reinhard', N'zZ1+HE,uU0MBo3')
SET IDENTITY_INSERT [dbo].[Doctor] OFF
GO
SET IDENTITY_INSERT [dbo].[Gospital] ON 

INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (298, N'M62029', N'Reposition Right Metacarpal with Ext Fix, Perc Endo Approach', 1, 0, CAST(N'2023-06-22' AS Date), CAST(N'2023-05-26' AS Date), 202)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (299, N'T17208A', N'Extirpate matter from L Low Leg Subcu/Fascia, Perc', 2, 0, CAST(N'2023-05-19' AS Date), CAST(N'2023-03-22' AS Date), 203)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (300, N'S61246', N'Transfer Olfactory Nerve to Oculomotor Nerve, Open Approach', 3, 0, CAST(N'2023-07-17' AS Date), CAST(N'2023-10-16' AS Date), 204)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (301, N'N10', N'Revision of Nonaut Sub in R Radius, Perc Endo Approach', 1, 0, CAST(N'2023-04-09' AS Date), CAST(N'2023-05-19' AS Date), 205)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (303, N'S52034F', N'Supplement L Metacarpocarp Jt with Nonaut Sub, Perc Approach', 3, 0, CAST(N'2023-03-05' AS Date), CAST(N'2023-11-09' AS Date), 207)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (304, N'S63519A', N'Radiography of Cereb & Cerebel Vein using H Osm Contrast', 4, 0, CAST(N'2023-08-14' AS Date), CAST(N'2023-01-30' AS Date), 208)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (305, N'S42399G', N'Drainage of Left Eustachian Tube, Perc Endo Approach, Diagn', 1, 1, CAST(N'2023-12-18' AS Date), CAST(N'2023-03-21' AS Date), 209)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (306, N'S43224S', N'Occlusion of L Brach Vein with Extralum Dev, Open Approach', 2, 0, CAST(N'2023-12-18' AS Date), CAST(N'2023-05-15' AS Date), 210)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (307, N'S52516H', N'Insertion of Ext Fix into R Ankle Jt, Open Approach', 3, 0, CAST(N'2023-10-17' AS Date), CAST(N'2023-08-01' AS Date), 211)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (308, N'T40694', N'Release Intracranial Vein, Percutaneous Approach', 4, 0, CAST(N'2023-11-21' AS Date), CAST(N'2023-11-09' AS Date), 212)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (309, N'S45212A', N'Removal of Drainage Device from Penis, Percutaneous Approach', 1, 0, CAST(N'2023-08-17' AS Date), CAST(N'2023-09-17' AS Date), 213)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (310, N'S2239XG', N'Division of Right Upper Femur, Open Approach', 5, 0, CAST(N'2023-06-21' AS Date), CAST(N'2023-04-27' AS Date), 214)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (311, N'S82864C', N'Excision of Lumbar Vertebral Disc, Open Approach', 1, 0, CAST(N'2023-11-21' AS Date), CAST(N'2023-05-09' AS Date), 215)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (312, N'R4181', N'Excision of Anal Sphincter, Open Approach', 1, 0, CAST(N'2023-03-17' AS Date), CAST(N'2023-01-27' AS Date), 216)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (313, N'S0303XA', N'CT Scan of Hepatobil Sys, All using Oth Contrast', 1, 1, CAST(N'2023-02-16' AS Date), CAST(N'2023-12-14' AS Date), 217)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (314, N'S52036G', N'Restriction of Cystic Duct, Via Opening', 1, 1, CAST(N'2023-05-25' AS Date), CAST(N'2023-09-11' AS Date), 218)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (315, N'S12330', N'Exercise Treatment of Integu Low Back/LE using Orthosis', 1, 1, CAST(N'2023-07-27' AS Date), CAST(N'2023-05-29' AS Date), 219)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (316, N'S62151G', N'Excision of Lower Gingiva, External Approach, Diagnostic', 1, 1, CAST(N'2023-02-23' AS Date), CAST(N'2023-03-20' AS Date), 220)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (317, N'S2224XK', N'Bypass L Atrium to L Pulm Vn w Synth Sub, Perc Endo', 3, 1, CAST(N'2023-12-08' AS Date), CAST(N'2023-03-11' AS Date), 221)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (318, N'S82811D', N'Muscle Perform Assess Integu Low Back/LE w Oth Equip', 1, 1, CAST(N'2023-05-16' AS Date), CAST(N'2023-03-17' AS Date), 222)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (319, N'S68116A', N'Destruction of Gallbladder, Percutaneous Endoscopic Approach', 2, 0, CAST(N'2023-08-27' AS Date), CAST(N'2023-12-09' AS Date), 223)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (320, N'S52109J', N'Destruction of Left Maxillary Sinus, Percutaneous Approach', 2, 0, CAST(N'2023-12-03' AS Date), CAST(N'2023-02-18' AS Date), 224)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (321, N'T63482D', N'Bypass R Kidney Pelvis to R Ureter w Synth Sub, Open', 4, 0, CAST(N'2023-11-20' AS Date), CAST(N'2023-04-09' AS Date), 225)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (322, N'S66594S', N'Bypass R Com Iliac Art to R Int Ilia w Autol Art, Perc Endo', 3, 1, CAST(N'2023-06-02' AS Date), CAST(N'2023-05-21' AS Date), 226)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (323, N'S62033G', N'Resection of Left Abdomen Bursa and Ligament, Open Approach', 3, 0, CAST(N'2023-09-29' AS Date), CAST(N'2023-03-14' AS Date), 227)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (324, N'D120', N'Replace R Lacrimal Bone w Nonaut Sub, Perc Endo', 3, 1, CAST(N'2023-04-15' AS Date), CAST(N'2023-06-08' AS Date), 228)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (325, N'T20111D', N'Bypass R Subclav Art to Bi Low Arm Art w Nonaut Sub, Open', 3, 0, CAST(N'2023-08-25' AS Date), CAST(N'2023-06-12' AS Date), 229)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (326, N'G43619', N'Fluoroscopy Oth Intraabd Art w L Osm Contrast, Laser Intraop', 3, 1, CAST(N'2023-03-24' AS Date), CAST(N'2023-07-02' AS Date), 230)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (327, N'L97314', N'Division of Basal Ganglia, Percutaneous Endoscopic Approach', 3, 0, CAST(N'2023-04-10' AS Date), CAST(N'2023-03-07' AS Date), 231)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (328, N'T833', N'Revision of Autol Sub in L Femur Shaft, Perc Approach', 3, 1, CAST(N'2023-05-21' AS Date), CAST(N'2023-09-29' AS Date), 232)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (329, N'K143', N'Release Right Toe Phalanx, Percutaneous Endoscopic Approach', 3, 1, CAST(N'2023-04-07' AS Date), CAST(N'2023-05-27' AS Date), 233)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (330, N'S9234', N'Therapeutic Exercise Treatment of Musculosk Low Back/LE', 4, 1, CAST(N'2023-12-19' AS Date), CAST(N'2023-02-12' AS Date), 234)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (331, N'T5791XA', N'Reposition Left Thyroid Artery, Perc Endo Approach', 4, 1, CAST(N'2023-09-23' AS Date), CAST(N'2023-10-07' AS Date), 235)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (332, N'M84755', N'Dilation of Cervix with Intraluminal Device, Via Opening', 4, 1, CAST(N'2023-07-05' AS Date), CAST(N'2023-02-12' AS Date), 236)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (333, N'S92061B', N'Dilate R Int Carotid, Bifurc, w 2 Drug-elut, Open', 4, 0, CAST(N'2023-05-21' AS Date), CAST(N'2023-09-21' AS Date), 237)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (334, N'S4692', N'Removal of Radioactive Element from Hepatobiliary Duct, Endo', 2, 0, CAST(N'2023-06-11' AS Date), CAST(N'2023-04-29' AS Date), 238)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (335, N'S62035S', N'Division of Left Elbow Bursa and Ligament, Open Approach', 4, 1, CAST(N'2023-07-15' AS Date), CAST(N'2023-01-30' AS Date), 239)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (336, N'S92919A', N'Insertion of VAD into L Up Arm Subcu/Fascia, Perc Approach', 2, 0, CAST(N'2023-04-21' AS Date), CAST(N'2023-02-23' AS Date), 240)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (337, N'T367X6S', N'Extraction of Back Skin, External Approach', 4, 1, CAST(N'2023-10-08' AS Date), CAST(N'2023-09-24' AS Date), 241)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (338, N'S9780XS', N'Computerized Tomography (CT Scan) of Left Femur', 4, 0, CAST(N'2023-02-09' AS Date), CAST(N'2023-10-24' AS Date), 242)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (339, N'T251', N'Insertion of Infusion Dev into Abd Aorta, Perc Endo Approach', 4, 1, CAST(N'2023-10-22' AS Date), CAST(N'2023-05-21' AS Date), 243)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (340, N'V8189XS', N'CT Scan of R Ankle using L Osm Contrast', 2, 1, CAST(N'2023-05-12' AS Date), CAST(N'2023-08-30' AS Date), 244)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (341, N'S56912', N'Bypass R Renal Vein to Low Vein w Nonaut Sub, Open', 2, 0, CAST(N'2023-12-12' AS Date), CAST(N'2023-03-26' AS Date), 245)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (342, N'M61362', N'Dilation of Cystic Duct, Percutaneous Endoscopic Approach', 2, 0, CAST(N'2023-11-20' AS Date), CAST(N'2023-03-01' AS Date), 246)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (343, N'P833', N'Abortion of Products of Conception, Perc Endo Approach', 2, 1, CAST(N'2023-08-09' AS Date), CAST(N'2023-06-19' AS Date), 247)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (344, N'M6084', N'Bypass L Subclav Vein to Up Vein w Synth Sub, Open', 2, 0, CAST(N'2023-03-29' AS Date), CAST(N'2023-06-07' AS Date), 248)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (345, N'S66321S', N'Removal of Drainage Device from Cerv Disc, Open Approach', 2, 0, CAST(N'2023-07-23' AS Date), CAST(N'2023-04-25' AS Date), 249)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (346, N'S42463A', N'Supplement Left Inner Ear with Nonaut Sub, Open Approach', 2, 1, CAST(N'2023-09-02' AS Date), CAST(N'2023-04-14' AS Date), 250)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (347, N'H3101', N'Control Bleeding in Right Inguinal Region, Perc Approach', 2, 1, CAST(N'2023-10-11' AS Date), CAST(N'2023-10-10' AS Date), 251)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (348, N'I70528', N'Drainage of Right Abdomen Tendon, Percutaneous Approach', 3, 1, CAST(N'2023-02-13' AS Date), CAST(N'2023-09-17' AS Date), 252)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (349, N'S71051D', N'Drainage of Vestibular Gland, External Approach, Diagnostic', 3, 0, CAST(N'2023-11-08' AS Date), CAST(N'2023-09-11' AS Date), 253)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (350, N'D52', N'Change Drainage Device in Mouth and Throat, Extern Approach', 3, 0, CAST(N'2023-11-14' AS Date), CAST(N'2023-03-27' AS Date), 254)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (351, N'A5202', N'Dilation of R Hepatic Duct with Intralum Dev, Perc Approach', 3, 1, CAST(N'2024-01-19' AS Date), CAST(N'2023-09-28' AS Date), 255)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (352, N'S82232E', N'Excision of Trachea, Endo', 3, 0, CAST(N'2023-03-21' AS Date), CAST(N'2023-04-26' AS Date), 256)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (353, N'I39', N'Supplement L Innom Vein with Nonaut Sub, Perc Approach', 3, 1, CAST(N'2023-02-16' AS Date), CAST(N'2023-07-05' AS Date), 257)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (354, N'S62251A', N'Restriction of Left Neck Lymphatic, Open Approach', 1, 1, CAST(N'2024-01-15' AS Date), CAST(N'2023-02-16' AS Date), 258)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (355, N'V361XXS', N'Drainage of Left Tibia with Drainage Device, Perc Approach', 1, 0, CAST(N'2023-03-25' AS Date), CAST(N'2023-12-18' AS Date), 259)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (356, N'M84531P', N'Drainage of Left Ulnar Artery, Percutaneous Approach', 1, 1, CAST(N'2023-06-27' AS Date), CAST(N'2023-07-31' AS Date), 260)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (357, N'M87150', N'Introduction of Monoclonal Antibody into Upper GI, Endo', 1, 0, CAST(N'2023-05-19' AS Date), CAST(N'2023-09-30' AS Date), 261)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (358, N'B0871', N'Introduction of Liquid Brachy into Resp Tract, Perc Approach', 1, 1, CAST(N'2023-11-12' AS Date), CAST(N'2024-01-02' AS Date), 262)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (359, N'T8201XD', N'Bypass L Int Iliac Art to Foot Art w Autol Art, Open', 1, 0, CAST(N'2023-05-20' AS Date), CAST(N'2023-03-01' AS Date), 263)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (360, N'S72424F', N'Excision of Minor Salivary Gland, Percutaneous Approach', 1, 1, CAST(N'2023-12-24' AS Date), CAST(N'2023-09-30' AS Date), 264)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (361, N'S68112D', N'Excision of Lower Tooth, External Approach, All', 1, 1, CAST(N'2023-07-20' AS Date), CAST(N'2023-04-16' AS Date), 265)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (362, N'S7300', N'Extirpate of Matter from L Up Arm Muscle, Perc Endo Approach', 1, 1, CAST(N'2023-12-23' AS Date), CAST(N'2023-02-07' AS Date), 266)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (363, N'V505XXS', N'Revision of Int Fix in Skull, Perc Endo Approach', 1, 0, CAST(N'2023-06-15' AS Date), CAST(N'2023-10-22' AS Date), 267)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (364, N'M9916', N'Muscle Performance Treatment of Neuro Up Back/UE', 1, 1, CAST(N'2023-06-18' AS Date), CAST(N'2023-05-24' AS Date), 268)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (365, N'N041', N'Occlusion L Less Saphenous w Intralum Dev, Perc', 2, 0, CAST(N'2023-02-09' AS Date), CAST(N'2023-02-04' AS Date), 269)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (366, N'T403X2', N'Drainage of Right Scapula with Drain Dev, Open Approach', 2, 0, CAST(N'2023-11-05' AS Date), CAST(N'2023-07-24' AS Date), 270)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (367, N'Y37221A', N'Drainage of Right Metacarpal, Perc Endo Approach', 2, 0, CAST(N'2023-07-20' AS Date), CAST(N'2023-11-12' AS Date), 271)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (368, N'S82201B', N'Reattachment of Left Abdomen Tendon, Perc Endo Approach', 2, 1, CAST(N'2024-01-11' AS Date), CAST(N'2023-03-12' AS Date), 272)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (369, N'T420X5A', N'Excision of R Thorax Bursa/Lig, Perc Endo Approach', 2, 0, CAST(N'2023-05-13' AS Date), CAST(N'2023-02-08' AS Date), 273)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (370, N'X960', N'Transfer Oculomotor Nerve to Oculomotor Nerve, Open Approach', 2, 1, CAST(N'2023-07-21' AS Date), CAST(N'2023-12-26' AS Date), 274)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (371, N'S81809A', N'Bypass 4+ Cor Art from Abd Art w Synth Sub, Perc Endo', 2, 1, CAST(N'2023-08-01' AS Date), CAST(N'2023-10-24' AS Date), 275)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (372, N'V706XXD', N'Supplement Hard Palate with Autol Sub, Extern Approach', 2, 0, CAST(N'2023-12-29' AS Date), CAST(N'2023-05-11' AS Date), 276)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (373, N'S52219', N'Male Reproductive System, Excision', 2, 0, CAST(N'2024-01-13' AS Date), CAST(N'2023-11-17' AS Date), 277)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (374, N'S82854E', N'Restrict L Com Iliac Art w Fenestr Dev 3+, Open', 2, 1, CAST(N'2023-05-14' AS Date), CAST(N'2023-07-04' AS Date), 278)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (375, N'S82231J', N'Remove of Infusion Dev from Pericard Cav, Perc Endo Approach', 2, 0, CAST(N'2023-02-20' AS Date), CAST(N'2023-12-23' AS Date), 279)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (376, N'T61772D', N'Excision of R Finger Phalanx Jt, Open Approach, Diagn', 2, 1, CAST(N'2023-08-20' AS Date), CAST(N'2023-11-29' AS Date), 280)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (377, N'M05852', N'Radiation Therapy, Anatomical Regions, Other Radiation', 2, 1, CAST(N'2023-03-24' AS Date), CAST(N'2023-03-05' AS Date), 281)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (378, N'A441', N'Reposition Right Wrist Joint, External Approach', 2, 1, CAST(N'2023-05-09' AS Date), CAST(N'2023-12-04' AS Date), 282)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (379, N'K732', N'Change Drainage Device in Mouth and Throat, Extern Approach', 1, 1, CAST(N'2023-12-02' AS Date), CAST(N'2023-06-19' AS Date), 283)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (380, N'M0219', N'Drainage of Descending Colon, Open Approach, Diagnostic', 3, 0, CAST(N'2023-05-01' AS Date), CAST(N'2023-02-17' AS Date), 284)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (381, N'C8589', N'Replacement of Left Tarsal with Nonaut Sub, Perc Approach', 2, 1, CAST(N'2023-09-12' AS Date), CAST(N'2023-03-27' AS Date), 285)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (382, N'M8649', N'Destruction of Accessory Nerve, Percutaneous Approach', 4, 1, CAST(N'2023-03-16' AS Date), CAST(N'2023-08-23' AS Date), 286)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (383, N'S20222D', N'Supplement R Subclav Art with Autol Sub, Perc Approach', 1, 0, CAST(N'2023-10-09' AS Date), CAST(N'2023-12-17' AS Date), 287)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (384, N'S8350', N'Supplement Right Upper Femur with Synth Sub, Perc Approach', 2, 0, CAST(N'2023-11-08' AS Date), CAST(N'2023-02-14' AS Date), 288)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (385, N'S32455A', N'Reposition Left Neck Muscle, Perc Endo Approach', 3, 0, CAST(N'2023-10-12' AS Date), CAST(N'2024-01-14' AS Date), 289)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (386, N'S3730XD', N'Extraction of Upper Vein, Percutaneous Approach', 2, 1, CAST(N'2023-12-26' AS Date), CAST(N'2023-09-12' AS Date), 290)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (387, N'M1A40', N'Release Left Carotid Body, Percutaneous Endoscopic Approach', 1, 0, CAST(N'2023-02-19' AS Date), CAST(N'2024-01-07' AS Date), 291)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (388, N'S14102A', N'Revision of Monitor Dev in Spinal Canal, Perc Endo Approach', 2, 1, CAST(N'2023-09-17' AS Date), CAST(N'2023-03-07' AS Date), 292)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (389, N'W5389XD', N'Introduction of Oth Anti-infect into Bone, Perc Approach', 4, 1, CAST(N'2023-11-20' AS Date), CAST(N'2023-06-16' AS Date), 293)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (390, N'O318X93', N'Occlusion of R Popl Art with Intralum Dev, Open Approach', 3, 0, CAST(N'2023-11-27' AS Date), CAST(N'2023-12-14' AS Date), 294)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (391, N'O357XX3', N'Division of Anal Sphincter, Open Approach', 5, 0, CAST(N'2023-12-31' AS Date), CAST(N'2024-01-09' AS Date), 295)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (392, N'K4041', N'Division of Chordae Tendineae, Perc Endo Approach', 5, 1, CAST(N'2023-02-18' AS Date), CAST(N'2023-11-30' AS Date), 296)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (393, N'T448X6A', N'Drainage of L Finger Phalanx Jt, Open Approach, Diagn', 5, 0, CAST(N'2023-04-28' AS Date), CAST(N'2023-02-02' AS Date), 297)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (394, N'V67', N'Dilate R Ulnar Art, Bifurc, w 2 Drug-elut, Open', 5, 1, CAST(N'2023-11-01' AS Date), CAST(N'2023-09-12' AS Date), 298)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (395, N'T828', N'Revision of Infusion Dev in L Sternoclav Jt, Extern Approach', 5, 1, CAST(N'2023-04-09' AS Date), CAST(N'2023-05-24' AS Date), 299)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (396, N'O643', N'Bypass L Int Iliac Art to R Int Ilia w Synth Sub, Open', 5, 0, CAST(N'2023-11-16' AS Date), CAST(N'2023-12-07' AS Date), 300)
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (397, N'S62173K', N'Destruction of Right Carotid Body, Perc Endo Approach', 5, 1, CAST(N'2023-04-27' AS Date), CAST(N'2023-04-16' AS Date), 301)
GO
INSERT [dbo].[Gospital] ([Id], [Diagnoz], [Chel], [Otdelenie], [Yslovie], [DateStart], [DateEnd], [PacientId]) VALUES (400, N'ge', N'gwe', 2, 1, CAST(N'2024-01-11' AS Date), CAST(N'2024-01-16' AS Date), 206)
SET IDENTITY_INSERT [dbo].[Gospital] OFF
GO
SET IDENTITY_INSERT [dbo].[Meropriation] ON 

INSERT [dbo].[Meropriation] ([Id], [Name]) VALUES (1, N'Лабораторне исследование')
INSERT [dbo].[Meropriation] ([Id], [Name]) VALUES (2, N'Инструментальная диагностика')
INSERT [dbo].[Meropriation] ([Id], [Name]) VALUES (3, N'Лекарственная терапия')
INSERT [dbo].[Meropriation] ([Id], [Name]) VALUES (4, N'Физиотерапия')
INSERT [dbo].[Meropriation] ([Id], [Name]) VALUES (5, N'Хирургическое лечение')
SET IDENTITY_INSERT [dbo].[Meropriation] OFF
GO
SET IDENTITY_INSERT [dbo].[Otdel] ON 

INSERT [dbo].[Otdel] ([Id], [Name]) VALUES (1, N'Неотложная помощь')
INSERT [dbo].[Otdel] ([Id], [Name]) VALUES (2, N'Центральное стерилизационное отделение')
INSERT [dbo].[Otdel] ([Id], [Name]) VALUES (3, N'Приемное отделение')
INSERT [dbo].[Otdel] ([Id], [Name]) VALUES (4, N'Патологоанатомическое отделение')
INSERT [dbo].[Otdel] ([Id], [Name]) VALUES (5, N'Лаборатория')
SET IDENTITY_INSERT [dbo].[Otdel] OFF
GO
SET IDENTITY_INSERT [dbo].[Pacient] ON 

INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (202, N'Madelin', NULL, N'Gianina', N'Luxen', N'985957', N'4085', CAST(N'1993-04-01' AS Date), 1, N'Room 738', N'654-466-0350', N'gluxen0@upenn.edu', CAST(N'2012-12-01' AS Date), CAST(N'2012-12-01' AS Date), CAST(N'2023-12-26' AS Date), CAST(N'2042-06-03' AS Date), N'498735743193145000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (203, N'Pren', NULL, N'Polly', N'Parkey', N'751504', N'7602', CAST(N'1993-04-02' AS Date), 1, N'12th Floor', N'803-756-6115', N'pparkey1@zimbio.com', CAST(N'2012-12-02' AS Date), CAST(N'2012-12-02' AS Date), CAST(N'2023-12-27' AS Date), CAST(N'2042-06-04' AS Date), N'123661000080000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (204, N'Retha', NULL, N'Roscoe', N'Jevons', N'228247', N'6396', CAST(N'1993-04-03' AS Date), 0, N'6th Floor', N'558-674-4517', N'rjevons2@dell.com', CAST(N'2012-12-01' AS Date), CAST(N'2012-12-03' AS Date), CAST(N'2023-12-28' AS Date), CAST(N'2042-06-05' AS Date), N'427641000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (205, N'Ellynn', NULL, N'Billy', N'Rehme', N'864874', N'2973', CAST(N'2004-06-12' AS Date), 1, N'Suite 20', N'694-644-9072', N'brehme3@toplist.cz', CAST(N'2017-11-11' AS Date), CAST(N'2012-12-04' AS Date), CAST(N'2023-12-29' AS Date), CAST(N'2042-06-06' AS Date), N'835109000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (206, N'Shannan', NULL, N'Ynes', N'Nowak', N'123840', N'7962', CAST(N'1995-11-06' AS Date), 1, N'Apt 1593', N'609-776-1123', N'ynowak4@nydailynews.com', CAST(N'2017-11-12' AS Date), CAST(N'2012-12-05' AS Date), CAST(N'2023-12-30' AS Date), CAST(N'2042-06-07' AS Date), N'357141000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (207, N'Ambur', NULL, N'Lemar', N'Clissell', N'431346', N'4656', CAST(N'1995-11-07' AS Date), 0, N'16th Floor', N'989-530-2679', N'lclissell5@dailymotion.com', CAST(N'2017-11-13' AS Date), CAST(N'2012-12-06' AS Date), CAST(N'2023-12-31' AS Date), CAST(N'2042-06-08' AS Date), N'680485000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (208, N'Ebony', NULL, N'Molly', N'Vernalls', N'979533', N'4499', CAST(N'1994-10-08' AS Date), 1, N'PO Box 14293', N'480-791-2990', N'mvernalls6@engadget.com', CAST(N'2017-11-11' AS Date), CAST(N'2012-12-07' AS Date), CAST(N'2024-01-01' AS Date), CAST(N'2042-06-09' AS Date), N'427506000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (209, N'Celine', NULL, N'Bryn', N'Echelle', N'391073', N'8624', CAST(N'2008-11-06' AS Date), 1, N'Room 140', N'615-299-7243', N'bechelle7@pcworld.com', CAST(N'2014-02-06' AS Date), CAST(N'2012-12-08' AS Date), CAST(N'2023-04-11' AS Date), CAST(N'2042-06-10' AS Date), N'285064000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (210, N'Putnem', NULL, N'Alina', N'Coleby', N'928184', N'6467', CAST(N'2008-11-07' AS Date), 0, N'Apt 781', N'460-874-1597', N'acoleby8@apache.org', CAST(N'2014-02-06' AS Date), CAST(N'2012-12-09' AS Date), CAST(N'2022-11-08' AS Date), CAST(N'2032-07-05' AS Date), N'674253000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (211, N'Sasha', NULL, N'Ingrid', N'Essel', N'369789', N'5279', CAST(N'2008-11-08' AS Date), 1, N'Suite 62', N'161-156-9715', N'iessel9@amazon.de', CAST(N'2014-02-07' AS Date), CAST(N'2012-12-10' AS Date), CAST(N'2022-01-04' AS Date), CAST(N'2032-07-06' AS Date), N'500259000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (212, N'Devan', NULL, N'Clair', N'Kindon', N'669021', N'7329', CAST(N'2008-11-09' AS Date), 0, N'PO Box 42856', N'748-699-4551', N'ckindona@amazonaws.com', CAST(N'2012-04-01' AS Date), CAST(N'2012-12-11' AS Date), CAST(N'2024-01-01' AS Date), CAST(N'2032-07-07' AS Date), N'778448000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (213, N'Maura', NULL, N'Ilyssa', N'Benjafield', N'210616', N'4049', CAST(N'2008-11-10' AS Date), 1, N'Room 135', N'543-529-4434', N'ibenjafieldb@goodreads.com', CAST(N'2012-04-02' AS Date), CAST(N'2012-12-12' AS Date), CAST(N'2024-01-02' AS Date), CAST(N'2032-07-08' AS Date), N'577839000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (214, N'Orelie', NULL, N'Elyn', N'Straneo', N'363635', N'4622', CAST(N'2008-11-11' AS Date), 0, N'Suite 56', N'298-360-3017', N'estraneoc@harvard.edu', CAST(N'2012-04-03' AS Date), CAST(N'2012-12-13' AS Date), CAST(N'2021-02-04' AS Date), CAST(N'2041-11-11' AS Date), N'224266000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (215, N'Krysta', NULL, N'Melosa', N'Flett', N'350358', N'9683', CAST(N'2008-11-12' AS Date), 1, N'16th Floor', N'367-777-5319', N'mflettd@google.co.jp', CAST(N'2012-04-04' AS Date), CAST(N'2012-12-14' AS Date), CAST(N'2023-07-01' AS Date), CAST(N'2041-11-12' AS Date), N'293482000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (216, N'Kyle', NULL, N'Juliana', N'Simonian', N'907790', N'4907', CAST(N'2008-11-13' AS Date), 0, N'9th Floor', N'372-350-5359', N'jsimoniane@java.com', CAST(N'2012-04-05' AS Date), CAST(N'2012-12-15' AS Date), CAST(N'2023-07-02' AS Date), CAST(N'2041-11-13' AS Date), N'179627000000007000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (217, N'Marinna', NULL, N'Julieta', N'Georger', N'492955', N'7906', CAST(N'2008-11-14' AS Date), 0, N'PO Box 640', N'204-659-3337', N'jgeorgerf@yellowpages.com', CAST(N'2012-04-06' AS Date), CAST(N'2012-12-16' AS Date), CAST(N'2022-01-05' AS Date), CAST(N'2041-11-14' AS Date), N'289210000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (218, N'Lek', NULL, N'Theresa', N'Kervin', N'494967', N'1751', CAST(N'2002-12-03' AS Date), 0, N'PO Box 37606', N'948-169-3485', N'tkerving@go.com', CAST(N'2012-04-07' AS Date), CAST(N'2012-12-17' AS Date), CAST(N'2022-08-09' AS Date), CAST(N'2041-03-01' AS Date), N'765216000007000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (219, N'Oren', NULL, N'Elora', N'Gardner', N'879430', N'1610', CAST(N'1996-12-07' AS Date), 0, N'PO Box 31452', N'148-789-2255', N'egardnerh@tripod.com', CAST(N'2012-04-08' AS Date), CAST(N'2012-12-18' AS Date), CAST(N'2022-08-10' AS Date), CAST(N'2040-08-01' AS Date), N'591510000001000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (220, N'Jaime', NULL, N'Reeva', N'Gerrens', N'372312', N'9189', CAST(N'1995-04-09' AS Date), 0, N'Suite 6', N'187-477-7121', N'rgerrensi@trellian.com', CAST(N'2018-09-07' AS Date), CAST(N'2012-12-19' AS Date), CAST(N'2022-08-11' AS Date), CAST(N'2040-08-02' AS Date), N'405575000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (221, N'Vanda', NULL, N'Ola', N'Caddens', N'903734', N'6327', CAST(N'1995-04-10' AS Date), 1, N'PO Box 77672', N'756-223-4398', N'ocaddensj@w3.org', CAST(N'2018-09-08' AS Date), CAST(N'2012-12-20' AS Date), CAST(N'2022-08-09' AS Date), CAST(N'2037-03-11' AS Date), N'941703000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (222, N'Kennie', NULL, N'Heath', N'Stealey', N'251883', N'9075', CAST(N'1995-04-11' AS Date), 1, N'Suite 66', N'425-938-7161', N'hstealeyk@homestead.com', CAST(N'2018-09-09' AS Date), CAST(N'2012-12-21' AS Date), CAST(N'2022-08-10' AS Date), CAST(N'2037-03-12' AS Date), N'142322000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (223, N'Johannes', NULL, N'Gerome', N'Thirlwall', N'965872', N'7278', CAST(N'1995-04-12' AS Date), 0, N'Room 574', N'403-919-7803', N'gthirlwalll@lycos.com', CAST(N'2018-09-10' AS Date), CAST(N'2012-12-22' AS Date), CAST(N'2022-08-11' AS Date), CAST(N'2034-01-04' AS Date), N'940273000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (224, N'Clayborn', NULL, N'John', N'Huggett', N'513890', N'9751', CAST(N'1995-04-13' AS Date), 1, N'12th Floor', N'893-572-5437', N'jhuggettm@godaddy.com', CAST(N'2018-09-11' AS Date), CAST(N'2012-12-23' AS Date), CAST(N'2022-08-12' AS Date), CAST(N'2034-01-05' AS Date), N'796080000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (225, N'Harper', NULL, N'Paulette', N'Glide', N'405856', N'3649', CAST(N'1995-04-14' AS Date), 0, N'PO Box 55552', N'469-334-6044', N'pgliden@huffingtonpost.com', CAST(N'2016-02-03' AS Date), CAST(N'2012-12-24' AS Date), CAST(N'2022-08-13' AS Date), CAST(N'2034-01-06' AS Date), N'456185000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (226, N'Skylar', NULL, N'Bekki', N'Blight', N'842615', N'9512', CAST(N'1995-04-15' AS Date), 0, N'PO Box 44203', N'750-497-6827', N'bblighto@mit.edu', CAST(N'2016-02-04' AS Date), CAST(N'2012-12-25' AS Date), CAST(N'2022-08-14' AS Date), CAST(N'2034-01-07' AS Date), N'807336000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (227, N'Renaldo', NULL, N'Antonin', N'Bardnam', N'626570', N'2166', CAST(N'1995-04-16' AS Date), 0, N'PO Box 5169', N'679-255-0269', N'abardnamp@pcworld.com', CAST(N'2016-02-05' AS Date), CAST(N'2012-12-26' AS Date), CAST(N'2022-08-15' AS Date), CAST(N'2034-01-08' AS Date), N'507560000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (228, N'Gilligan', NULL, N'Fionna', N'Tout', N'280305', N'6676', CAST(N'1995-04-17' AS Date), 0, N'Room 483', N'907-287-6166', N'ftoutq@rambler.ru', CAST(N'2016-02-06' AS Date), CAST(N'2012-12-27' AS Date), CAST(N'2022-08-16' AS Date), CAST(N'2034-01-09' AS Date), N'498937000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (229, N'Biddy', NULL, N'Bethena', N'Griffoen', N'855003', N'9357', CAST(N'1992-11-11' AS Date), 0, N'Room 429', N'791-645-6801', N'bgriffoenr@a8.net', CAST(N'2016-02-07' AS Date), CAST(N'2012-12-28' AS Date), CAST(N'2022-08-17' AS Date), CAST(N'2042-09-07' AS Date), N'291759000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (230, N'Arron', NULL, N'Galvin', N'Franzetti', N'843603', N'4551', CAST(N'1990-08-03' AS Date), 1, N'Suite 24', N'372-952-1261', N'gfranzettis@bing.com', CAST(N'2016-02-08' AS Date), CAST(N'2012-12-29' AS Date), CAST(N'2023-12-02' AS Date), CAST(N'2042-09-08' AS Date), N'426763000000040000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (231, N'Veradis', NULL, N'Kariotta', N'Dunphy', N'272854', N'2664', CAST(N'2006-10-06' AS Date), 0, N'Suite 39', N'837-197-6259', N'kdunphyt@meetup.com', CAST(N'2016-02-09' AS Date), CAST(N'2012-12-30' AS Date), CAST(N'2022-08-02' AS Date), CAST(N'2038-04-03' AS Date), N'640026000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (232, N'Will', NULL, N'Olin', N'Womersley', N'233705', N'2024', CAST(N'2006-10-07' AS Date), 0, N'12th Floor', N'683-640-5487', N'owomersleyu@163.com', CAST(N'2016-12-07' AS Date), CAST(N'2012-12-31' AS Date), CAST(N'2022-01-07' AS Date), CAST(N'2034-10-11' AS Date), N'376024000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (233, N'Shea', NULL, N'Aldous', N'Bygrave', N'946481', N'4142', CAST(N'2006-10-08' AS Date), 0, N'PO Box 79964', N'119-130-2544', N'abygravev@addthis.com', CAST(N'2016-12-08' AS Date), CAST(N'2013-01-01' AS Date), CAST(N'2022-01-08' AS Date), CAST(N'2034-10-12' AS Date), N'911046000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (234, N'Davin', NULL, N'Holden', N'Center', N'743419', N'6827', CAST(N'2006-10-09' AS Date), 1, N'Suite 78', N'673-942-1345', N'hcenterw@cbc.ca', CAST(N'2016-12-09' AS Date), CAST(N'2013-01-02' AS Date), CAST(N'2022-01-09' AS Date), CAST(N'2040-07-01' AS Date), N'712858000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (235, N'Jannelle', NULL, N'Holly', N'Ashwood', N'862368', N'6683', CAST(N'2006-10-10' AS Date), 0, N'Room 1579', N'522-674-1443', N'hashwoodx@hhs.gov', CAST(N'2016-12-10' AS Date), CAST(N'2013-01-03' AS Date), CAST(N'2022-01-10' AS Date), CAST(N'2040-07-11' AS Date), N'712250000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (236, N'Lorilyn', NULL, N'Brook', N'Castanie', N'898007', N'8930', CAST(N'2006-10-11' AS Date), 1, N'PO Box 99518', N'242-579-2547', N'bcastaniey@upenn.edu', CAST(N'2016-12-11' AS Date), CAST(N'2013-01-04' AS Date), CAST(N'2022-01-11' AS Date), CAST(N'2037-07-08' AS Date), N'637546000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (237, N'Mattias', NULL, N'Teriann', N'Klampt', N'978470', N'9825', CAST(N'2005-05-05' AS Date), 1, N'PO Box 67728', N'806-319-9871', N'tklamptz@umn.edu', CAST(N'2014-11-10' AS Date), CAST(N'2013-01-05' AS Date), CAST(N'2022-01-12' AS Date), CAST(N'2034-11-02' AS Date), N'314927000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (238, N'Othello', NULL, N'Johnath', N'Franzke', N'701975', N'8276', CAST(N'2005-05-06' AS Date), 0, N'8th Floor', N'822-724-1960', N'jfranzke10@nbcnews.com', CAST(N'2014-11-11' AS Date), CAST(N'2013-01-06' AS Date), CAST(N'2022-01-13' AS Date), CAST(N'2034-11-03' AS Date), N'155595000000500000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (239, N'Aloise', NULL, N'Hannah', N'Tunn', N'857479', N'5847', CAST(N'2005-05-07' AS Date), 1, N'PO Box 91986', N'813-750-3350', N'htunn11@ask.com', CAST(N'2014-11-12' AS Date), CAST(N'2013-01-07' AS Date), CAST(N'2022-01-14' AS Date), CAST(N'2034-11-04' AS Date), N'811171000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (240, N'Roana', NULL, N'Joseito', N'Balden', N'363198', N'1994', CAST(N'2005-05-08' AS Date), 1, N'Apt 293', N'613-985-8050', N'jbalden12@phoca.cz', CAST(N'2014-11-13' AS Date), CAST(N'2013-01-08' AS Date), CAST(N'2021-04-02' AS Date), CAST(N'2034-11-05' AS Date), N'125759000000100000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (241, N'Micheil', NULL, N'Dalston', N'Dagg', N'612154', N'7953', CAST(N'2005-05-09' AS Date), 1, N'15th Floor', N'470-553-0904', N'ddagg13@diigo.com', CAST(N'2014-11-14' AS Date), CAST(N'2013-01-09' AS Date), CAST(N'2021-04-03' AS Date), CAST(N'2034-11-06' AS Date), N'499168000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (242, N'Blondell', NULL, N'Augustina', N'Tosh', N'313559', N'8402', CAST(N'2005-05-10' AS Date), 1, N'Apt 1538', N'219-884-8839', N'atosh14@macromedia.com', CAST(N'2014-11-15' AS Date), CAST(N'2013-01-10' AS Date), CAST(N'2021-04-04' AS Date), CAST(N'2034-11-07' AS Date), N'446323000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (243, N'Freeman', NULL, N'Rosmunda', N'Goricke', N'597533', N'6818', CAST(N'2005-05-11' AS Date), 0, N'PO Box 13559', N'628-321-2837', N'rgoricke15@parallels.com', CAST(N'2014-11-16' AS Date), CAST(N'2013-01-11' AS Date), CAST(N'2021-04-05' AS Date), CAST(N'2034-11-08' AS Date), N'370925000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (244, N'Dawn', NULL, N'Carolyn', N'Keddy', N'994754', N'6800', CAST(N'2005-05-12' AS Date), 0, N'PO Box 60885', N'924-353-1050', N'ckeddy16@apache.org', CAST(N'2014-11-17' AS Date), CAST(N'2013-01-12' AS Date), CAST(N'2021-04-06' AS Date), CAST(N'2034-11-09' AS Date), N'264112000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (245, N'Harmon', NULL, N'Renee', N'Paolazzi', N'336599', N'9776', CAST(N'1996-01-02' AS Date), 0, N'Room 975', N'337-999-8234', N'rpaolazzi17@shop-pro.jp', CAST(N'2014-11-18' AS Date), CAST(N'2013-01-13' AS Date), CAST(N'2021-04-07' AS Date), CAST(N'2034-11-10' AS Date), N'312693000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (246, N'Mariejeanne', NULL, N'Carmina', N'Truggian', N'567899', N'8288', CAST(N'1998-07-01' AS Date), 1, N'Room 556', N'728-962-0691', N'ctruggian18@ox.ac.uk', CAST(N'2014-11-19' AS Date), CAST(N'2013-01-14' AS Date), CAST(N'2022-08-06' AS Date), CAST(N'2034-11-11' AS Date), N'436492000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (247, N'Morse', NULL, N'Arther', N'Fittall', N'100688', N'7908', CAST(N'1991-01-06' AS Date), 0, N'Apt 934', N'820-256-7974', N'afittall19@tripod.com', CAST(N'2014-11-20' AS Date), CAST(N'2013-01-15' AS Date), CAST(N'2022-08-07' AS Date), CAST(N'2031-04-07' AS Date), N'739927000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (248, N'Libby', NULL, N'Quintina', N'Ryburn', N'691859', N'4071', CAST(N'1999-02-01' AS Date), 0, N'Apt 888', N'733-183-6562', N'qryburn1a@twitpic.com', CAST(N'2014-11-21' AS Date), CAST(N'2013-01-16' AS Date), CAST(N'2022-08-08' AS Date), CAST(N'2031-08-10' AS Date), N'852247000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (249, N'King', NULL, N'Barbabas', N'Jemison', N'815632', N'3381', CAST(N'1994-02-07' AS Date), 0, N'Suite 98', N'767-882-2160', N'bjemison1b@cdbaby.com', CAST(N'2014-11-22' AS Date), CAST(N'2013-01-17' AS Date), CAST(N'2022-08-09' AS Date), CAST(N'2031-08-11' AS Date), N'414830000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (250, N'Bianka', NULL, N'Cathie', N'Andreone', N'682345', N'1285', CAST(N'1994-02-08' AS Date), 0, N'Suite 64', N'159-591-9414', N'candreone1c@odnoklassniki.ru', CAST(N'2011-01-06' AS Date), CAST(N'2013-01-18' AS Date), CAST(N'2022-08-10' AS Date), CAST(N'2031-08-12' AS Date), N'782314000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (251, N'Theda', NULL, N'Karil', N'Moret', N'572928', N'3843', CAST(N'1994-02-09' AS Date), 1, N'Apt 1748', N'550-545-4611', N'kmoret1d@edublogs.org', CAST(N'2011-01-07' AS Date), CAST(N'2013-01-19' AS Date), CAST(N'2022-08-11' AS Date), CAST(N'2035-01-03' AS Date), N'529596000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (252, N'Alva', NULL, N'Karlan', N'Goodbarne', N'230179', N'6566', CAST(N'1994-02-10' AS Date), 0, N'6th Floor', N'789-151-8484', N'kgoodbarne1e@blogger.com', CAST(N'2011-01-08' AS Date), CAST(N'2013-01-20' AS Date), CAST(N'2022-08-12' AS Date), CAST(N'2035-01-04' AS Date), N'566900000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (253, N'Gothart', NULL, N'Brett', N'Lisimore', N'512717', N'9493', CAST(N'1994-02-11' AS Date), 0, N'17th Floor', N'746-712-8963', N'blisimore1f@google.ca', CAST(N'2011-01-09' AS Date), CAST(N'2013-01-21' AS Date), CAST(N'2021-06-11' AS Date), CAST(N'2035-01-05' AS Date), N'986605000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (254, N'Grannie', NULL, N'Barbey', N'Falkus', N'722125', N'8047', CAST(N'1994-02-12' AS Date), 1, N'PO Box 14590', N'756-177-7611', N'bfalkus1g@dot.gov', CAST(N'2011-01-10' AS Date), CAST(N'2013-01-22' AS Date), CAST(N'2021-09-10' AS Date), CAST(N'2035-01-06' AS Date), N'876805000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (255, N'Chelsae', NULL, N'Shawnee', N'Mowat', N'197285', N'5209', CAST(N'1994-02-13' AS Date), 1, N'Suite 8', N'328-829-1280', N'smowat1h@buzzfeed.com', CAST(N'2011-01-11' AS Date), CAST(N'2013-01-23' AS Date), CAST(N'2021-09-11' AS Date), CAST(N'2035-01-07' AS Date), N'831835000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (256, N'Conny', NULL, N'Northrup', N'Dickons', N'721841', N'8495', CAST(N'1994-02-14' AS Date), 0, N'7th Floor', N'739-301-7539', N'ndickons1i@youtube.com', CAST(N'2011-01-12' AS Date), CAST(N'2013-01-24' AS Date), CAST(N'2021-09-12' AS Date), CAST(N'2035-01-08' AS Date), N'984742000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (257, N'Shannon', NULL, N'Chadwick', N'Charrier', N'535846', N'6093', CAST(N'1994-02-15' AS Date), 1, N'3rd Floor', N'999-456-6061', N'ccharrier1j@dot.gov', CAST(N'2011-01-13' AS Date), CAST(N'2013-01-25' AS Date), CAST(N'2023-07-12' AS Date), CAST(N'2036-04-06' AS Date), N'846055000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (258, N'Roberta', NULL, N'Gregorius', N'Bark', N'856045', N'8026', CAST(N'2002-01-12' AS Date), 1, N'PO Box 22557', N'777-537-8875', N'gbark1k@jiathis.com', CAST(N'2015-07-12' AS Date), CAST(N'2013-01-26' AS Date), CAST(N'2022-05-09' AS Date), CAST(N'2031-09-03' AS Date), N'728770000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (259, N'Stephenie', NULL, N'Curr', N'Gregh', N'397164', N'5598', CAST(N'2008-06-11' AS Date), 1, N'Suite 10', N'768-342-7636', N'cgregh1l@mysql.com', CAST(N'2012-09-08' AS Date), CAST(N'2013-01-27' AS Date), CAST(N'2023-05-11' AS Date), CAST(N'2040-01-10' AS Date), N'322872000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (260, N'Merrick', NULL, N'Rory', N'Tease', N'899066', N'8382', CAST(N'1998-05-11' AS Date), 0, N'8th Floor', N'372-437-9628', N'rtease1m@com.com', CAST(N'2012-09-09' AS Date), CAST(N'2013-01-28' AS Date), CAST(N'2021-07-11' AS Date), CAST(N'2040-01-11' AS Date), N'675327000005000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (261, N'Lane', NULL, N'Virginie', N'Patey', N'679457', N'7584', CAST(N'1998-05-12' AS Date), 1, N'Apt 1948', N'243-565-7815', N'vpatey1n@nyu.edu', CAST(N'2012-09-10' AS Date), CAST(N'2013-01-29' AS Date), CAST(N'2022-03-04' AS Date), CAST(N'2040-01-12' AS Date), N'619612000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (262, N'Abran', NULL, N'Leta', N'Cullagh', N'394006', N'2223', CAST(N'1998-05-13' AS Date), 0, N'Suite 25', N'223-954-5626', N'lcullagh1o@patch.com', CAST(N'2012-09-11' AS Date), CAST(N'2013-01-30' AS Date), CAST(N'2022-03-05' AS Date), CAST(N'2040-01-13' AS Date), N'597409000005000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (263, N'Lydie', NULL, N'Berty', N'Reedshaw', N'511334', N'7032', CAST(N'1998-05-14' AS Date), 1, N'16th Floor', N'900-112-2005', N'breedshaw1p@domainmarket.com', CAST(N'2019-07-03' AS Date), CAST(N'2013-01-31' AS Date), CAST(N'2023-04-05' AS Date), CAST(N'2040-01-14' AS Date), N'911654000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (264, N'Kelli', NULL, N'Tedie', N'Gladdis', N'479506', N'3378', CAST(N'1998-05-15' AS Date), 0, N'Room 1412', N'760-528-0659', N'tgladdis1q@ifeng.com', CAST(N'2010-02-05' AS Date), CAST(N'2013-02-01' AS Date), CAST(N'2023-01-06' AS Date), CAST(N'2033-01-03' AS Date), N'636110000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (265, N'Montague', NULL, N'Maxim', N'McFetridge', N'141085', N'4838', CAST(N'1998-05-16' AS Date), 1, N'Room 1193', N'787-218-5222', N'mmcfetridge1r@ehow.com', CAST(N'2010-02-06' AS Date), CAST(N'2013-02-02' AS Date), CAST(N'2022-07-05' AS Date), CAST(N'2033-01-04' AS Date), N'599066000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (266, N'Orazio', NULL, N'Desiree', N'Dorton', N'597238', N'1832', CAST(N'1998-05-17' AS Date), 1, N'Apt 1557', N'985-580-5991', N'ddorton1s@msu.edu', CAST(N'2010-02-07' AS Date), CAST(N'2013-02-03' AS Date), CAST(N'2022-04-08' AS Date), CAST(N'2033-01-05' AS Date), N'717357000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (267, N'Oates', NULL, N'Nike', N'Brunini', N'925245', N'5409', CAST(N'1998-05-18' AS Date), 1, N'PO Box 15365', N'875-783-9112', N'nbrunini1t@hc360.com', CAST(N'2010-02-08' AS Date), CAST(N'2013-02-04' AS Date), CAST(N'2022-06-12' AS Date), CAST(N'2033-01-06' AS Date), N'867865000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (268, N'Jacob', NULL, N'Pat', N'Francino', N'998239', N'8940', CAST(N'1998-05-19' AS Date), 0, N'5th Floor', N'908-364-7643', N'pfrancino1u@histats.com', CAST(N'2010-02-09' AS Date), CAST(N'2013-02-05' AS Date), CAST(N'2022-06-13' AS Date), CAST(N'2033-01-07' AS Date), N'917312000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (269, N'Sibylle', NULL, N'Britney', N'Dorgan', N'117134', N'3255', CAST(N'1998-05-20' AS Date), 0, N'Suite 10', N'372-100-7094', N'bdorgan1v@geocities.jp', CAST(N'2010-02-10' AS Date), CAST(N'2013-02-06' AS Date), CAST(N'2022-06-14' AS Date), CAST(N'2033-01-08' AS Date), N'590297000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (270, N'Clay', NULL, N'Rosco', N'Vigietti', N'797564', N'9454', CAST(N'2005-11-02' AS Date), 1, N'Suite 10', N'330-627-1065', N'rvigietti1w@printfriendly.com', CAST(N'2010-02-11' AS Date), CAST(N'2013-02-07' AS Date), CAST(N'2023-03-07' AS Date), CAST(N'2043-03-03' AS Date), N'368303000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (271, N'Stella', NULL, N'Marylee', N'Gowthrop', N'334383', N'2236', CAST(N'2005-11-03' AS Date), 0, N'15th Floor', N'268-761-3283', N'mgowthrop1x@skyrock.com', CAST(N'2010-02-12' AS Date), CAST(N'2013-02-08' AS Date), CAST(N'2022-05-07' AS Date), CAST(N'2032-09-07' AS Date), N'697737000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (272, N'Katina', NULL, N'Reggis', N'Zorener', N'105126', N'4494', CAST(N'1994-01-09' AS Date), 0, N'Apt 1123', N'406-539-4127', N'rzorener1y@time.com', CAST(N'2010-02-13' AS Date), CAST(N'2013-02-09' AS Date), CAST(N'2022-11-09' AS Date), CAST(N'2034-04-06' AS Date), N'138116000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (273, N'Dre', NULL, N'Bert', N'McLleese', N'550588', N'2922', CAST(N'1994-01-10' AS Date), 1, N'Suite 75', N'242-227-5297', N'bmclleese1z@epa.gov', CAST(N'2010-02-14' AS Date), CAST(N'2013-02-10' AS Date), CAST(N'2022-02-07' AS Date), CAST(N'2034-04-07' AS Date), N'814309000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (274, N'Nanci', NULL, N'Lief', N'Galpin', N'258302', N'7719', CAST(N'1994-01-11' AS Date), 0, N'PO Box 78382', N'662-902-5134', N'lgalpin20@bloglines.com', CAST(N'2010-02-15' AS Date), CAST(N'2013-02-11' AS Date), CAST(N'2022-02-08' AS Date), CAST(N'2034-04-08' AS Date), N'888658000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (275, N'Lothaire', NULL, N'Doloritas', N'Grunwall', N'991627', N'2720', CAST(N'1994-01-12' AS Date), 1, N'Apt 811', N'205-520-4908', N'dgrunwall21@spotify.com', CAST(N'2010-02-16' AS Date), CAST(N'2013-02-12' AS Date), CAST(N'2022-02-09' AS Date), CAST(N'2034-04-09' AS Date), N'630540000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (276, N'Gayler', NULL, N'Pincus', N'Tallboy', N'658967', N'1922', CAST(N'1994-01-13' AS Date), 1, N'Suite 9', N'949-211-0386', N'ptallboy22@unblog.fr', CAST(N'2015-05-12' AS Date), CAST(N'2013-02-13' AS Date), CAST(N'2023-09-01' AS Date), CAST(N'2039-10-03' AS Date), N'841999000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (277, N'Guillemette', NULL, N'Jessa', N'Gainfort', N'326037', N'9534', CAST(N'1994-01-14' AS Date), 1, N'Room 1703', N'768-934-5903', N'jgainfort23@blogger.com', CAST(N'2013-10-09' AS Date), CAST(N'2013-02-14' AS Date), CAST(N'2023-10-02' AS Date), CAST(N'2039-10-04' AS Date), N'438493000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (278, N'Webster', NULL, N'Bessie', N'Happs', N'285323', N'5165', CAST(N'1994-01-15' AS Date), 1, N'Room 782', N'686-158-9337', N'bhapps24@webmd.com', CAST(N'2013-10-10' AS Date), CAST(N'2013-02-15' AS Date), CAST(N'2023-01-05' AS Date), CAST(N'2039-10-05' AS Date), N'335423000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (279, N'Caddric', NULL, N'Dugald', N'Cadwell', N'874584', N'2439', CAST(N'1994-01-16' AS Date), 1, N'20th Floor', N'332-181-2854', N'dcadwell25@statcounter.com', CAST(N'2013-10-11' AS Date), CAST(N'2013-02-16' AS Date), CAST(N'2023-01-06' AS Date), CAST(N'2039-10-06' AS Date), N'245851000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (280, N'Dore', NULL, N'Eldin', N'Labat', N'753926', N'6804', CAST(N'1994-01-17' AS Date), 0, N'18th Floor', N'852-314-8738', N'elabat26@sohu.com', CAST(N'2013-10-12' AS Date), CAST(N'2013-02-17' AS Date), CAST(N'2023-01-07' AS Date), CAST(N'2043-07-11' AS Date), N'948783000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (281, N'Cristy', NULL, N'Titos', N'Goalley', N'981270', N'8457', CAST(N'1994-01-18' AS Date), 0, N'Apt 1952', N'628-311-0897', N'tgoalley27@miibeian.gov.cn', CAST(N'2013-10-13' AS Date), CAST(N'2013-02-18' AS Date), CAST(N'2023-01-08' AS Date), CAST(N'2043-07-12' AS Date), N'296653000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (282, N'Claude', NULL, N'Emyle', N'Deinhardt', N'585511', N'7053', CAST(N'1994-01-19' AS Date), 1, N'PO Box 59803', N'438-789-9983', N'edeinhardt28@state.tx.us', CAST(N'2013-10-14' AS Date), CAST(N'2013-02-19' AS Date), CAST(N'2023-01-09' AS Date), CAST(N'2043-07-13' AS Date), N'484336000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (283, N'Brunhilda', NULL, N'Tammi', N'Doble', N'871501', N'3554', CAST(N'1994-01-20' AS Date), 1, N'Apt 1163', N'700-421-2018', N'tdoble29@walmart.com', CAST(N'2014-03-09' AS Date), CAST(N'2013-02-20' AS Date), CAST(N'2023-01-10' AS Date), CAST(N'2040-04-11' AS Date), N'830699000700000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (284, N'Vicky', NULL, N'Jonathan', N'Ramsier', N'427850', N'5128', CAST(N'1992-04-04' AS Date), 1, N'Room 1654', N'624-419-4704', N'jramsier2a@cloudflare.com', CAST(N'2014-03-10' AS Date), CAST(N'2013-02-21' AS Date), CAST(N'2023-02-04' AS Date), CAST(N'2040-04-12' AS Date), N'168154000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (285, N'Madalena', NULL, N'Mireille', N'Berndsen', N'947592', N'5860', CAST(N'1992-04-05' AS Date), 1, N'Apt 1926', N'700-550-7438', N'mberndsen2b@edublogs.org', CAST(N'2014-03-11' AS Date), CAST(N'2013-02-22' AS Date), CAST(N'2023-02-05' AS Date), CAST(N'2040-04-13' AS Date), N'588865000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (286, N'Bogart', NULL, N'Gina', N'Purvis', N'175677', N'8747', CAST(N'1992-04-06' AS Date), 1, N'Suite 83', N'146-232-4987', N'gpurvis2c@vk.com', CAST(N'2014-03-12' AS Date), CAST(N'2013-02-23' AS Date), CAST(N'2021-05-09' AS Date), CAST(N'2040-04-14' AS Date), N'504274000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (287, N'Gates', NULL, N'Bridie', N'Conquer', N'684017', N'2597', CAST(N'1992-04-07' AS Date), 1, N'PO Box 6495', N'436-743-9933', N'bconquer2d@jalbum.net', CAST(N'2014-03-13' AS Date), CAST(N'2013-02-24' AS Date), CAST(N'2021-05-10' AS Date), CAST(N'2040-04-15' AS Date), N'292511000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (288, N'Elisabeth', NULL, N'Abbe', N'O''Sullivan', N'142651', N'5955', CAST(N'1992-04-08' AS Date), 0, N'PO Box 99274', N'204-902-6167', N'aosullivan2e@google.co.jp', CAST(N'2014-03-14' AS Date), CAST(N'2013-02-25' AS Date), CAST(N'2021-05-11' AS Date), CAST(N'2039-10-04' AS Date), N'347758000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (289, N'Silvanus', NULL, N'Annette', N'Girkin', N'997907', N'1532', CAST(N'1992-04-09' AS Date), 1, N'Apt 154', N'768-609-7726', N'agirkin2f@alexa.com', CAST(N'2014-03-15' AS Date), CAST(N'2013-02-26' AS Date), CAST(N'2021-05-12' AS Date), CAST(N'2039-10-05' AS Date), N'844389000000600000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (290, N'Robinet', NULL, N'Lynsey', N'Kerrich', N'171538', N'9450', CAST(N'1992-04-10' AS Date), 0, N'PO Box 11817', N'166-866-0209', N'lkerrich2g@naver.com', CAST(N'2014-03-16' AS Date), CAST(N'2013-02-27' AS Date), CAST(N'2021-05-13' AS Date), CAST(N'2040-07-05' AS Date), N'556908000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (291, N'Olag', NULL, N'Atlanta', N'Pfeifer', N'919844', N'8086', CAST(N'2004-02-06' AS Date), 0, N'15th Floor', N'608-326-2110', N'apfeifer2h@whitehouse.gov', CAST(N'2014-03-17' AS Date), CAST(N'2013-02-28' AS Date), CAST(N'2021-05-14' AS Date), CAST(N'2034-05-11' AS Date), N'572761000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (292, N'Tymon', NULL, N'Magnum', N'Mazey', N'353109', N'6658', CAST(N'2004-02-07' AS Date), 1, N'11th Floor', N'466-584-1254', N'mmazey2i@biglobe.ne.jp', CAST(N'2014-03-18' AS Date), CAST(N'2013-03-01' AS Date), CAST(N'2021-05-15' AS Date), CAST(N'2033-12-03' AS Date), N'723021000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (293, N'Estel', NULL, N'Carmela', N'Josephov', N'245193', N'1652', CAST(N'2004-02-08' AS Date), 1, N'Suite 34', N'751-340-7773', N'cjosephov2j@istockphoto.com', CAST(N'2014-03-19' AS Date), CAST(N'2013-03-02' AS Date), CAST(N'2021-10-06' AS Date), CAST(N'2033-12-04' AS Date), N'950132000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (294, N'Roobbie', NULL, N'Brunhilde', N'Brayley', N'397069', N'2830', CAST(N'2004-02-09' AS Date), 1, N'PO Box 67166', N'892-438-8025', N'bbrayley2k@aol.com', CAST(N'2014-03-20' AS Date), CAST(N'2013-03-03' AS Date), CAST(N'2023-07-10' AS Date), CAST(N'2033-12-05' AS Date), N'677684000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (295, N'Krishnah', NULL, N'Gertrudis', N'Murney', N'830922', N'9929', CAST(N'2004-02-10' AS Date), 0, N'Suite 17', N'196-647-7466', N'gmurney2l@ustream.tv', CAST(N'2011-02-08' AS Date), CAST(N'2013-03-04' AS Date), CAST(N'2023-07-11' AS Date), CAST(N'2033-12-06' AS Date), N'734458000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (296, N'Peggi', NULL, N'Wittie', N'Aharoni', N'727614', N'5899', CAST(N'2004-02-11' AS Date), 1, N'Room 370', N'668-462-1299', N'waharoni2m@mac.com', CAST(N'2012-03-04' AS Date), CAST(N'2013-03-05' AS Date), CAST(N'2023-07-12' AS Date), CAST(N'2043-12-01' AS Date), N'206666000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (297, N'Basia', NULL, N'Bobbi', N'Doberer', N'852366', N'1246', CAST(N'2004-02-12' AS Date), 0, N'PO Box 52792', N'823-988-2362', N'bdoberer2n@mapquest.com', CAST(N'2012-09-06' AS Date), CAST(N'2013-03-06' AS Date), CAST(N'2023-07-13' AS Date), CAST(N'2043-12-02' AS Date), N'698634000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (298, N'Shaine', NULL, N'Jeth', N'Keggins', N'537509', N'2888', CAST(N'2004-02-13' AS Date), 0, N'Suite 42', N'140-631-5824', N'jkeggins2o@discovery.com', CAST(N'2011-12-04' AS Date), CAST(N'2013-03-07' AS Date), CAST(N'2023-07-14' AS Date), CAST(N'2043-12-03' AS Date), N'114520000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (299, N'Dill', NULL, N'Casar', N'Swire', N'114760', N'5763', CAST(N'1991-05-07' AS Date), 1, N'Suite 78', N'813-305-3560', N'cswire2p@chicagotribune.com', CAST(N'2010-09-05' AS Date), CAST(N'2013-03-08' AS Date), CAST(N'2022-11-06' AS Date), CAST(N'2043-12-04' AS Date), N'385549000000000000')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (300, N'Zuzana', NULL, N'Jimmie', N'Honnicott', N'584300', N'6130', CAST(N'2008-04-09' AS Date), 0, N'PO Box 57335', N'247-360-3713', N'jhonnicott2q@taobao.com', CAST(N'2013-03-06' AS Date), CAST(N'2013-03-09' AS Date), CAST(N'2022-04-03' AS Date), CAST(N'2043-12-05' AS Date), N'803955000000000000')
GO
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (301, N'Currie', NULL, N'Rosina', N'Smieton', N'263294', N'2199', CAST(N'2008-04-10' AS Date), 1, N'Apt 1463', N'352-202-5404', N'rsmieton2r@networksolutions.com', CAST(N'2013-03-07' AS Date), CAST(N'2013-03-10' AS Date), CAST(N'2022-04-04' AS Date), CAST(N'2043-12-06' AS Date), N'600807000500000000')
SET IDENTITY_INSERT [dbo].[Pacient] OFF
GO
SET IDENTITY_INSERT [dbo].[Places] ON 

INSERT [dbo].[Places] ([Id], [PacientId], [Date], [TipId], [Result], [Recomendation], [DoctorId], [Money]) VALUES (11, 203, CAST(N'2023-11-13' AS Date), 1, N'Cl fx reduc-toe', N'Closed reduction of fracture without internal fixation, phalanges of foot', 1, N'$3.71')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [TipId], [Result], [Recomendation], [DoctorId], [Money]) VALUES (12, 204, CAST(N'2024-01-09' AS Date), 1, N'Educational therapy', N'Educational therapy', 4, N'$1.83')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [TipId], [Result], [Recomendation], [DoctorId], [Money]) VALUES (13, 205, CAST(N'2023-04-24' AS Date), 2, N'C & s NEC', N'Microscopic examination of specimen from other site, culture and sensitivity', 5, N'$2.82')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [TipId], [Result], [Recomendation], [DoctorId], [Money]) VALUES (14, 206, CAST(N'2023-05-06' AS Date), 3, N'Vaginal operation NEC', N'Other operations on vagina', 3, N'$6.96')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [TipId], [Result], [Recomendation], [DoctorId], [Money]) VALUES (15, 207, CAST(N'2023-10-29' AS Date), 4, N'Pteryg exc w cornea grft', N'Excision of pterygium with corneal graft', 6, N'$2.35')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [TipId], [Result], [Recomendation], [DoctorId], [Money]) VALUES (16, 208, CAST(N'2023-02-28' AS Date), 5, N'Nasolac duct intubat', N'Intubation of nasolacrimal duct', 6, N'$5.85')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [TipId], [Result], [Recomendation], [DoctorId], [Money]) VALUES (17, 209, CAST(N'2023-11-08' AS Date), 3, N'Fallop tube repair NEC', N'Other repair of fallopian tube', 2, N'$7.17')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [TipId], [Result], [Recomendation], [DoctorId], [Money]) VALUES (18, 210, CAST(N'2023-12-16' AS Date), 1, N'Vocational rehabilitat', N'Vocational rehabilitation', 7, N'$4.91')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [TipId], [Result], [Recomendation], [DoctorId], [Money]) VALUES (19, 211, CAST(N'2023-07-14' AS Date), 2, N'Culture NEC', N'Microscopic examination of specimen from other site, culture', 5, N'$7.47')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [TipId], [Result], [Recomendation], [DoctorId], [Money]) VALUES (20, 212, CAST(N'2023-08-27' AS Date), 5, N'Nonmechan resuscitation', N'Nonmechanical methods of resuscitation', 4, N'$1.40')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [TipId], [Result], [Recomendation], [DoctorId], [Money]) VALUES (21, 202, CAST(N'2024-01-14' AS Date), 4, N'af', N'FA', 1, N'Р 14')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [TipId], [Result], [Recomendation], [DoctorId], [Money]) VALUES (22, 220, CAST(N'2024-01-13' AS Date), 1, N'sagd', N'sdag', 1, N'sadg')
SET IDENTITY_INSERT [dbo].[Places] OFF
GO
SET IDENTITY_INSERT [dbo].[Rechept] ON 

INSERT [dbo].[Rechept] ([Id], [Name], [Doza], [Format], [PlacesId]) VALUES (1, N'Лизобакт', N'1', N'2', 11)
INSERT [dbo].[Rechept] ([Id], [Name], [Doza], [Format], [PlacesId]) VALUES (4, N'fd', N'fds', N'sfad', 21)
INSERT [dbo].[Rechept] ([Id], [Name], [Doza], [Format], [PlacesId]) VALUES (5, N'ags', N'gsa', N'gsda', 21)
INSERT [dbo].[Rechept] ([Id], [Name], [Doza], [Format], [PlacesId]) VALUES (6, N'sgd', N'asgas', N'gd', 22)
INSERT [dbo].[Rechept] ([Id], [Name], [Doza], [Format], [PlacesId]) VALUES (7, N'sgda', N'sagd', N'sgda', 22)
SET IDENTITY_INSERT [dbo].[Rechept] OFF
GO
ALTER TABLE [dbo].[Gospital]  WITH CHECK ADD  CONSTRAINT [FK_Gospital_Otdel] FOREIGN KEY([Otdelenie])
REFERENCES [dbo].[Otdel] ([Id])
GO
ALTER TABLE [dbo].[Gospital] CHECK CONSTRAINT [FK_Gospital_Otdel]
GO
ALTER TABLE [dbo].[Gospital]  WITH CHECK ADD  CONSTRAINT [FK_History_Pacient] FOREIGN KEY([PacientId])
REFERENCES [dbo].[Pacient] ([Id])
GO
ALTER TABLE [dbo].[Gospital] CHECK CONSTRAINT [FK_History_Pacient]
GO
ALTER TABLE [dbo].[Places]  WITH CHECK ADD  CONSTRAINT [FK_Places_Doctor] FOREIGN KEY([DoctorId])
REFERENCES [dbo].[Doctor] ([Id])
GO
ALTER TABLE [dbo].[Places] CHECK CONSTRAINT [FK_Places_Doctor]
GO
ALTER TABLE [dbo].[Places]  WITH CHECK ADD  CONSTRAINT [FK_Places_Meropriation] FOREIGN KEY([TipId])
REFERENCES [dbo].[Meropriation] ([Id])
GO
ALTER TABLE [dbo].[Places] CHECK CONSTRAINT [FK_Places_Meropriation]
GO
ALTER TABLE [dbo].[Places]  WITH CHECK ADD  CONSTRAINT [FK_Places_Pacient] FOREIGN KEY([PacientId])
REFERENCES [dbo].[Pacient] ([Id])
GO
ALTER TABLE [dbo].[Places] CHECK CONSTRAINT [FK_Places_Pacient]
GO
ALTER TABLE [dbo].[Rechept]  WITH CHECK ADD  CONSTRAINT [FK_Rechept_Places] FOREIGN KEY([PlacesId])
REFERENCES [dbo].[Places] ([Id])
GO
ALTER TABLE [dbo].[Rechept] CHECK CONSTRAINT [FK_Rechept_Places]
GO
USE [master]
GO
ALTER DATABASE [WorldSkills2024DB] SET  READ_WRITE 
GO
