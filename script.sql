USE [master]
GO
ALTER DATABASE [DBWorldSkillsRegNew] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DBWorldSkillsRegNew] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DBWorldSkillsRegNew] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DBWorldSkillsRegNew] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DBWorldSkillsRegNew] SET ARITHABORT OFF 
GO
ALTER DATABASE [DBWorldSkillsRegNew] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DBWorldSkillsRegNew] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DBWorldSkillsRegNew] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DBWorldSkillsRegNew] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DBWorldSkillsRegNew] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DBWorldSkillsRegNew] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DBWorldSkillsRegNew] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DBWorldSkillsRegNew] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DBWorldSkillsRegNew] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DBWorldSkillsRegNew] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DBWorldSkillsRegNew] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DBWorldSkillsRegNew] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DBWorldSkillsRegNew] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DBWorldSkillsRegNew] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DBWorldSkillsRegNew] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DBWorldSkillsRegNew] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DBWorldSkillsRegNew] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DBWorldSkillsRegNew] SET RECOVERY FULL 
GO
ALTER DATABASE [DBWorldSkillsRegNew] SET  MULTI_USER 
GO
ALTER DATABASE [DBWorldSkillsRegNew] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DBWorldSkillsRegNew] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DBWorldSkillsRegNew] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DBWorldSkillsRegNew] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DBWorldSkillsRegNew] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DBWorldSkillsRegNew] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'DBWorldSkillsRegNew', N'ON'
GO
ALTER DATABASE [DBWorldSkillsRegNew] SET QUERY_STORE = ON
GO
ALTER DATABASE [DBWorldSkillsRegNew] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [DBWorldSkillsRegNew]
GO
/****** Object:  Table [dbo].[Diagnozs]    Script Date: 01.03.2024 21:10:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Diagnozs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Diagnozs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Doctors]    Script Date: 01.03.2024 21:10:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doctors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Surname] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[Otech] [nvarchar](50) NULL,
	[OtdelId] [int] NULL,
 CONSTRAINT [PK_Doctors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gospitals]    Script Date: 01.03.2024 21:10:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gospitals](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Chel] [nvarchar](50) NULL,
	[OtdelId] [int] NULL,
	[YslovieId] [int] NULL,
	[DateStart] [date] NULL,
	[DateEnd] [date] NULL,
	[PacientId] [int] NULL,
	[canPrich] [bit] NULL,
	[Prich] [nvarchar](50) NULL,
	[DoctorId] [int] NULL,
 CONSTRAINT [PK_Gospitals] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Meropriations]    Script Date: 01.03.2024 21:10:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Meropriations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Meropriations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Otdels]    Script Date: 01.03.2024 21:10:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Otdels](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Otdels] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pacient]    Script Date: 01.03.2024 21:10:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pacient](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Surname] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[Otech] [nvarchar](50) NULL,
	[Pasport] [nvarchar](50) NULL,
	[DateBorn] [date] NULL,
	[PolId] [int] NULL,
	[Adress] [nvarchar](100) NULL,
	[Phone] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[NumCard] [nvarchar](50) NULL,
	[DateCard] [date] NULL,
	[DateLast] [date] NULL,
	[DateNext] [date] NULL,
	[Polis] [nvarchar](50) NULL,
	[DateEndPolic] [date] NULL,
	[DiagnozId] [int] NULL,
	[Photo] [image] NULL,
 CONSTRAINT [PK_Pacient] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Places]    Script Date: 01.03.2024 21:10:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Places](
	[Id] [int] NOT NULL,
	[PacientId] [int] NULL,
	[Date] [date] NULL,
	[DoctorId] [int] NULL,
	[TipId] [int] NULL,
	[MeropriationId] [int] NULL,
	[ResultId] [int] NULL,
	[Recomidation] [nvarchar](50) NULL,
 CONSTRAINT [PK_Places] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pols]    Script Date: 01.03.2024 21:10:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pols](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Pols] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rapisan]    Script Date: 01.03.2024 21:10:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rapisan](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DoctorId] [int] NULL,
	[Date] [date] NULL,
	[Time] [time](7) NULL,
	[Spech] [bit] NULL,
	[CanUse] [bit] NULL,
	[UserGot] [bit] NULL,
 CONSTRAINT [PK_Rapisan] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rechepts]    Script Date: 01.03.2024 21:10:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rechepts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[GospitalId] [int] NULL,
 CONSTRAINT [PK_Rechepts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reesults]    Script Date: 01.03.2024 21:10:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reesults](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
 CONSTRAINT [PK_Reesults] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tips]    Script Date: 01.03.2024 21:10:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tips](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Tips] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Yslovies]    Script Date: 01.03.2024 21:10:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Yslovies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Yslovies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Zapic]    Script Date: 01.03.2024 21:10:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Zapic](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PacientId] [int] NULL,
	[RaspisanId] [int] NULL,
	[Predvar] [bit] NULL,
 CONSTRAINT [PK_Zapic_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Diagnozs] ON 

INSERT [dbo].[Diagnozs] ([Id], [Name]) VALUES (1, N'Аллергия на пыльцу')
INSERT [dbo].[Diagnozs] ([Id], [Name]) VALUES (2, N'Ангина')
INSERT [dbo].[Diagnozs] ([Id], [Name]) VALUES (3, N'Артрит')
INSERT [dbo].[Diagnozs] ([Id], [Name]) VALUES (4, N'Астма')
INSERT [dbo].[Diagnozs] ([Id], [Name]) VALUES (5, N'Гастрит')
INSERT [dbo].[Diagnozs] ([Id], [Name]) VALUES (6, N'Геморрой')
INSERT [dbo].[Diagnozs] ([Id], [Name]) VALUES (7, N'Гепатит C')
INSERT [dbo].[Diagnozs] ([Id], [Name]) VALUES (8, N'Гипертония')
INSERT [dbo].[Diagnozs] ([Id], [Name]) VALUES (9, N'Грипп')
INSERT [dbo].[Diagnozs] ([Id], [Name]) VALUES (10, N'Диабет 1 типа')
INSERT [dbo].[Diagnozs] ([Id], [Name]) VALUES (11, N'Ожирение')
INSERT [dbo].[Diagnozs] ([Id], [Name]) VALUES (12, N'Онкология легких')
INSERT [dbo].[Diagnozs] ([Id], [Name]) VALUES (13, N'Остеохондроз')
INSERT [dbo].[Diagnozs] ([Id], [Name]) VALUES (14, N'Панкреатит')
INSERT [dbo].[Diagnozs] ([Id], [Name]) VALUES (15, N'Псориаз')
INSERT [dbo].[Diagnozs] ([Id], [Name]) VALUES (16, N'Туберкулез')
INSERT [dbo].[Diagnozs] ([Id], [Name]) VALUES (17, N'Цистит')
INSERT [dbo].[Diagnozs] ([Id], [Name]) VALUES (18, N'Шизофрения')
INSERT [dbo].[Diagnozs] ([Id], [Name]) VALUES (19, N'Эпилепсия')
INSERT [dbo].[Diagnozs] ([Id], [Name]) VALUES (20, N'Язва желудка')
SET IDENTITY_INSERT [dbo].[Diagnozs] OFF
GO
SET IDENTITY_INSERT [dbo].[Doctors] ON 

INSERT [dbo].[Doctors] ([Id], [Surname], [Name], [Otech], [OtdelId]) VALUES (1, N'Егорова', N'София', N'Владимировна', 8)
INSERT [dbo].[Doctors] ([Id], [Surname], [Name], [Otech], [OtdelId]) VALUES (2, N'Терентьев', N'Фёдор', N'Фёдорович', 3)
INSERT [dbo].[Doctors] ([Id], [Surname], [Name], [Otech], [OtdelId]) VALUES (3, N'Романов', N'Борис', N'Львович', 1)
INSERT [dbo].[Doctors] ([Id], [Surname], [Name], [Otech], [OtdelId]) VALUES (4, N'Крылов', N'Василий', N'Максимович', 8)
INSERT [dbo].[Doctors] ([Id], [Surname], [Name], [Otech], [OtdelId]) VALUES (5, N'Назаров', N'Бронислав', N'Александрович', 6)
INSERT [dbo].[Doctors] ([Id], [Surname], [Name], [Otech], [OtdelId]) VALUES (6, N'Самсонова', N'Лада', N'Львовна', 2)
INSERT [dbo].[Doctors] ([Id], [Surname], [Name], [Otech], [OtdelId]) VALUES (7, N'Архипова', N'Екатерина', N'Борисовна', 3)
INSERT [dbo].[Doctors] ([Id], [Surname], [Name], [Otech], [OtdelId]) VALUES (8, N'Мельникова', N'Кристина', N'Романовна', 8)
INSERT [dbo].[Doctors] ([Id], [Surname], [Name], [Otech], [OtdelId]) VALUES (9, N'Горшков', N'Всеволод', N'Сергеевич', 4)
INSERT [dbo].[Doctors] ([Id], [Surname], [Name], [Otech], [OtdelId]) VALUES (10, N'Терентьев', N'Ефим', N'Иванович', 8)
INSERT [dbo].[Doctors] ([Id], [Surname], [Name], [Otech], [OtdelId]) VALUES (11, N'Фомичёва', N'Капитолина', N'Владимировна', 5)
INSERT [dbo].[Doctors] ([Id], [Surname], [Name], [Otech], [OtdelId]) VALUES (12, N'Белоусов', N'Ян', N'Александрович', 3)
INSERT [dbo].[Doctors] ([Id], [Surname], [Name], [Otech], [OtdelId]) VALUES (13, N'Фролов', N'Иннокентий', N'Андреевич', 8)
INSERT [dbo].[Doctors] ([Id], [Surname], [Name], [Otech], [OtdelId]) VALUES (14, N'Ильин', N'Сава', N'Владимирович', 9)
INSERT [dbo].[Doctors] ([Id], [Surname], [Name], [Otech], [OtdelId]) VALUES (15, N'Соболев', N'Матвей', N'Борисович', 8)
INSERT [dbo].[Doctors] ([Id], [Surname], [Name], [Otech], [OtdelId]) VALUES (16, N'Никифоров', N'Владимир', N'Андреевич', 3)
INSERT [dbo].[Doctors] ([Id], [Surname], [Name], [Otech], [OtdelId]) VALUES (17, N'Чернов', N'Тарас', N'Александрович', 9)
INSERT [dbo].[Doctors] ([Id], [Surname], [Name], [Otech], [OtdelId]) VALUES (18, N'Якушев', N'Феликс', N'Алексеевич', 3)
INSERT [dbo].[Doctors] ([Id], [Surname], [Name], [Otech], [OtdelId]) VALUES (19, N'Рябов', N'Станислав', N'Алексеевич', 7)
INSERT [dbo].[Doctors] ([Id], [Surname], [Name], [Otech], [OtdelId]) VALUES (20, N'Воронов', N'Виктор', N'Андреевич', 8)
INSERT [dbo].[Doctors] ([Id], [Surname], [Name], [Otech], [OtdelId]) VALUES (21, N'Соболева', N'Алла', N'Алексеевна', 1)
INSERT [dbo].[Doctors] ([Id], [Surname], [Name], [Otech], [OtdelId]) VALUES (22, N'Степанов', N'Евгений', N'Владимирович', 7)
INSERT [dbo].[Doctors] ([Id], [Surname], [Name], [Otech], [OtdelId]) VALUES (23, N'Беляев', N'Захар', N'Владимирович', 8)
INSERT [dbo].[Doctors] ([Id], [Surname], [Name], [Otech], [OtdelId]) VALUES (24, N'Давыдова', N'Инга', N'Владимировна', 4)
INSERT [dbo].[Doctors] ([Id], [Surname], [Name], [Otech], [OtdelId]) VALUES (25, N'Исаков', N'Аркадий', N'Андреевич', 8)
INSERT [dbo].[Doctors] ([Id], [Surname], [Name], [Otech], [OtdelId]) VALUES (26, N'Алексеева', N'Евгения', N'Евгеньевна', 8)
INSERT [dbo].[Doctors] ([Id], [Surname], [Name], [Otech], [OtdelId]) VALUES (27, N'Крахмальников', N'Илья', N'Артемович', 10)
INSERT [dbo].[Doctors] ([Id], [Surname], [Name], [Otech], [OtdelId]) VALUES (28, N'Иванов', N'Иван', N'Иванович', 11)
INSERT [dbo].[Doctors] ([Id], [Surname], [Name], [Otech], [OtdelId]) VALUES (29, N'Попов', N'Алеша', N'Иванов', 12)
SET IDENTITY_INSERT [dbo].[Doctors] OFF
GO
SET IDENTITY_INSERT [dbo].[Gospitals] ON 

INSERT [dbo].[Gospitals] ([Id], [Chel], [OtdelId], [YslovieId], [DateStart], [DateEnd], [PacientId], [canPrich], [Prich], [DoctorId]) VALUES (1, N'chel1', 1, 1, CAST(N'2024-05-03' AS Date), CAST(N'2024-05-03' AS Date), 1, 1, N'prich1', 1)
INSERT [dbo].[Gospitals] ([Id], [Chel], [OtdelId], [YslovieId], [DateStart], [DateEnd], [PacientId], [canPrich], [Prich], [DoctorId]) VALUES (2, N'chel2', 2, 2, CAST(N'2024-05-04' AS Date), CAST(N'2024-05-04' AS Date), 4, 1, N'prich2', 2)
INSERT [dbo].[Gospitals] ([Id], [Chel], [OtdelId], [YslovieId], [DateStart], [DateEnd], [PacientId], [canPrich], [Prich], [DoctorId]) VALUES (3, N'chel3', 3, 1, CAST(N'2024-05-05' AS Date), CAST(N'2024-05-05' AS Date), 7, 1, N'prich3', 3)
INSERT [dbo].[Gospitals] ([Id], [Chel], [OtdelId], [YslovieId], [DateStart], [DateEnd], [PacientId], [canPrich], [Prich], [DoctorId]) VALUES (4, N'chel4', 4, 2, CAST(N'2024-05-06' AS Date), CAST(N'2024-05-06' AS Date), 10, 0, NULL, 4)
INSERT [dbo].[Gospitals] ([Id], [Chel], [OtdelId], [YslovieId], [DateStart], [DateEnd], [PacientId], [canPrich], [Prich], [DoctorId]) VALUES (5, N'chel5', 5, 2, CAST(N'2024-05-07' AS Date), CAST(N'2024-05-07' AS Date), 13, 0, NULL, 5)
INSERT [dbo].[Gospitals] ([Id], [Chel], [OtdelId], [YslovieId], [DateStart], [DateEnd], [PacientId], [canPrich], [Prich], [DoctorId]) VALUES (6, N'chel6', 6, 2, CAST(N'2024-05-08' AS Date), CAST(N'2024-05-08' AS Date), 16, 0, NULL, 6)
INSERT [dbo].[Gospitals] ([Id], [Chel], [OtdelId], [YslovieId], [DateStart], [DateEnd], [PacientId], [canPrich], [Prich], [DoctorId]) VALUES (7, N'chel7', 7, 2, CAST(N'2024-05-09' AS Date), CAST(N'2024-05-09' AS Date), 19, 0, NULL, 7)
INSERT [dbo].[Gospitals] ([Id], [Chel], [OtdelId], [YslovieId], [DateStart], [DateEnd], [PacientId], [canPrich], [Prich], [DoctorId]) VALUES (8, N'chel8', 8, 1, CAST(N'2024-05-10' AS Date), CAST(N'2024-05-10' AS Date), 22, 0, NULL, 8)
INSERT [dbo].[Gospitals] ([Id], [Chel], [OtdelId], [YslovieId], [DateStart], [DateEnd], [PacientId], [canPrich], [Prich], [DoctorId]) VALUES (9, N'chel9', 9, 2, CAST(N'2024-05-09' AS Date), CAST(N'2024-05-11' AS Date), 25, 0, NULL, 9)
INSERT [dbo].[Gospitals] ([Id], [Chel], [OtdelId], [YslovieId], [DateStart], [DateEnd], [PacientId], [canPrich], [Prich], [DoctorId]) VALUES (10, N'chel10', 1, 1, CAST(N'2024-05-03' AS Date), CAST(N'2024-05-12' AS Date), 28, 1, N'prich1', 10)
INSERT [dbo].[Gospitals] ([Id], [Chel], [OtdelId], [YslovieId], [DateStart], [DateEnd], [PacientId], [canPrich], [Prich], [DoctorId]) VALUES (11, N'chel11', 2, 2, CAST(N'2024-05-04' AS Date), CAST(N'2024-05-13' AS Date), 31, 0, NULL, 11)
INSERT [dbo].[Gospitals] ([Id], [Chel], [OtdelId], [YslovieId], [DateStart], [DateEnd], [PacientId], [canPrich], [Prich], [DoctorId]) VALUES (12, N'chel12', 3, 1, CAST(N'2024-05-05' AS Date), CAST(N'2024-05-14' AS Date), 34, 1, N'prich3', 12)
INSERT [dbo].[Gospitals] ([Id], [Chel], [OtdelId], [YslovieId], [DateStart], [DateEnd], [PacientId], [canPrich], [Prich], [DoctorId]) VALUES (13, N'chel13', 4, 2, CAST(N'2024-05-06' AS Date), CAST(N'2024-05-15' AS Date), 37, 1, N'prich4', 13)
INSERT [dbo].[Gospitals] ([Id], [Chel], [OtdelId], [YslovieId], [DateStart], [DateEnd], [PacientId], [canPrich], [Prich], [DoctorId]) VALUES (14, N'chel14', 5, 1, CAST(N'2024-05-07' AS Date), CAST(N'2024-05-16' AS Date), 40, 1, N'prich5', 14)
INSERT [dbo].[Gospitals] ([Id], [Chel], [OtdelId], [YslovieId], [DateStart], [DateEnd], [PacientId], [canPrich], [Prich], [DoctorId]) VALUES (15, N'chel15', 6, 1, CAST(N'2024-05-08' AS Date), CAST(N'2024-05-17' AS Date), 43, 0, NULL, 15)
INSERT [dbo].[Gospitals] ([Id], [Chel], [OtdelId], [YslovieId], [DateStart], [DateEnd], [PacientId], [canPrich], [Prich], [DoctorId]) VALUES (16, N'chel16', 7, 2, CAST(N'2024-05-09' AS Date), CAST(N'2024-05-18' AS Date), 46, 1, N'prich7', 16)
INSERT [dbo].[Gospitals] ([Id], [Chel], [OtdelId], [YslovieId], [DateStart], [DateEnd], [PacientId], [canPrich], [Prich], [DoctorId]) VALUES (17, N'chel17', 8, 2, CAST(N'2024-05-10' AS Date), CAST(N'2024-05-19' AS Date), 49, 1, N'prich8', 17)
INSERT [dbo].[Gospitals] ([Id], [Chel], [OtdelId], [YslovieId], [DateStart], [DateEnd], [PacientId], [canPrich], [Prich], [DoctorId]) VALUES (18, N'chel18', 9, 1, CAST(N'2024-05-11' AS Date), CAST(N'2024-05-20' AS Date), 52, 1, N'prich9', 18)
INSERT [dbo].[Gospitals] ([Id], [Chel], [OtdelId], [YslovieId], [DateStart], [DateEnd], [PacientId], [canPrich], [Prich], [DoctorId]) VALUES (19, N'chel19', 1, 2, CAST(N'2024-05-12' AS Date), CAST(N'2024-05-21' AS Date), 55, 0, NULL, 19)
INSERT [dbo].[Gospitals] ([Id], [Chel], [OtdelId], [YslovieId], [DateStart], [DateEnd], [PacientId], [canPrich], [Prich], [DoctorId]) VALUES (20, N'chel20', 2, 1, CAST(N'2024-05-13' AS Date), CAST(N'2024-05-22' AS Date), 58, 1, N'prich11', 20)
SET IDENTITY_INSERT [dbo].[Gospitals] OFF
GO
SET IDENTITY_INSERT [dbo].[Meropriations] ON 

INSERT [dbo].[Meropriations] ([Id], [Name]) VALUES (1, N'Анализ крови')
INSERT [dbo].[Meropriations] ([Id], [Name]) VALUES (2, N'анализ мочи')
INSERT [dbo].[Meropriations] ([Id], [Name]) VALUES (3, N'Аппендэктомия')
INSERT [dbo].[Meropriations] ([Id], [Name]) VALUES (4, N'Биопсия тканей')
INSERT [dbo].[Meropriations] ([Id], [Name]) VALUES (5, N'Биохимический анализ крови')
INSERT [dbo].[Meropriations] ([Id], [Name]) VALUES (6, N'Внутривенные капельницы')
INSERT [dbo].[Meropriations] ([Id], [Name]) VALUES (7, N'Вскрытие абсцесса')
INSERT [dbo].[Meropriations] ([Id], [Name]) VALUES (8, N'Глюкозотолерантный тест')
INSERT [dbo].[Meropriations] ([Id], [Name]) VALUES (9, N'Ингаляции бронходилатирующими препаратами')
INSERT [dbo].[Meropriations] ([Id], [Name]) VALUES (10, N'Инъекции')
INSERT [dbo].[Meropriations] ([Id], [Name]) VALUES (11, N'Лазеротерапия')
INSERT [dbo].[Meropriations] ([Id], [Name]) VALUES (12, N'Массаж')
INSERT [dbo].[Meropriations] ([Id], [Name]) VALUES (13, N'общий анализ крови')
INSERT [dbo].[Meropriations] ([Id], [Name]) VALUES (14, N'Рентгенография')
INSERT [dbo].[Meropriations] ([Id], [Name]) VALUES (15, N'УЗИ')
INSERT [dbo].[Meropriations] ([Id], [Name]) VALUES (16, N'Ультразвуковая терапия')
INSERT [dbo].[Meropriations] ([Id], [Name]) VALUES (17, N'Ультрафонофорез')
INSERT [dbo].[Meropriations] ([Id], [Name]) VALUES (18, N'Холецистэктомия')
INSERT [dbo].[Meropriations] ([Id], [Name]) VALUES (19, N'ЭКГ')
INSERT [dbo].[Meropriations] ([Id], [Name]) VALUES (20, N'Электротерапия')
INSERT [dbo].[Meropriations] ([Id], [Name]) VALUES (21, N'Эндоваскулярные вмешательства')
SET IDENTITY_INSERT [dbo].[Meropriations] OFF
GO
SET IDENTITY_INSERT [dbo].[Otdels] ON 

INSERT [dbo].[Otdels] ([Id], [Name]) VALUES (1, N'гинеколог')
INSERT [dbo].[Otdels] ([Id], [Name]) VALUES (2, N'дерматолог')
INSERT [dbo].[Otdels] ([Id], [Name]) VALUES (3, N'кардиолог')
INSERT [dbo].[Otdels] ([Id], [Name]) VALUES (4, N'лор')
INSERT [dbo].[Otdels] ([Id], [Name]) VALUES (5, N'маммолог')
INSERT [dbo].[Otdels] ([Id], [Name]) VALUES (6, N'нарколог')
INSERT [dbo].[Otdels] ([Id], [Name]) VALUES (7, N'окулист')
INSERT [dbo].[Otdels] ([Id], [Name]) VALUES (8, N'терапевт')
INSERT [dbo].[Otdels] ([Id], [Name]) VALUES (9, N'хирург')
INSERT [dbo].[Otdels] ([Id], [Name]) VALUES (10, N'admin')
INSERT [dbo].[Otdels] ([Id], [Name]) VALUES (11, N'register')
INSERT [dbo].[Otdels] ([Id], [Name]) VALUES (12, N'main')
SET IDENTITY_INSERT [dbo].[Otdels] OFF
GO
SET IDENTITY_INSERT [dbo].[Pacient] ON 

INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (1, N'Чернова', N'Ольга', N'Фёдоровна', N'97338208', CAST(N'1951-05-03' AS Date), 1, N' Пензенская область город Раменское пр.  года ', N'79084745631', N'koseleva.lev@example.com', N'11', CAST(N'2024-12-03' AS Date), CAST(N'2023-12-20' AS Date), CAST(N'2024-03-24' AS Date), N'5716984734114440', CAST(N'2024-06-09' AS Date), 19, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (2, N'Пономарёв', N'Вениамин', N'Максимович', N'63747579', CAST(N'2008-02-04' AS Date), 2, N' Костромская область город Кашира наб. Чехова ', N'79514708604', N'wkononov@example.net', N'81', CAST(N'2019-04-22' AS Date), CAST(N'2023-01-23' AS Date), CAST(N'2024-01-29' AS Date), N'2318850227244520', CAST(N'2024-08-08' AS Date), 20, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (3, N'Орехов', N'Донат', N'Алексеевич', N'46164806', CAST(N'1983-06-08' AS Date), 2, N' Белгородская область город Видное проезд Бухарестская ', N'79635523511', N'bkotov@example.net', N'378', CAST(N'2021-07-25' AS Date), CAST(N'2023-11-13' AS Date), CAST(N'2024-03-08' AS Date), N'9040888971138740', CAST(N'2024-02-20' AS Date), 1, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (4, N'Орехов', N'Святослав', N'Сергеевич', N'24344022', CAST(N'1974-04-21' AS Date), 2, N' Кемеровская область город Сергиев Посад въезд Домодедовская ', N'79509370731', N'anfisa64@example.com', N'371', CAST(N'2021-09-17' AS Date), CAST(N'2023-01-04' AS Date), CAST(N'2024-05-28' AS Date), N'4954483510367120', CAST(N'2024-11-28' AS Date), 6, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (5, N'Якушева', N'Нина', N'Сергеевна', N'96953328', CAST(N'1993-10-12' AS Date), 1, N' Самарская область город Воскресенск въезд  года ', N'79687265825', N'vasilisa94@example.net', N'340', CAST(N'2017-08-25' AS Date), CAST(N'2023-11-28' AS Date), CAST(N'2024-12-16' AS Date), N'2568989139586630', CAST(N'2024-07-06' AS Date), 17, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (6, N'Крылов', N'Рафаил', N'Александрович', N'12666812', CAST(N'1983-05-28' AS Date), 2, N' Астраханская область город Кашира бульвар Ладыгина ', N'79667513339', N'vladimirov.klara@example.com', N'220', CAST(N'2019-04-17' AS Date), CAST(N'2023-02-01' AS Date), CAST(N'2024-05-15' AS Date), N'4603012424493280', CAST(N'2024-03-05' AS Date), 7, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (7, N'Быков', N'Спартак', N'Александрович', N'13922901', CAST(N'1970-04-02' AS Date), 2, N' Ивановская область город Егорьевск пер. Гагарина ', N'79643278780', N'ygerasimova@example.net', N'443', CAST(N'2024-05-26' AS Date), CAST(N'2023-12-06' AS Date), CAST(N'2024-03-01' AS Date), N'6913118615362320', CAST(N'2025-05-05' AS Date), 19, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (8, N'Исаков', N'Егор', N'Андреевич', N'38747843', CAST(N'1993-03-13' AS Date), 2, N' Новосибирская область город Раменское шоссе Ломоносова ', N'79001617026', N'ulia.kalinin@example.org', N'141', CAST(N'2024-11-02' AS Date), CAST(N'2023-12-06' AS Date), CAST(N'2025-01-05' AS Date), N'9282171615503470', CAST(N'2024-03-25' AS Date), 7, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (9, N'Александрова', N'Ксения', N'Фёдоровна', N'25939657', CAST(N'1948-06-16' AS Date), 1, N' Московская область город Домодедово пл. Ленина ', N'79092574401', N'cagafonov@example.org', N'401', CAST(N'2022-04-30' AS Date), CAST(N'2023-01-05' AS Date), CAST(N'2025-05-26' AS Date), N'2775917495679610', CAST(N'2024-04-13' AS Date), 13, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (10, N'Мамонтов', N'Андрей', N'Александрович', N'63483134', CAST(N'1987-08-19' AS Date), 2, N' Тульская область город Наро-Фоминск шоссе Сталина ', N'79538688291', N'gprohorova@example.org', N'72', CAST(N'2024-08-06' AS Date), CAST(N'2023-01-09' AS Date), CAST(N'2024-05-05' AS Date), N'3016100991226370', CAST(N'2024-03-22' AS Date), 2, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (11, N'Кириллова', N'Екатерина', N'Андреевна', N'19247131', CAST(N'1955-11-07' AS Date), 1, N' Курганская область город Мытищи пл. Космонавтов ', N'79688795110', N'klementina.belozerov@example.com', N'466', CAST(N'2020-06-17' AS Date), CAST(N'2023-12-23' AS Date), CAST(N'2024-02-20' AS Date), N'5663065961557730', CAST(N'2024-02-10' AS Date), 8, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (12, N'Бобылёв', N'Лаврентий', N'Евгеньевич', N'63581992', CAST(N'1985-11-04' AS Date), 2, N' Брянская область город Мытищи шоссе Ладыгина ', N'79048029137', N'rabova.faina@example.net', N'193', CAST(N'2024-10-03' AS Date), CAST(N'2023-01-20' AS Date), CAST(N'2024-09-22' AS Date), N'1338733778992010', CAST(N'2029-06-22' AS Date), 15, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (13, N'Тарасова', N'Алла', N'Борисовна', N'63993298', CAST(N'1960-03-13' AS Date), 1, N' Магаданская область город Пушкино проезд Гагарина ', N'79529610008', N'lsorokina@example.org', N'418', CAST(N'2020-08-31' AS Date), CAST(N'2023-11-03' AS Date), CAST(N'2025-01-29' AS Date), N'1961095661756950', CAST(N'2024-10-06' AS Date), 15, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (14, N'Савина', N'Жанна', N'Дмитриевна', N'56390892', CAST(N'1981-11-29' AS Date), 1, N' Архангельская область город Москва пл. Ломоносова ', N'79632097045', N'klavdia.kulagin@example.org', N'274', CAST(N'2017-05-28' AS Date), CAST(N'2023-12-20' AS Date), CAST(N'2024-07-16' AS Date), N'1605707875339680', CAST(N'2025-12-13' AS Date), 16, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (15, N'Щукина', N'Ксения', N'Андреевна', N'47054301', CAST(N'1966-04-02' AS Date), 1, N' Вологодская область город Люберцы пл. Домодедовская ', N'79091023609', N'spartak.sergeev@example.com', N'171', CAST(N'2022-03-27' AS Date), CAST(N'2023-01-15' AS Date), CAST(N'2024-07-17' AS Date), N'2813822267443420', CAST(N'2029-08-12' AS Date), 11, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (16, N'Сафонова', N'Галина', N'Андреевна', N'62273335', CAST(N'1997-07-20' AS Date), 1, N' Мурманская область город Наро-Фоминск наб. Ломоносова ', N'79537012045', N'zoa.loginov@example.net', N'80', CAST(N'2020-11-25' AS Date), CAST(N'2023-01-23' AS Date), CAST(N'2024-07-08' AS Date), N'6292384776326130', CAST(N'2024-12-13' AS Date), 5, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (17, N'Константинов', N'Вадим', N'Евгеньевич', N'20093946', CAST(N'1992-01-10' AS Date), 2, N' Ростовская область город Волоколамск пл. Ленина ', N'79088870910', N'kuzmina.boleslav@example.org', N'418', CAST(N'2021-10-03' AS Date), CAST(N'2023-12-01' AS Date), CAST(N'2024-09-10' AS Date), N'2475197445808290', CAST(N'2025-04-03' AS Date), 5, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (18, N'Прохорова', N'Изабелла', N'Александровна', N'31930893', CAST(N'1963-07-12' AS Date), 1, N' Псковская область город Домодедово шоссе Домодедовская ', N'79093023162', N'elena.emelanov@example.com', N'206', CAST(N'2020-09-22' AS Date), CAST(N'2023-01-20' AS Date), CAST(N'2024-09-22' AS Date), N'4197070210989320', CAST(N'2024-04-11' AS Date), 11, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (19, N'Макаров', N'Станислав', N'Алексеевич', N'49742918', CAST(N'1987-01-26' AS Date), 2, N' Белгородская область город Кашира проезд Ленина ', N'79021123515', N'odincova.radislav@example.com', N'245', CAST(N'2019-08-19' AS Date), CAST(N'2023-02-01' AS Date), CAST(N'2024-07-04' AS Date), N'6387968618897410', CAST(N'2029-05-11' AS Date), 4, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (20, N'Воронов', N'Тарас', N'Фёдорович', N'33296071', CAST(N'1948-04-26' AS Date), 2, N' Костромская область город Серебряные Пруды пл. Балканская ', N'79004312581', N'pahomova.albert@example.net', N'474', CAST(N'2022-09-07' AS Date), CAST(N'2023-12-09' AS Date), CAST(N'2024-12-22' AS Date), N'5328862286529860', CAST(N'2024-03-30' AS Date), 10, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (21, N'Андреев', N'Август', N'Иванович', N'86253929', CAST(N'1962-02-01' AS Date), 2, N' Ярославская область город Ногинск бульвар Домодедовская ', N'79021312012', N'anna.blohina@example.org', N'248', CAST(N'2020-07-07' AS Date), CAST(N'2023-12-10' AS Date), CAST(N'2024-01-19' AS Date), N'2866090055205260', CAST(N'2024-12-23' AS Date), 18, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (22, N'Романова', N'Альбина', N'Романовна', N'92406119', CAST(N'2005-05-27' AS Date), 1, N' Вологодская область город Павловский Посад бульвар Бухарестская ', N'79682622685', N'kulagina.lada@example.org', N'223', CAST(N'2018-10-11' AS Date), CAST(N'2023-11-05' AS Date), CAST(N'2024-07-19' AS Date), N'9492866012059500', CAST(N'2024-10-20' AS Date), 20, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (23, N'Логинова', N'Татьяна', N'Романовна', N'93507052', CAST(N'1999-03-13' AS Date), 1, N' Ярославская область город Чехов проезд Балканская ', N'79517303933', N'bpetuhov@example.org', N'208', CAST(N'2021-10-08' AS Date), CAST(N'2023-11-23' AS Date), CAST(N'2034-05-04' AS Date), N'7443217785515360', CAST(N'2031-08-06' AS Date), 3, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (24, N'Соловьёва', N'Лидия', N'Романовна', N'97001867', CAST(N'1956-01-27' AS Date), 1, N' Вологодская область город Луховицы пл. Бухарестская ', N'79098418931', N'trofimova.nika@example.com', N'403', CAST(N'2021-09-20' AS Date), CAST(N'2023-11-19' AS Date), CAST(N'2024-07-13' AS Date), N'2939118283850300', CAST(N'2024-06-07' AS Date), 19, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (25, N'Миронова', N'Кристина', N'Максимовна', N'35474748', CAST(N'1995-08-20' AS Date), 1, N' Курская область город Озёры бульвар Славы ', N'79674253393', N'lusa48@example.net', N'482', CAST(N'2019-12-02' AS Date), CAST(N'2023-11-14' AS Date), CAST(N'2024-10-10' AS Date), N'6304091047753610', CAST(N'2029-05-24' AS Date), 13, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (26, N'Лобанов', N'Игнат', N'Дмитриевич', N'46497598', CAST(N'2008-12-10' AS Date), 2, N' Курская область город Серебряные Пруды шоссе Гагарина ', N'79634536221', N'olesa.vinogradov@example.com', N'396', CAST(N'2021-04-23' AS Date), CAST(N'2023-12-03' AS Date), CAST(N'2024-07-21' AS Date), N'7464142636122860', CAST(N'2024-12-31' AS Date), 12, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (27, N'Хохлов', N'Дмитрий', N'Алексеевич', N'48296505', CAST(N'1983-05-06' AS Date), 2, N' Читинская область город Наро-Фоминск пр. Ладыгина ', N'79681159690', N'gfedoseeva@example.com', N'271', CAST(N'2019-10-24' AS Date), CAST(N'2023-10-31' AS Date), CAST(N'2024-04-22' AS Date), N'8179625235739900', CAST(N'2024-03-17' AS Date), 5, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (28, N'Бобылёв', N'Николай', N'Львович', N'25781835', CAST(N'1949-01-26' AS Date), 2, N' Свердловская область город Лотошино въезд Космонавтов ', N'79004590900', N'albina.blinov@example.org', N'197', CAST(N'2024-05-10' AS Date), CAST(N'2023-11-15' AS Date), CAST(N'2024-10-17' AS Date), N'6227439075731740', CAST(N'2024-08-28' AS Date), 15, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (29, N'Лобанова', N'Изольда', N'Максимовна', N'57515146', CAST(N'1976-11-29' AS Date), 1, N' Магаданская область город Серебряные Пруды ул. Ломоносова ', N'79088312019', N'serbakov.izolda@example.org', N'496', CAST(N'2022-07-01' AS Date), CAST(N'2023-12-24' AS Date), CAST(N'2025-08-20' AS Date), N'5296100143581520', CAST(N'2024-09-23' AS Date), 12, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (30, N'Хохлова', N'Ева', N'Фёдоровна', N'41827864', CAST(N'1958-11-03' AS Date), 1, N' Смоленская область город Пушкино бульвар Будапештсткая ', N'79536342820', N'vinogradov.florentina@example.org', N'314', CAST(N'2017-08-06' AS Date), CAST(N'2023-11-20' AS Date), CAST(N'2025-04-27' AS Date), N'7097140615350110', CAST(N'2024-04-18' AS Date), 13, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (31, N'Морозов', N'Владислав', N'Андреевич', N'59156313', CAST(N'1996-11-24' AS Date), 2, N' Астраханская область город Серпухов спуск Косиора ', N'79027988887', N'rkapustina@example.net', N'318', CAST(N'2016-06-02' AS Date), CAST(N'2023-11-09' AS Date), CAST(N'2024-07-21' AS Date), N'3131127400701210', CAST(N'2024-12-30' AS Date), 10, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (32, N'Кондратьева', N'Изольда', N'Евгеньевна', N'68868789', CAST(N'1954-08-11' AS Date), 1, N' Курская область город Пушкино пр. Ломоносова ', N'79082732151', N'evgenij.filippova@example.net', N'282', CAST(N'2020-03-27' AS Date), CAST(N'2023-01-06' AS Date), CAST(N'2024-07-28' AS Date), N'4225598002866260', CAST(N'2025-08-18' AS Date), 9, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (33, N'Молчанов', N'Иван', N'Александрович', N'26940249', CAST(N'2002-01-07' AS Date), 2, N' Смоленская область город Шатура пер. Космонавтов ', N'79049939749', N'avolkov@example.net', N'357', CAST(N'2020-01-30' AS Date), CAST(N'2023-01-19' AS Date), CAST(N'2024-10-06' AS Date), N'4880108994328300', CAST(N'2024-10-28' AS Date), 12, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (34, N'Белоусова', N'Эмилия', N'Андреевна', N'32404569', CAST(N'2005-09-10' AS Date), 1, N' Московская область город Видное бульвар Славы ', N'79026984133', N'mmolcanova@example.net', N'228', CAST(N'2017-11-01' AS Date), CAST(N'2023-01-01' AS Date), CAST(N'2024-05-25' AS Date), N'5136920781189090', CAST(N'2029-07-02' AS Date), 3, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (35, N'Маслов', N'Пётр', N'Сергеевич', N'29212058', CAST(N'1968-07-23' AS Date), 2, N' Владимирская область город Солнечногорск спуск Космонавтов ', N'79089087727', N'nkononova@example.net', N'488', CAST(N'2020-11-12' AS Date), CAST(N'2023-12-15' AS Date), CAST(N'2024-08-15' AS Date), N'9465537758103680', CAST(N'2031-02-04' AS Date), 20, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (36, N'Кошелев', N'Ефим', N'Максимович', N'32389612', CAST(N'1990-05-06' AS Date), 2, N' Амурская область город Луховицы пл. Сталина ', N'79525870457', N'georgij.gorbunova@example.org', N'437', CAST(N'2018-10-16' AS Date), CAST(N'2023-12-18' AS Date), CAST(N'2025-12-28' AS Date), N'9231170328052320', CAST(N'2024-08-08' AS Date), 9, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (37, N'Емельянова', N'Любовь', N'Ивановна', N'54142024', CAST(N'1971-09-14' AS Date), 1, N' Ульяновская область город Серебряные Пруды ул. Чехова ', N'79002811849', N'regina74@example.com', N'93', CAST(N'2021-07-22' AS Date), CAST(N'2023-01-07' AS Date), CAST(N'2024-06-07' AS Date), N'8271189496887880', CAST(N'2025-09-30' AS Date), 12, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (38, N'Козлова', N'Изольда', N'Евгеньевна', N'89467340', CAST(N'2002-10-15' AS Date), 1, N' Курская область город Шаховская наб. Домодедовская ', N'79654580473', N'gavriil.suvorova@example.net', N'480', CAST(N'2019-12-14' AS Date), CAST(N'2023-01-21' AS Date), CAST(N'2024-01-27' AS Date), N'5052427372342790', CAST(N'2025-09-12' AS Date), 15, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (39, N'Кулаков', N'Радислав', N'Сергеевич', N'18337712', CAST(N'1982-05-21' AS Date), 2, N' Ярославская область город Чехов наб.  года ', N'79049691183', N'inga69@example.com', N'314', CAST(N'2018-10-02' AS Date), CAST(N'2023-01-25' AS Date), CAST(N'2024-10-22' AS Date), N'2658466670025430', CAST(N'2024-03-21' AS Date), 2, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (40, N'Стрелкова', N'Варвара', N'Романовна', N'83386720', CAST(N'1984-08-26' AS Date), 1, N' Ивановская область город Пушкино бульвар Ломоносова ', N'79523843095', N'elvira.rogov@example.com', N'300', CAST(N'2019-09-23' AS Date), CAST(N'2023-12-25' AS Date), CAST(N'2024-08-23' AS Date), N'8240317928105050', CAST(N'2024-10-12' AS Date), 14, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (41, N'Журавлёва', N'Василиса', N'Андреевна', N'94613767', CAST(N'1958-11-04' AS Date), 1, N' Тамбовская область город Москва наб. Балканская ', N'79539679482', N'zuravleva.grigorij@example.net', N'461', CAST(N'2018-08-14' AS Date), CAST(N'2023-11-12' AS Date), CAST(N'2025-10-29' AS Date), N'2643822032153050', CAST(N'2024-06-29' AS Date), 14, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (42, N'Орехова', N'Екатерина', N'Александровна', N'65153409', CAST(N'1994-12-14' AS Date), 1, N' Омская область город Балашиха шоссе Косиора ', N'79688401039', N'naumova.izabella@example.com', N'358', CAST(N'2017-09-30' AS Date), CAST(N'2023-12-03' AS Date), CAST(N'2024-12-04' AS Date), N'9324376169334710', CAST(N'2029-06-27' AS Date), 19, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (43, N'Маркова', N'Зинаида', N'Максимовна', N'45929928', CAST(N'1996-02-19' AS Date), 1, N' Кемеровская область город Видное спуск Чехова ', N'79682326177', N'vnesterova@example.com', N'246', CAST(N'2018-07-14' AS Date), CAST(N'2023-11-01' AS Date), CAST(N'2024-03-26' AS Date), N'6553419865554850', CAST(N'2024-09-17' AS Date), 18, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (44, N'Доронина', N'Раиса', N'Сергеевна', N'28180607', CAST(N'1949-01-20' AS Date), 1, N' Орловская область город Клин спуск  года ', N'79635270407', N'adam41@example.net', N'96', CAST(N'2024-11-08' AS Date), CAST(N'2023-11-12' AS Date), CAST(N'2029-10-29' AS Date), N'4388222019729140', CAST(N'2029-08-29' AS Date), 20, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (45, N'Князев', N'Иван', N'Владимирович', N'98374404', CAST(N'1980-07-27' AS Date), 2, N' Мурманская область город Дмитров пр. Славы ', N'79521953553', N'roman31@example.net', N'243', CAST(N'2022-05-11' AS Date), CAST(N'2023-01-19' AS Date), CAST(N'2025-03-06' AS Date), N'3196481529560000', CAST(N'2025-12-30' AS Date), 7, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (46, N'Журавлёва', N'Регина', N'Алексеевна', N'71589785', CAST(N'2007-11-21' AS Date), 1, N' Пензенская область город Воскресенск пл.  года ', N'79538574778', N'mmatveeva@example.net', N'345', CAST(N'2022-12-17' AS Date), CAST(N'2023-01-08' AS Date), CAST(N'2031-02-28' AS Date), N'2937224476194300', CAST(N'2029-05-26' AS Date), 14, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (47, N'Воробьёва', N'Светлана', N'Дмитриевна', N'51279395', CAST(N'1959-03-19' AS Date), 1, N' Новгородская область город Одинцово наб. Гагарина ', N'79522273352', N'kostin.valentina@example.com', N'342', CAST(N'2018-12-25' AS Date), CAST(N'2023-11-02' AS Date), CAST(N'2024-06-24' AS Date), N'2566767359914620', CAST(N'2024-06-21' AS Date), 12, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (48, N'Комаров', N'Олег', N'Евгеньевич', N'51054273', CAST(N'2006-09-06' AS Date), 2, N' Волгоградская область город Раменское въезд Балканская ', N'79523381369', N'taras25@example.org', N'494', CAST(N'2016-08-16' AS Date), CAST(N'2023-01-08' AS Date), CAST(N'2024-01-12' AS Date), N'9543906403319520', CAST(N'2024-04-09' AS Date), 1, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (49, N'Фёдоров', N'Борис', N'Максимович', N'61071182', CAST(N'1948-08-24' AS Date), 2, N' Омская область город Волоколамск ул. Гагарина ', N'79511457902', N'valentina.bobrov@example.com', N'119', CAST(N'2018-04-12' AS Date), CAST(N'2023-01-03' AS Date), CAST(N'2024-06-15' AS Date), N'3249144341375160', CAST(N'2024-04-04' AS Date), 16, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (50, N'Капустина', N'Антонина', N'Борисовна', N'77262066', CAST(N'1968-05-06' AS Date), 1, N' Сахалинская область город Люберцы шоссе Гоголя ', N'79504158885', N'dara.zykova@example.net', N'280', CAST(N'2017-01-20' AS Date), CAST(N'2023-02-03' AS Date), CAST(N'2024-11-21' AS Date), N'5869933079472170', CAST(N'2025-06-12' AS Date), 17, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (51, N'Исаев', N'Борис', N'Евгеньевич', N'38411605', CAST(N'1954-02-08' AS Date), 2, N' Иркутская область город Воскресенск шоссе Чехова ', N'79673959823', N'margarita19@example.org', N'256', CAST(N'2021-12-29' AS Date), CAST(N'2023-12-10' AS Date), CAST(N'2024-07-13' AS Date), N'2199483348484510', CAST(N'2024-10-22' AS Date), 1, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (52, N'Жданов', N'Герман', N'Максимович', N'73729504', CAST(N'1970-04-18' AS Date), 2, N' Орловская область город Одинцово бульвар Косиора ', N'79048150769', N'anatolij.subbotin@example.org', N'492', CAST(N'2024-06-13' AS Date), CAST(N'2023-11-16' AS Date), CAST(N'2024-04-18' AS Date), N'6263104818841270', CAST(N'2024-03-29' AS Date), 6, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (53, N'Рыбаков', N'Егор', N'Александрович', N'92633714', CAST(N'1981-08-29' AS Date), 2, N' Курганская область город Пушкино наб. Будапештсткая ', N'79633131799', N'nestor.lazareva@example.org', N'55', CAST(N'2019-12-10' AS Date), CAST(N'2023-12-06' AS Date), CAST(N'2024-03-03' AS Date), N'6058439585320110', CAST(N'2025-04-25' AS Date), 4, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (54, N'Яковлева', N'Владлена', N'Андреевна', N'24789880', CAST(N'2008-07-19' AS Date), 1, N' Архангельская область город Подольск ул. Ладыгина ', N'79088709293', N'ifomina@example.net', N'328', CAST(N'2022-09-14' AS Date), CAST(N'2023-12-28' AS Date), CAST(N'2031-08-28' AS Date), N'4404614580879920', CAST(N'2024-01-26' AS Date), 12, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (55, N'Елисеев', N'Ананий', N'Максимович', N'62110265', CAST(N'1987-05-27' AS Date), 2, N' Кировская область город Озёры шоссе Ладыгина ', N'79516942859', N'ykalinina@example.net', N'380', CAST(N'2020-07-02' AS Date), CAST(N'2023-12-17' AS Date), CAST(N'2024-09-05' AS Date), N'5569757074468870', CAST(N'2024-02-20' AS Date), 14, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (56, N'Авдеев', N'Тит', N'Александрович', N'72820891', CAST(N'1950-10-15' AS Date), 2, N' Астраханская область город Зарайск наб. Ломоносова ', N'79684748909', N'marina24@example.org', N'262', CAST(N'2019-10-23' AS Date), CAST(N'2023-12-14' AS Date), CAST(N'2025-10-18' AS Date), N'2909074403632790', CAST(N'2024-08-21' AS Date), 6, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (57, N'Медведев', N'Добрыня', N'Иванович', N'35159868', CAST(N'1963-06-01' AS Date), 2, N' Владимирская область город Пушкино пл. Гагарина ', N'79082799876', N'muhina.dobryna@example.com', N'227', CAST(N'2024-06-12' AS Date), CAST(N'2023-11-07' AS Date), CAST(N'2024-08-25' AS Date), N'7753544714533690', CAST(N'2024-09-06' AS Date), 18, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (58, N'Туров', N'Добрыня', N'Романович', N'56863062', CAST(N'1982-11-26' AS Date), 2, N' Амурская область город Подольск наб. Ломоносова ', N'79687181725', N'miroslav67@example.org', N'169', CAST(N'2020-06-08' AS Date), CAST(N'2023-12-14' AS Date), CAST(N'2024-07-13' AS Date), N'6348526617555730', CAST(N'2024-03-31' AS Date), 6, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (59, N'Давыдов', N'Лаврентий', N'Владимирович', N'72339598', CAST(N'1948-10-21' AS Date), 2, N' Костромская область город Серебряные Пруды наб.  года ', N'79083184844', N'krasilnikova.rodion@example.com', N'39', CAST(N'2018-05-19' AS Date), CAST(N'2023-11-05' AS Date), CAST(N'2031-07-28' AS Date), N'8414616191098190', CAST(N'2024-10-17' AS Date), 16, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (60, N'Сидоров', N'Ярослав', N'Фёдорович', N'42525530', CAST(N'1950-12-01' AS Date), 1, N' Архангельская область город Одинцово бульвар Сталина ', N'79085125356', N'frusakova@example.com', N'453', CAST(N'2020-07-18' AS Date), CAST(N'2023-12-30' AS Date), CAST(N'2024-07-21' AS Date), N'1591965235851940', CAST(N'2024-06-30' AS Date), 19, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (61, N'Мельникова', N'Виктория', N'Борисовна', N'18433434', CAST(N'1983-04-27' AS Date), 1, N' Московская область город Видное пл. Ломоносова ', N'79025625814', N'rnikolaev@example.org', N'360', CAST(N'2018-03-23' AS Date), CAST(N'2023-10-28' AS Date), CAST(N'2024-05-25' AS Date), N'5889692438087400', CAST(N'2024-10-25' AS Date), 18, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (62, N'Котов', N'Юрий', N'Евгеньевич', N'50994331', CAST(N'1958-02-06' AS Date), 1, N' Амурская область город Балашиха наб. Сталина ', N'79045222162', N'dina.lazareva@example.org', N'139', CAST(N'2016-08-19' AS Date), CAST(N'2023-11-17' AS Date), CAST(N'2024-02-22' AS Date), N'4601746152249570', CAST(N'2024-03-31' AS Date), 3, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (63, N'Журавлёва', N'Зинаида', N'Александровна', N'22463011', CAST(N'2008-02-10' AS Date), 1, N' Белгородская область город Орехово-Зуево пер. Сталина ', N'79655930005', N'uturov@example.org', N'197', CAST(N'2020-11-27' AS Date), CAST(N'2023-01-20' AS Date), CAST(N'2029-09-25' AS Date), N'9194855907183920', CAST(N'2029-12-29' AS Date), 12, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (64, N'Маркова', N'Людмила', N'Владимировна', N'56169333', CAST(N'1981-08-12' AS Date), 1, N' Амурская область город Волоколамск пр. Славы ', N'79652035711', N'lukin.taras@example.com', N'335', CAST(N'2019-10-14' AS Date), CAST(N'2023-12-21' AS Date), CAST(N'2024-06-29' AS Date), N'3792398227235410', CAST(N'2024-09-06' AS Date), 20, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (65, N'Самсонова', N'Зинаида', N'Сергеевна', N'14380946', CAST(N'1969-10-30' AS Date), 1, N' Саратовская область город Орехово-Зуево бульвар Балканская ', N'79684815174', N'polina.mamontova@example.com', N'279', CAST(N'2017-08-04' AS Date), CAST(N'2023-12-18' AS Date), CAST(N'2031-08-28' AS Date), N'5229299327240680', CAST(N'2029-08-08' AS Date), 13, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (66, N'Гуляев', N'Афанасий', N'Фёдорович', N'92850837', CAST(N'1973-03-15' AS Date), 2, N' Калужская область город Луховицы въезд Домодедовская ', N'79646278081', N'anzelika.visnakov@example.org', N'181', CAST(N'2024-01-23' AS Date), CAST(N'2023-01-04' AS Date), CAST(N'2025-12-23' AS Date), N'1748758174887110', CAST(N'2024-10-21' AS Date), 9, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (67, N'Смирнова', N'Полина', N'Ивановна', N'52820626', CAST(N'1998-10-06' AS Date), 1, N' Амурская область город Мытищи пер. Ломоносова ', N'79637013587', N'wfrolov@example.net', N'46', CAST(N'2017-12-14' AS Date), CAST(N'2023-12-17' AS Date), CAST(N'2024-07-17' AS Date), N'8494698861992080', CAST(N'2031-04-20' AS Date), 16, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (68, N'Соболева', N'Екатерина', N'Владимировна', N'49705413', CAST(N'2007-03-19' AS Date), 1, N' Брянская область город Люберцы проезд Бухарестская ', N'79666656227', N'kpopova@example.com', N'482', CAST(N'2024-10-23' AS Date), CAST(N'2023-12-28' AS Date), CAST(N'2024-11-06' AS Date), N'1383430288936680', CAST(N'2024-04-09' AS Date), 17, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (69, N'Ефремов', N'Аркадий', N'Максимович', N'39462307', CAST(N'1994-02-08' AS Date), 2, N' Оренбургская область город Ногинск пр. Чехова ', N'79519650030', N'ignat53@example.org', N'408', CAST(N'2020-05-18' AS Date), CAST(N'2023-01-20' AS Date), CAST(N'2024-06-15' AS Date), N'1748929514643500', CAST(N'2024-07-14' AS Date), 3, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (70, N'Миронова', N'Эмилия', N'Сергеевна', N'56647274', CAST(N'1966-07-26' AS Date), 1, N' Амурская область город Москва наб. Чехова ', N'79003443696', N'sitnikova.elvira@example.org', N'96', CAST(N'2019-05-16' AS Date), CAST(N'2023-11-28' AS Date), CAST(N'2025-06-23' AS Date), N'1888223702681900', CAST(N'2025-12-13' AS Date), 7, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (71, N'Киселёв', N'Мирослав', N'Фёдорович', N'51722377', CAST(N'2002-09-15' AS Date), 2, N' Ленинградская область город Истра бульвар Балканская ', N'79639229460', N'inna88@example.net', N'64', CAST(N'2020-11-29' AS Date), CAST(N'2023-11-22' AS Date), CAST(N'2025-11-15' AS Date), N'1721010396629740', CAST(N'2025-08-08' AS Date), 9, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (72, N'Доронина', N'Алиса', N'Максимовна', N'38222716', CAST(N'1982-04-04' AS Date), 1, N' Новгородская область город Орехово-Зуево ул. Домодедовская ', N'79676762010', N'gorbunova.artem@example.net', N'46', CAST(N'2018-08-23' AS Date), CAST(N'2023-10-28' AS Date), CAST(N'2024-06-03' AS Date), N'8886725083343160', CAST(N'2025-02-14' AS Date), 19, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (73, N'Елисеев', N'Степан', N'Львович', N'25136125', CAST(N'1986-10-05' AS Date), 2, N' Калужская область город Талдом пл. Гоголя ', N'79676607287', N'vsavin@example.net', N'54', CAST(N'2017-11-30' AS Date), CAST(N'2023-01-10' AS Date), CAST(N'2024-07-27' AS Date), N'8992040431063790', CAST(N'2024-11-14' AS Date), 16, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (74, N'Гришина', N'Доминика', N'Борисовна', N'15732770', CAST(N'1961-04-19' AS Date), 1, N' Астраханская область город Раменское наб. Ломоносова ', N'79536827197', N'misina.lev@example.com', N'242', CAST(N'2019-03-20' AS Date), CAST(N'2023-10-27' AS Date), CAST(N'2024-08-01' AS Date), N'9640703680404970', CAST(N'2024-05-31' AS Date), 2, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (75, N'Комиссарова', N'Лидия', N'Андреевна', N'40729520', CAST(N'1964-10-02' AS Date), 1, N' Ярославская область город Шатура въезд Чехова ', N'79667397267', N'malvina.osipova@example.net', N'422', CAST(N'2019-12-14' AS Date), CAST(N'2023-01-17' AS Date), CAST(N'2024-06-11' AS Date), N'1764339867724110', CAST(N'2024-11-14' AS Date), 16, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (76, N'Данилова', N'Александра', N'Евгеньевна', N'99413555', CAST(N'1958-06-06' AS Date), 1, N' Брянская область город Одинцово наб.  года ', N'79047172022', N'vil.siraeva@example.net', N'105', CAST(N'2021-04-11' AS Date), CAST(N'2023-11-21' AS Date), CAST(N'2025-04-14' AS Date), N'3045959167867270', CAST(N'2024-05-03' AS Date), 18, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (77, N'Григорьева', N'Дина', N'Андреевна', N'25900051', CAST(N'2003-03-18' AS Date), 1, N' Самарская область город Домодедово ул. Домодедовская ', N'79639189184', N'uharitonova@example.net', N'50', CAST(N'2020-01-18' AS Date), CAST(N'2023-12-06' AS Date), CAST(N'2024-09-07' AS Date), N'6761864558039000', CAST(N'2029-06-09' AS Date), 11, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (78, N'Баранов', N'Игнатий', N'Александрович', N'64949710', CAST(N'2002-09-09' AS Date), 2, N' Челябинская область город Щёлково пер. Сталина ', N'79537287820', N'aroslava.teterin@example.org', N'324', CAST(N'2020-06-10' AS Date), CAST(N'2023-11-18' AS Date), CAST(N'2024-01-23' AS Date), N'3673114786591270', CAST(N'2025-10-13' AS Date), 3, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (79, N'Дорофеев', N'Мирослав', N'Максимович', N'69125870', CAST(N'1970-02-12' AS Date), 2, N' Рязанская область город Талдом проезд Космонавтов ', N'79679531862', N'nikitin.dina@example.org', N'93', CAST(N'2022-01-12' AS Date), CAST(N'2023-11-19' AS Date), CAST(N'2024-09-25' AS Date), N'6513085301544860', CAST(N'2024-07-29' AS Date), 6, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (80, N'Фролов', N'Богдан', N'Александрович', N'79494013', CAST(N'1972-11-25' AS Date), 2, N' Орловская область город Дорохово проезд Ленина ', N'79633258981', N'afanasij.pavlova@example.org', N'201', CAST(N'2019-05-20' AS Date), CAST(N'2023-12-09' AS Date), CAST(N'2024-10-19' AS Date), N'1666958525018500', CAST(N'2029-05-18' AS Date), 9, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (81, N'Рябов', N'Влад', N'Андреевич', N'86095586', CAST(N'1974-09-03' AS Date), 2, N' Калининградская область город Серебряные Пруды пер. Балканская ', N'79644289357', N'belakov.irina@example.com', N'154', CAST(N'2019-09-26' AS Date), CAST(N'2023-11-14' AS Date), CAST(N'2025-06-18' AS Date), N'3045932073865340', CAST(N'2029-04-29' AS Date), 1, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (82, N'Маслов', N'Вадим', N'Алексеевич', N'63455048', CAST(N'1976-08-02' AS Date), 2, N' Нижегородская область город Клин проезд Будапештсткая ', N'79042181867', N'sofia.belozerova@example.net', N'59', CAST(N'2024-06-25' AS Date), CAST(N'2023-12-29' AS Date), CAST(N'2024-02-05' AS Date), N'4273698782602770', CAST(N'2029-04-14' AS Date), 1, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (83, N'Мишин', N'Борис', N'Максимович', N'74897423', CAST(N'1988-06-27' AS Date), 2, N' Ростовская область город Луховицы проезд Бухарестская ', N'79049887128', N'golubeva.marta@example.com', N'196', CAST(N'2018-07-05' AS Date), CAST(N'2023-10-29' AS Date), CAST(N'2025-09-21' AS Date), N'4431781764283690', CAST(N'2029-08-10' AS Date), 1, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (84, N'Сазонов', N'Адам', N'Романович', N'25992798', CAST(N'1959-01-03' AS Date), 2, N' Ульяновская область город Серебряные Пруды проезд Чехова ', N'79515939986', N'osarapov@example.com', N'181', CAST(N'2021-08-21' AS Date), CAST(N'2023-01-14' AS Date), CAST(N'2031-10-07' AS Date), N'7673697755506810', CAST(N'2024-08-16' AS Date), 13, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (85, N'Афанасьева', N'Марина', N'Львовна', N'98379078', CAST(N'1990-02-16' AS Date), 1, N' Магаданская область город Балашиха наб. Косиора ', N'79532152686', N'anna.orlov@example.com', N'170', CAST(N'2020-09-23' AS Date), CAST(N'2023-11-13' AS Date), CAST(N'2025-12-15' AS Date), N'4977665920379170', CAST(N'2024-07-11' AS Date), 15, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (86, N'Большаков', N'Владлен', N'Фёдорович', N'14004962', CAST(N'1996-02-02' AS Date), 2, N' Самарская область город Мытищи наб.  года ', N'79047669132', N'kkirillova@example.org', N'129', CAST(N'2021-07-01' AS Date), CAST(N'2023-01-06' AS Date), CAST(N'2024-09-26' AS Date), N'8924503077915220', CAST(N'2031-07-27' AS Date), 14, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (87, N'Третьякова', N'Анжелика', N'Андреевна', N'89317258', CAST(N'2004-07-02' AS Date), 1, N' Костромская область город Павловский Посад въезд Домодедовская ', N'79637524146', N'subbotina.alena@example.com', N'18', CAST(N'2018-06-06' AS Date), CAST(N'2023-02-03' AS Date), CAST(N'2031-05-10' AS Date), N'5475660057246670', CAST(N'2025-09-06' AS Date), 1, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (88, N'Дорофеева', N'Антонина', N'Дмитриевна', N'94060739', CAST(N'1994-05-23' AS Date), 1, N' Смоленская область город Павловский Посад ул. Гагарина ', N'79517862535', N'slapin@example.com', N'141', CAST(N'2022-04-14' AS Date), CAST(N'2023-12-03' AS Date), CAST(N'2024-02-08' AS Date), N'1617672940373130', CAST(N'2029-10-24' AS Date), 12, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (89, N'Андреев', N'Дмитрий', N'Иванович', N'86137128', CAST(N'1968-05-06' AS Date), 2, N' Архангельская область город Чехов бульвар Космонавтов ', N'79661740907', N'vikentij92@example.net', N'29', CAST(N'2018-10-17' AS Date), CAST(N'2023-12-12' AS Date), CAST(N'2024-07-02' AS Date), N'7548762209393600', CAST(N'2024-01-09' AS Date), 7, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (90, N'Михайлова', N'Клементина', N'Дмитриевна', N'38322640', CAST(N'1977-08-12' AS Date), 1, N' Тверская область город Наро-Фоминск бульвар Гагарина ', N'79502410464', N'vasilisa.kozlov@example.org', N'433', CAST(N'2019-12-05' AS Date), CAST(N'2023-11-02' AS Date), CAST(N'2025-07-26' AS Date), N'6080458796692380', CAST(N'2024-02-06' AS Date), 3, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (91, N'Субботин', N'Станислав', N'Романович', N'36298117', CAST(N'1954-12-24' AS Date), 2, N' Рязанская область город Красногорск наб. Ленина ', N'79044684257', N'inga.rodionova@example.org', N'452', CAST(N'2021-12-08' AS Date), CAST(N'2023-12-16' AS Date), CAST(N'2029-05-24' AS Date), N'9630675633254010', CAST(N'2025-11-20' AS Date), 10, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (92, N'Носков', N'Нестор', N'Владимирович', N'80688272', CAST(N'1997-06-09' AS Date), 2, N' Новосибирская область город Талдом пр. Балканская ', N'79537194553', N'andrej.dackov@example.com', N'458', CAST(N'2022-12-06' AS Date), CAST(N'2023-11-15' AS Date), CAST(N'2025-11-26' AS Date), N'4920872455975180', CAST(N'2024-08-27' AS Date), 7, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (93, N'Ефимова', N'Алёна', N'Александровна', N'54132663', CAST(N'2008-09-11' AS Date), 1, N' Сахалинская область город Луховицы въезд Космонавтов ', N'79097616464', N'jvinogradova@example.net', N'300', CAST(N'2021-01-12' AS Date), CAST(N'2023-11-16' AS Date), CAST(N'2024-02-13' AS Date), N'2278528547619680', CAST(N'2031-10-16' AS Date), 2, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (94, N'Белоусова', N'Лариса', N'Александровна', N'33378370', CAST(N'1995-04-14' AS Date), 1, N' Ленинградская область город Ногинск пер. Балканская ', N'79663753499', N'fomiceva.anna@example.net', N'354', CAST(N'2024-01-03' AS Date), CAST(N'2023-11-27' AS Date), CAST(N'2024-07-05' AS Date), N'6785407404078040', CAST(N'2029-12-20' AS Date), 16, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (95, N'Ермакова', N'Федосья', N'Дмитриевна', N'66311678', CAST(N'1987-09-08' AS Date), 1, N' Сахалинская область город Талдом ул. Ладыгина ', N'79645827103', N'nikolaj.melnikov@example.com', N'34', CAST(N'2024-04-24' AS Date), CAST(N'2023-12-20' AS Date), CAST(N'2024-03-18' AS Date), N'8496287527735380', CAST(N'2024-02-02' AS Date), 1, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (96, N'Кузнецова', N'Евгения', N'Евгеньевна', N'91802506', CAST(N'1951-06-17' AS Date), 1, N' Самарская область город Можайск спуск Гагарина ', N'79642826528', N'rdenisov@example.net', N'336', CAST(N'2016-08-08' AS Date), CAST(N'2023-12-01' AS Date), CAST(N'2024-12-04' AS Date), N'3524709928206660', CAST(N'2024-06-29' AS Date), 17, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (97, N'Баранова', N'Альбина', N'Фёдоровна', N'35823911', CAST(N'1961-02-03' AS Date), 1, N' Калужская область город Пушкино проезд Ленина ', N'79512403609', N'nika61@example.org', N'336', CAST(N'2024-01-02' AS Date), CAST(N'2023-10-31' AS Date), CAST(N'2024-05-24' AS Date), N'2538544417883890', CAST(N'2024-06-18' AS Date), 8, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (98, N'Симонова', N'Инга', N'Романовна', N'27816785', CAST(N'1963-05-19' AS Date), 1, N' Волгоградская область город Истра спуск Славы ', N'79683986488', N'lavrenteva.vladislav@example.com', N'312', CAST(N'2022-12-01' AS Date), CAST(N'2023-12-07' AS Date), CAST(N'2024-04-01' AS Date), N'6936966443705810', CAST(N'2029-09-26' AS Date), 10, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (99, N'Корнилов', N'Прохор', N'Александрович', N'87405339', CAST(N'1995-05-16' AS Date), 2, N' Архангельская область город Серпухов пр. Гоголя ', N'79661413839', N'semen.lihaceva@example.com', N'401', CAST(N'2022-09-20' AS Date), CAST(N'2023-11-17' AS Date), CAST(N'2024-09-09' AS Date), N'2740596885605790', CAST(N'2024-07-01' AS Date), 4, NULL)
GO
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (100, N'Ковалёв', N'Леонид', N'Борисович', N'28369872', CAST(N'2005-02-10' AS Date), 2, N' Тверская область город Чехов шоссе Косиора ', N'79009544736', N'qturova@example.com', N'173', CAST(N'2021-10-01' AS Date), CAST(N'2023-11-28' AS Date), CAST(N'2024-03-16' AS Date), N'3160015381358070', CAST(N'2024-05-02' AS Date), 13, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (101, N'Нестеров', N'Игнат', N'Иванович', N'65707628', CAST(N'1977-12-18' AS Date), 2, N' Самарская область город Клин пер. Чехова ', N'79041910498', N'emma35@example.org', N'273', CAST(N'2016-10-26' AS Date), CAST(N'2023-11-26' AS Date), CAST(N'2029-10-28' AS Date), N'9452976285161930', CAST(N'2024-09-05' AS Date), 18, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (102, N'Рыбаков', N'Альберт', N'Владимирович', N'49900140', CAST(N'1977-04-15' AS Date), 2, N' Челябинская область город Сергиев Посад въезд Ленина ', N'79683639144', N'tarasova.marat@example.net', N'498', CAST(N'2020-05-07' AS Date), CAST(N'2023-01-24' AS Date), CAST(N'2025-10-30' AS Date), N'9848354092266070', CAST(N'2024-08-09' AS Date), 7, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (103, N'Гущин', N'Никита', N'Иванович', N'99044926', CAST(N'2005-10-11' AS Date), 2, N' Архангельская область город Солнечногорск шоссе Сталина ', N'79668310503', N'gzykova@example.com', N'130', CAST(N'2018-04-03' AS Date), CAST(N'2023-11-18' AS Date), CAST(N'2024-11-03' AS Date), N'6017981883032930', CAST(N'2029-04-16' AS Date), 19, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (104, N'Моисеева', N'Екатерина', N'Романовна', N'80961587', CAST(N'1975-10-08' AS Date), 1, N' Ярославская область город Лотошино пер. Ленина ', N'79641988477', N'zlapina@example.net', N'487', CAST(N'2020-06-10' AS Date), CAST(N'2023-01-26' AS Date), CAST(N'2024-10-03' AS Date), N'1611770596722380', CAST(N'2024-07-08' AS Date), 5, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (105, N'Давыдов', N'Роберт', N'Алексеевич', N'73971316', CAST(N'1971-08-25' AS Date), 2, N' Архангельская область город Чехов пер. Славы ', N'79096205636', N'fsubbotin@example.com', N'287', CAST(N'2018-09-09' AS Date), CAST(N'2023-01-06' AS Date), CAST(N'2031-01-31' AS Date), N'9019257017399140', CAST(N'2025-08-20' AS Date), 9, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (106, N'Кулагин', N'Олег', N'Сергеевич', N'86113391', CAST(N'1989-03-26' AS Date), 2, N' Ивановская область город Волоколамск шоссе Чехова ', N'79665393711', N'viktoria70@example.org', N'37', CAST(N'2021-11-28' AS Date), CAST(N'2023-01-24' AS Date), CAST(N'2024-12-12' AS Date), N'7835792041895520', CAST(N'2025-04-29' AS Date), 18, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (107, N'Антонов', N'Мирослав', N'Максимович', N'72665603', CAST(N'2002-01-28' AS Date), 2, N' Ленинградская область город Можайск въезд Балканская ', N'79084724616', N'nazar62@example.org', N'316', CAST(N'2022-05-01' AS Date), CAST(N'2023-01-25' AS Date), CAST(N'2024-11-17' AS Date), N'2164534122797130', CAST(N'2031-06-01' AS Date), 13, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (108, N'Романов', N'Руслан', N'Фёдорович', N'59001554', CAST(N'1985-12-19' AS Date), 2, N' Калининградская область город Орехово-Зуево въезд Гагарина ', N'79084666481', N'hdementev@example.org', N'334', CAST(N'2019-07-18' AS Date), CAST(N'2023-11-07' AS Date), CAST(N'2029-05-20' AS Date), N'8155769318920210', CAST(N'2024-11-27' AS Date), 13, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (109, N'Куликова', N'Эмилия', N'Евгеньевна', N'80829611', CAST(N'1999-11-08' AS Date), 1, N' Рязанская область город Зарайск шоссе Славы ', N'79084491393', N'vsavin@example.com', N'274', CAST(N'2019-09-13' AS Date), CAST(N'2023-01-31' AS Date), CAST(N'2029-09-30' AS Date), N'7894287328687480', CAST(N'2024-11-21' AS Date), 13, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (110, N'Власов', N'Адриан', N'Львович', N'15744443', CAST(N'1969-05-23' AS Date), 2, N' Курганская область город Луховицы проезд Ладыгина ', N'79641314490', N'sarapova.vera@example.org', N'289', CAST(N'2021-08-02' AS Date), CAST(N'2023-01-22' AS Date), CAST(N'2024-06-02' AS Date), N'6215726814218460', CAST(N'2024-02-08' AS Date), 18, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (111, N'Самойлова', N'София', N'Владимировна', N'77194795', CAST(N'1968-12-09' AS Date), 1, N' Читинская область город Ногинск пр. Бухарестская ', N'79004610443', N'kudrasov.eva@example.com', N'325', CAST(N'2016-05-31' AS Date), CAST(N'2023-01-07' AS Date), CAST(N'2029-09-02' AS Date), N'4823040566476220', CAST(N'2029-04-02' AS Date), 20, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (112, N'Чернов', N'Герасим', N'Фёдорович', N'92604197', CAST(N'2001-08-01' AS Date), 2, N' Смоленская область город Егорьевск наб. Ломоносова ', N'79634005104', N'makar.grigoreva@example.net', N'393', CAST(N'2022-05-21' AS Date), CAST(N'2023-11-03' AS Date), CAST(N'2024-01-10' AS Date), N'6753981794095240', CAST(N'2024-12-05' AS Date), 12, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (113, N'Уварова', N'Анжелика', N'Владимировна', N'53165971', CAST(N'2002-08-10' AS Date), 1, N' Саратовская область город Люберцы шоссе Чехова ', N'79686099066', N'ybelaev@example.org', N'61', CAST(N'2017-06-25' AS Date), CAST(N'2023-01-12' AS Date), CAST(N'2029-06-05' AS Date), N'3203877028524060', CAST(N'2024-10-26' AS Date), 14, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (114, N'Исакова', N'Флорентина', N'Александровна', N'46159518', CAST(N'1983-07-21' AS Date), 1, N' Иркутская область город Клин пер. Балканская ', N'79656505874', N'kononov.nadezda@example.net', N'91', CAST(N'2021-01-11' AS Date), CAST(N'2023-01-29' AS Date), CAST(N'2024-03-31' AS Date), N'5989460230653410', CAST(N'2024-07-07' AS Date), 12, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (115, N'Кондратьев', N'Прохор', N'Сергеевич', N'11930704', CAST(N'1950-11-22' AS Date), 2, N' Псковская область город Серебряные Пруды проезд Косиора ', N'79677054420', N'masnikova.alina@example.net', N'364', CAST(N'2018-12-25' AS Date), CAST(N'2023-01-17' AS Date), CAST(N'2024-09-16' AS Date), N'8179459512286990', CAST(N'2024-01-18' AS Date), 1, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (116, N'Козлов', N'Лев', N'Дмитриевич', N'45843012', CAST(N'2005-09-20' AS Date), 2, N' Костромская область город Наро-Фоминск ул. Домодедовская ', N'79526347238', N'muhina.albert@example.org', N'402', CAST(N'2018-03-19' AS Date), CAST(N'2023-11-25' AS Date), CAST(N'2029-09-20' AS Date), N'1544042777357050', CAST(N'2029-05-20' AS Date), 6, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (117, N'Кузнецов', N'Август', N'Максимович', N'63749372', CAST(N'1950-10-13' AS Date), 2, N' Челябинская область город Луховицы бульвар Сталина ', N'79047689884', N'egor.misina@example.net', N'470', CAST(N'2020-06-14' AS Date), CAST(N'2023-11-26' AS Date), CAST(N'2024-10-27' AS Date), N'2091087258406610', CAST(N'2024-02-03' AS Date), 10, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (118, N'Лебедев', N'Кузьма', N'Иванович', N'95203975', CAST(N'1982-09-30' AS Date), 2, N' Тульская область город Ступино наб.  года ', N'79531196561', N'tretakova.an@example.com', N'301', CAST(N'2018-07-16' AS Date), CAST(N'2023-01-31' AS Date), CAST(N'2025-05-23' AS Date), N'7065607381210500', CAST(N'2024-07-26' AS Date), 4, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (119, N'Вишняков', N'Артём', N'Борисович', N'43368536', CAST(N'1960-01-16' AS Date), 2, N' Новгородская область город Воскресенск въезд Сталина ', N'79667013514', N'frolova.vasilisa@example.com', N'192', CAST(N'2020-05-05' AS Date), CAST(N'2023-01-19' AS Date), CAST(N'2024-04-25' AS Date), N'2700000185711950', CAST(N'2029-05-17' AS Date), 19, NULL)
INSERT [dbo].[Pacient] ([Id], [Surname], [Name], [Otech], [Pasport], [DateBorn], [PolId], [Adress], [Phone], [Email], [NumCard], [DateCard], [DateLast], [DateNext], [Polis], [DateEndPolic], [DiagnozId], [Photo]) VALUES (120, N'Тарасов', N'Геннадий', N'Львович', N'14368882', CAST(N'1988-01-03' AS Date), 2, N' Кировская область город Шатура шоссе Космонавтов ', N'79092405533', N'alena53@example.com', N'488', CAST(N'2018-07-21' AS Date), CAST(N'2023-11-03' AS Date), CAST(N'2024-04-13' AS Date), N'8457059748585790', CAST(N'2031-07-06' AS Date), 6, NULL)
SET IDENTITY_INSERT [dbo].[Pacient] OFF
GO
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (1, 1, CAST(N'2024-12-20' AS Date), 1, 4, 20, 4, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (2, 2, CAST(N'2024-01-23' AS Date), 2, 2, 4, 8, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (3, 3, CAST(N'2024-11-13' AS Date), 3, 1, 14, 8, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (4, 4, CAST(N'2024-01-04' AS Date), 4, 5, 21, 14, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (5, 5, CAST(N'2024-11-28' AS Date), 5, 4, 12, 15, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (6, 6, CAST(N'2024-02-01' AS Date), 6, 5, 3, 12, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (7, 7, CAST(N'2024-12-06' AS Date), 7, 1, 15, 10, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (8, 8, CAST(N'2024-12-06' AS Date), 8, 4, 16, 19, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (9, 9, CAST(N'2024-01-05' AS Date), 9, 4, 17, 17, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (10, 10, CAST(N'2024-01-09' AS Date), 10, 2, 13, 8, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (11, 11, CAST(N'2024-12-23' AS Date), 11, 3, 9, 16, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (12, 12, CAST(N'2024-01-20' AS Date), 12, 4, 11, 11, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (13, 13, CAST(N'2024-11-03' AS Date), 13, 2, 13, 8, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (14, 14, CAST(N'2024-12-20' AS Date), 14, 5, 3, 12, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (15, 15, CAST(N'2024-01-15' AS Date), 15, 3, 6, 16, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (16, 16, CAST(N'2024-01-23' AS Date), 16, 5, 21, 14, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (17, 17, CAST(N'2024-12-01' AS Date), 17, 4, 11, 11, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (18, 18, CAST(N'2024-01-20' AS Date), 18, 5, 7, 3, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (19, 19, CAST(N'2024-02-01' AS Date), 19, 2, 1, 9, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (20, 20, CAST(N'2024-12-09' AS Date), 20, 4, 12, 15, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (21, 21, CAST(N'2024-12-10' AS Date), 21, 1, 19, 6, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (22, 22, CAST(N'2024-11-05' AS Date), 22, 2, 2, 9, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (23, 23, CAST(N'2024-11-23' AS Date), 23, 5, 7, 3, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (24, 24, CAST(N'2024-11-19' AS Date), 24, 2, 5, 5, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (25, 25, CAST(N'2024-11-14' AS Date), 25, 5, 3, 12, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (26, 26, CAST(N'2024-12-03' AS Date), 26, 4, 17, 17, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (27, 27, CAST(N'2024-10-31' AS Date), 1, 4, 11, 11, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (28, 28, CAST(N'2024-11-15' AS Date), 2, 2, 5, 5, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (29, 29, CAST(N'2024-12-24' AS Date), 3, 3, 9, 16, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (30, 30, CAST(N'2024-11-20' AS Date), 4, 4, 17, 17, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (31, 31, CAST(N'2024-11-09' AS Date), 5, 3, 6, 16, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (32, 32, CAST(N'2024-01-06' AS Date), 6, 2, 8, 7, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (33, 33, CAST(N'2024-01-19' AS Date), 7, 1, 15, 1, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (34, 34, CAST(N'2024-01-01' AS Date), 8, 4, 12, 15, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (35, 35, CAST(N'2024-12-15' AS Date), 9, 4, 12, 15, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (36, 36, CAST(N'2024-12-18' AS Date), 10, 3, 6, 16, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (37, 37, CAST(N'2024-01-07' AS Date), 11, 5, 21, 14, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (38, 38, CAST(N'2024-01-21' AS Date), 12, 1, 15, 1, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (39, 39, CAST(N'2024-01-25' AS Date), 13, 2, 8, 7, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (40, 40, CAST(N'2024-12-25' AS Date), 14, 2, 8, 7, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (41, 41, CAST(N'2024-11-12' AS Date), 15, 5, 21, 14, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (42, 42, CAST(N'2024-12-03' AS Date), 16, 2, 8, 7, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (43, 43, CAST(N'2024-11-01' AS Date), 17, 4, 16, 2, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (44, 44, CAST(N'2024-11-12' AS Date), 18, 3, 10, 16, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (45, 45, CAST(N'2024-01-19' AS Date), 19, 4, 11, 11, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (46, 46, CAST(N'2024-01-08' AS Date), 20, 5, 7, 3, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (47, 47, CAST(N'2024-11-02' AS Date), 21, 5, 7, 3, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (48, 48, CAST(N'2024-01-08' AS Date), 22, 3, 6, 16, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (49, 49, CAST(N'2024-01-03' AS Date), 23, 3, 6, 16, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (50, 50, CAST(N'2024-02-03' AS Date), 24, 4, 11, 11, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (51, 51, CAST(N'2024-12-10' AS Date), 25, 4, 12, 15, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (52, 52, CAST(N'2024-11-16' AS Date), 26, 2, 8, 7, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (53, 53, CAST(N'2024-12-06' AS Date), 1, 1, 19, 6, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (54, 54, CAST(N'2024-12-28' AS Date), 2, 5, 18, 13, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (55, 55, CAST(N'2024-12-17' AS Date), 3, 4, 17, 17, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (56, 56, CAST(N'2024-12-14' AS Date), 4, 5, 21, 14, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (57, 57, CAST(N'2024-11-07' AS Date), 5, 1, 19, 6, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (58, 58, CAST(N'2024-12-14' AS Date), 6, 4, 11, 11, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (59, 59, CAST(N'2024-11-05' AS Date), 7, 4, 12, 15, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (60, 60, CAST(N'2024-12-30' AS Date), 8, 2, 13, 8, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (61, 61, CAST(N'2024-10-28' AS Date), 9, 3, 9, 16, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (62, 62, CAST(N'2024-11-17' AS Date), 10, 4, 17, 17, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (63, 63, CAST(N'2024-01-20' AS Date), 11, 2, 5, 5, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (64, 64, CAST(N'2024-12-21' AS Date), 12, 5, 18, 13, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (65, 65, CAST(N'2024-12-18' AS Date), 13, 3, 9, 16, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (66, 66, CAST(N'2024-01-04' AS Date), 14, 5, 3, 12, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (67, 67, CAST(N'2024-12-17' AS Date), 15, 4, 12, 15, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (68, 68, CAST(N'2024-12-28' AS Date), 16, 5, 21, 14, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (69, 69, CAST(N'2024-01-20' AS Date), 17, 2, 13, 8, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (70, 70, CAST(N'2024-11-28' AS Date), 18, 4, 20, 18, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (71, 71, CAST(N'2024-11-22' AS Date), 19, 1, 19, 6, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (72, 72, CAST(N'2024-10-28' AS Date), 20, 2, 13, 8, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (73, 73, CAST(N'2024-01-10' AS Date), 21, 5, 18, 13, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (74, 74, CAST(N'2024-10-27' AS Date), 22, 2, 13, 8, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (75, 75, CAST(N'2024-01-17' AS Date), 23, 5, 7, 3, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (76, 76, CAST(N'2024-11-21' AS Date), 24, 4, 16, 2, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (77, 77, CAST(N'2024-12-06' AS Date), 25, 4, 11, 11, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (78, 78, CAST(N'2024-11-18' AS Date), 26, 2, 5, 5, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (79, 79, CAST(N'2024-11-19' AS Date), 1, 3, 10, 16, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (80, 80, CAST(N'2024-12-09' AS Date), 2, 4, 16, 2, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (81, 81, CAST(N'2024-11-14' AS Date), 3, 3, 6, 16, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (82, 82, CAST(N'2024-12-29' AS Date), 4, 2, 5, 5, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (83, 83, CAST(N'2024-10-29' AS Date), 5, 1, 19, 6, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (84, 84, CAST(N'2024-01-14' AS Date), 6, 4, 11, 11, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (85, 85, CAST(N'2024-11-13' AS Date), 7, 4, 20, 18, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (86, 86, CAST(N'2024-01-06' AS Date), 8, 3, 10, 16, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (87, 87, CAST(N'2024-02-03' AS Date), 9, 5, 18, 13, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (88, 88, CAST(N'2024-12-03' AS Date), 10, 1, 19, 6, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (89, 89, CAST(N'2024-12-12' AS Date), 11, 2, 13, 8, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (90, 90, CAST(N'2024-11-02' AS Date), 12, 2, 13, 8, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (91, 91, CAST(N'2024-12-16' AS Date), 13, 5, 21, 14, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (92, 92, CAST(N'2024-11-15' AS Date), 14, 2, 13, 8, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (93, 93, CAST(N'2024-11-16' AS Date), 15, 4, 20, 18, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (94, 94, CAST(N'2024-11-27' AS Date), 16, 3, 9, 16, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (95, 95, CAST(N'2024-12-20' AS Date), 17, 4, 20, 18, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (96, 96, CAST(N'2024-12-01' AS Date), 18, 5, 3, 12, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (97, 97, CAST(N'2024-10-31' AS Date), 19, 5, 7, 3, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (98, 98, CAST(N'2024-12-07' AS Date), 20, 3, 10, 16, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (99, 99, CAST(N'2024-11-17' AS Date), 21, 3, 10, 16, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (100, 100, CAST(N'2024-11-28' AS Date), 22, 4, 11, 11, N'')
GO
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (101, 101, CAST(N'2024-11-26' AS Date), 23, 4, 11, 11, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (102, 102, CAST(N'2024-01-24' AS Date), 24, 2, 13, 8, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (103, 103, CAST(N'2024-11-18' AS Date), 25, 1, 19, 6, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (104, 104, CAST(N'2024-01-26' AS Date), 26, 5, 7, 3, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (105, 105, CAST(N'2024-01-06' AS Date), 1, 4, 20, 18, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (106, 106, CAST(N'2024-01-24' AS Date), 2, 5, 3, 12, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (107, 107, CAST(N'2024-01-25' AS Date), 3, 1, 19, 6, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (108, 108, CAST(N'2024-11-07' AS Date), 4, 4, 11, 11, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (109, 109, CAST(N'2024-01-31' AS Date), 5, 4, 16, 2, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (110, 110, CAST(N'2024-01-22' AS Date), 6, 2, 5, 5, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (111, 111, CAST(N'2024-01-07' AS Date), 7, 3, 10, 16, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (112, 112, CAST(N'2024-11-03' AS Date), 8, 4, 16, 2, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (113, 113, CAST(N'2024-01-12' AS Date), 9, 2, 10, 16, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (114, 114, CAST(N'2024-01-29' AS Date), 10, 5, 7, 3, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (115, 115, CAST(N'2024-01-17' AS Date), 11, 3, 9, 16, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (116, 116, CAST(N'2024-11-25' AS Date), 12, 5, 21, 14, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (117, 117, CAST(N'2024-11-26' AS Date), 13, 4, 11, 11, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (118, 118, CAST(N'2024-01-31' AS Date), 14, 5, 18, 13, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (119, 119, CAST(N'2024-01-19' AS Date), 15, 2, 5, 5, N'')
INSERT [dbo].[Places] ([Id], [PacientId], [Date], [DoctorId], [TipId], [MeropriationId], [ResultId], [Recomidation]) VALUES (120, 120, CAST(N'2024-11-03' AS Date), 16, 4, 16, 2, N'')
GO
SET IDENTITY_INSERT [dbo].[Pols] ON 

INSERT [dbo].[Pols] ([Id], [Name]) VALUES (1, N'Ж')
INSERT [dbo].[Pols] ([Id], [Name]) VALUES (2, N'М')
SET IDENTITY_INSERT [dbo].[Pols] OFF
GO
SET IDENTITY_INSERT [dbo].[Rapisan] ON 

INSERT [dbo].[Rapisan] ([Id], [DoctorId], [Date], [Time], [Spech], [CanUse], [UserGot]) VALUES (1, 1, CAST(N'2024-02-27' AS Date), CAST(N'10:00:00' AS Time), 1, 1, 1)
INSERT [dbo].[Rapisan] ([Id], [DoctorId], [Date], [Time], [Spech], [CanUse], [UserGot]) VALUES (2, 1, CAST(N'2024-02-28' AS Date), CAST(N'10:00:00' AS Time), 1, 1, 0)
INSERT [dbo].[Rapisan] ([Id], [DoctorId], [Date], [Time], [Spech], [CanUse], [UserGot]) VALUES (3, 1, CAST(N'2024-02-29' AS Date), CAST(N'10:00:00' AS Time), 1, 1, 0)
INSERT [dbo].[Rapisan] ([Id], [DoctorId], [Date], [Time], [Spech], [CanUse], [UserGot]) VALUES (5, 1, CAST(N'2024-02-26' AS Date), CAST(N'09:00:00' AS Time), 1, 1, 0)
INSERT [dbo].[Rapisan] ([Id], [DoctorId], [Date], [Time], [Spech], [CanUse], [UserGot]) VALUES (6, 1, CAST(N'2024-02-27' AS Date), CAST(N'09:00:00' AS Time), 1, 1, 1)
INSERT [dbo].[Rapisan] ([Id], [DoctorId], [Date], [Time], [Spech], [CanUse], [UserGot]) VALUES (7, 1, CAST(N'2024-02-29' AS Date), CAST(N'09:00:00' AS Time), 1, 1, 1)
INSERT [dbo].[Rapisan] ([Id], [DoctorId], [Date], [Time], [Spech], [CanUse], [UserGot]) VALUES (8, 1, CAST(N'2024-03-18' AS Date), CAST(N'08:00:00' AS Time), 1, 1, 0)
INSERT [dbo].[Rapisan] ([Id], [DoctorId], [Date], [Time], [Spech], [CanUse], [UserGot]) VALUES (9, 1, CAST(N'2024-03-19' AS Date), CAST(N'08:00:00' AS Time), 1, 1, 0)
INSERT [dbo].[Rapisan] ([Id], [DoctorId], [Date], [Time], [Spech], [CanUse], [UserGot]) VALUES (10, 1, CAST(N'2024-03-20' AS Date), CAST(N'08:00:00' AS Time), 1, 1, 0)
INSERT [dbo].[Rapisan] ([Id], [DoctorId], [Date], [Time], [Spech], [CanUse], [UserGot]) VALUES (11, 2, CAST(N'2024-03-02' AS Date), CAST(N'08:00:00' AS Time), 1, 0, 0)
INSERT [dbo].[Rapisan] ([Id], [DoctorId], [Date], [Time], [Spech], [CanUse], [UserGot]) VALUES (12, 2, CAST(N'2024-03-03' AS Date), CAST(N'08:00:00' AS Time), 1, 1, 0)
INSERT [dbo].[Rapisan] ([Id], [DoctorId], [Date], [Time], [Spech], [CanUse], [UserGot]) VALUES (13, 3, CAST(N'2024-02-28' AS Date), CAST(N'10:00:00' AS Time), 0, 1, 1)
INSERT [dbo].[Rapisan] ([Id], [DoctorId], [Date], [Time], [Spech], [CanUse], [UserGot]) VALUES (14, 3, CAST(N'2024-02-29' AS Date), CAST(N'10:00:00' AS Time), 0, 1, 0)
INSERT [dbo].[Rapisan] ([Id], [DoctorId], [Date], [Time], [Spech], [CanUse], [UserGot]) VALUES (15, 3, CAST(N'2024-03-01' AS Date), CAST(N'10:00:00' AS Time), 0, 1, 0)
INSERT [dbo].[Rapisan] ([Id], [DoctorId], [Date], [Time], [Spech], [CanUse], [UserGot]) VALUES (16, 3, CAST(N'2024-03-02' AS Date), CAST(N'10:00:00' AS Time), 0, 1, 0)
INSERT [dbo].[Rapisan] ([Id], [DoctorId], [Date], [Time], [Spech], [CanUse], [UserGot]) VALUES (17, 3, CAST(N'2024-03-03' AS Date), CAST(N'10:00:00' AS Time), 0, 1, 0)
SET IDENTITY_INSERT [dbo].[Rapisan] OFF
GO
SET IDENTITY_INSERT [dbo].[Reesults] ON 

INSERT [dbo].[Reesults] ([Id], [Name]) VALUES (1, N' не подтвержение диагноза')
INSERT [dbo].[Reesults] ([Id], [Name]) VALUES (2, N' улучшение метаболизма')
INSERT [dbo].[Reesults] ([Id], [Name]) VALUES (3, N'дренирование гнойной полости')
INSERT [dbo].[Reesults] ([Id], [Name]) VALUES (4, N'кожные раздражения')
INSERT [dbo].[Reesults] ([Id], [Name]) VALUES (5, N'оценка работы органов и систем, выявление нарушений обмена веществ')
INSERT [dbo].[Reesults] ([Id], [Name]) VALUES (6, N'оценка работы сердца')
INSERT [dbo].[Reesults] ([Id], [Name]) VALUES (7, N'оценка уровня глюкозы и работоспособности поджелудочной железы')
INSERT [dbo].[Reesults] ([Id], [Name]) VALUES (8, N'подтверждение диагноза')
INSERT [dbo].[Reesults] ([Id], [Name]) VALUES (9, N'подтверждение заболевания')
INSERT [dbo].[Reesults] ([Id], [Name]) VALUES (10, N'подтвержение диагноза')
INSERT [dbo].[Reesults] ([Id], [Name]) VALUES (11, N'Стимуляция регенерации тканей')
INSERT [dbo].[Reesults] ([Id], [Name]) VALUES (12, N'удаление воспаленного слепого кишечника (аппендикса)')
INSERT [dbo].[Reesults] ([Id], [Name]) VALUES (13, N'удаление желчного пузыр')
INSERT [dbo].[Reesults] ([Id], [Name]) VALUES (14, N'удаление новообразований')
INSERT [dbo].[Reesults] ([Id], [Name]) VALUES (15, N'улучшение лимфо- и кровообращения')
INSERT [dbo].[Reesults] ([Id], [Name]) VALUES (16, N'улучшение общего состояния')
INSERT [dbo].[Reesults] ([Id], [Name]) VALUES (17, N'улучшение проникновения лекарственных средств в ткани')
INSERT [dbo].[Reesults] ([Id], [Name]) VALUES (18, N'уменьшение болей')
INSERT [dbo].[Reesults] ([Id], [Name]) VALUES (19, N'уменьшение отечности')
SET IDENTITY_INSERT [dbo].[Reesults] OFF
GO
SET IDENTITY_INSERT [dbo].[Tips] ON 

INSERT [dbo].[Tips] ([Id], [Name]) VALUES (1, N'инструментальная диагностика')
INSERT [dbo].[Tips] ([Id], [Name]) VALUES (2, N'лабораторное исследование')
INSERT [dbo].[Tips] ([Id], [Name]) VALUES (3, N'лекарственная терапия')
INSERT [dbo].[Tips] ([Id], [Name]) VALUES (4, N'физиотерапия')
INSERT [dbo].[Tips] ([Id], [Name]) VALUES (5, N'хирургическое лечение')
SET IDENTITY_INSERT [dbo].[Tips] OFF
GO
SET IDENTITY_INSERT [dbo].[Yslovies] ON 

INSERT [dbo].[Yslovies] ([Id], [Name]) VALUES (1, N'Бюджет')
INSERT [dbo].[Yslovies] ([Id], [Name]) VALUES (2, N'Платно')
SET IDENTITY_INSERT [dbo].[Yslovies] OFF
GO
SET IDENTITY_INSERT [dbo].[Zapic] ON 

INSERT [dbo].[Zapic] ([Id], [PacientId], [RaspisanId], [Predvar]) VALUES (3, 1, 6, 1)
INSERT [dbo].[Zapic] ([Id], [PacientId], [RaspisanId], [Predvar]) VALUES (4, 1, 7, 1)
INSERT [dbo].[Zapic] ([Id], [PacientId], [RaspisanId], [Predvar]) VALUES (6, 1, 13, 1)
SET IDENTITY_INSERT [dbo].[Zapic] OFF
GO
ALTER TABLE [dbo].[Doctors]  WITH CHECK ADD  CONSTRAINT [FK_Doctors_Otdels] FOREIGN KEY([OtdelId])
REFERENCES [dbo].[Otdels] ([Id])
GO
ALTER TABLE [dbo].[Doctors] CHECK CONSTRAINT [FK_Doctors_Otdels]
GO
ALTER TABLE [dbo].[Gospitals]  WITH CHECK ADD  CONSTRAINT [FK_Gospitals_Doctors] FOREIGN KEY([DoctorId])
REFERENCES [dbo].[Doctors] ([Id])
GO
ALTER TABLE [dbo].[Gospitals] CHECK CONSTRAINT [FK_Gospitals_Doctors]
GO
ALTER TABLE [dbo].[Gospitals]  WITH CHECK ADD  CONSTRAINT [FK_Gospitals_Otdels] FOREIGN KEY([OtdelId])
REFERENCES [dbo].[Otdels] ([Id])
GO
ALTER TABLE [dbo].[Gospitals] CHECK CONSTRAINT [FK_Gospitals_Otdels]
GO
ALTER TABLE [dbo].[Gospitals]  WITH CHECK ADD  CONSTRAINT [FK_Gospitals_Yslovies] FOREIGN KEY([YslovieId])
REFERENCES [dbo].[Yslovies] ([Id])
GO
ALTER TABLE [dbo].[Gospitals] CHECK CONSTRAINT [FK_Gospitals_Yslovies]
GO
ALTER TABLE [dbo].[Pacient]  WITH CHECK ADD  CONSTRAINT [FK_Pacient_Diagnozs] FOREIGN KEY([DiagnozId])
REFERENCES [dbo].[Diagnozs] ([Id])
GO
ALTER TABLE [dbo].[Pacient] CHECK CONSTRAINT [FK_Pacient_Diagnozs]
GO
ALTER TABLE [dbo].[Pacient]  WITH CHECK ADD  CONSTRAINT [FK_Pacient_Pols] FOREIGN KEY([PolId])
REFERENCES [dbo].[Pols] ([Id])
GO
ALTER TABLE [dbo].[Pacient] CHECK CONSTRAINT [FK_Pacient_Pols]
GO
ALTER TABLE [dbo].[Places]  WITH CHECK ADD  CONSTRAINT [FK_Places_Doctors] FOREIGN KEY([DoctorId])
REFERENCES [dbo].[Doctors] ([Id])
GO
ALTER TABLE [dbo].[Places] CHECK CONSTRAINT [FK_Places_Doctors]
GO
ALTER TABLE [dbo].[Places]  WITH CHECK ADD  CONSTRAINT [FK_Places_Meropriations] FOREIGN KEY([MeropriationId])
REFERENCES [dbo].[Meropriations] ([Id])
GO
ALTER TABLE [dbo].[Places] CHECK CONSTRAINT [FK_Places_Meropriations]
GO
ALTER TABLE [dbo].[Places]  WITH CHECK ADD  CONSTRAINT [FK_Places_Pacient] FOREIGN KEY([PacientId])
REFERENCES [dbo].[Pacient] ([Id])
GO
ALTER TABLE [dbo].[Places] CHECK CONSTRAINT [FK_Places_Pacient]
GO
ALTER TABLE [dbo].[Places]  WITH CHECK ADD  CONSTRAINT [FK_Places_Reesults] FOREIGN KEY([ResultId])
REFERENCES [dbo].[Reesults] ([Id])
GO
ALTER TABLE [dbo].[Places] CHECK CONSTRAINT [FK_Places_Reesults]
GO
ALTER TABLE [dbo].[Places]  WITH CHECK ADD  CONSTRAINT [FK_Places_Tips] FOREIGN KEY([TipId])
REFERENCES [dbo].[Tips] ([Id])
GO
ALTER TABLE [dbo].[Places] CHECK CONSTRAINT [FK_Places_Tips]
GO
ALTER TABLE [dbo].[Rapisan]  WITH CHECK ADD  CONSTRAINT [FK_Rapisan_Doctors] FOREIGN KEY([DoctorId])
REFERENCES [dbo].[Doctors] ([Id])
GO
ALTER TABLE [dbo].[Rapisan] CHECK CONSTRAINT [FK_Rapisan_Doctors]
GO
ALTER TABLE [dbo].[Rechepts]  WITH CHECK ADD  CONSTRAINT [FK_Rechepts_Gospitals] FOREIGN KEY([GospitalId])
REFERENCES [dbo].[Gospitals] ([Id])
GO
ALTER TABLE [dbo].[Rechepts] CHECK CONSTRAINT [FK_Rechepts_Gospitals]
GO
ALTER TABLE [dbo].[Zapic]  WITH CHECK ADD  CONSTRAINT [FK_Zapic_Pacient] FOREIGN KEY([PacientId])
REFERENCES [dbo].[Pacient] ([Id])
GO
ALTER TABLE [dbo].[Zapic] CHECK CONSTRAINT [FK_Zapic_Pacient]
GO
ALTER TABLE [dbo].[Zapic]  WITH CHECK ADD  CONSTRAINT [FK_Zapic_Rapisan] FOREIGN KEY([RaspisanId])
REFERENCES [dbo].[Rapisan] ([Id])
GO
ALTER TABLE [dbo].[Zapic] CHECK CONSTRAINT [FK_Zapic_Rapisan]
GO
USE [master]
GO
ALTER DATABASE [DBWorldSkillsRegNew] SET  READ_WRITE 
GO
