USE [master]
GO
/****** Object:  Database [Agreement]    Script Date: 03-06-2022 12:14:11 ******/
CREATE DATABASE [Agreement]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Agreement', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Agreement.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Agreement_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Agreement_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Agreement] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Agreement].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Agreement] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Agreement] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Agreement] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Agreement] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Agreement] SET ARITHABORT OFF 
GO
ALTER DATABASE [Agreement] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Agreement] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Agreement] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Agreement] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Agreement] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Agreement] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Agreement] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Agreement] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Agreement] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Agreement] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Agreement] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Agreement] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Agreement] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Agreement] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Agreement] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Agreement] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Agreement] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Agreement] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Agreement] SET  MULTI_USER 
GO
ALTER DATABASE [Agreement] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Agreement] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Agreement] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Agreement] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Agreement] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Agreement] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Agreement] SET QUERY_STORE = OFF
GO
USE [Agreement]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 03-06-2022 12:14:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Agreement]    Script Date: 03-06-2022 12:14:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agreement](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [varchar](50) NOT NULL,
	[ProductGroupId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[EffectiveDate] [date] NOT NULL,
	[ExpirationDate] [date] NOT NULL,
	[ProductPrice] [decimal](18, 2) NOT NULL,
	[NewPrice] [decimal](18, 2) NOT NULL,
	[Active] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 03-06-2022 12:14:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 03-06-2022 12:14:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 03-06-2022 12:14:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 03-06-2022 12:14:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 03-06-2022 12:14:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 03-06-2022 12:14:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 03-06-2022 12:14:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 03-06-2022 12:14:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductGroupId] [int] NOT NULL,
	[ProductDescription] [nvarchar](400) NOT NULL,
	[ProductNumber] [uniqueidentifier] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Active] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductGroup]    Script Date: 03-06-2022 12:14:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductGroup](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GroupDescription] [nvarchar](400) NOT NULL,
	[GroupCode] [uniqueidentifier] NOT NULL,
	[Active] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'3.1.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220530110158_Intital Create', N'3.1.25')
GO
SET IDENTITY_INSERT [dbo].[Agreement] ON 

INSERT [dbo].[Agreement] ([Id], [UserId], [ProductGroupId], [ProductId], [EffectiveDate], [ExpirationDate], [ProductPrice], [NewPrice], [Active]) VALUES (1010, N'94de4b97-69b5-43e5-97f2-aff7e12bfa03', 3, 7, CAST(N'2022-06-23' AS Date), CAST(N'2022-06-30' AS Date), CAST(2000.00 AS Decimal(18, 2)), CAST(1114.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Agreement] ([Id], [UserId], [ProductGroupId], [ProductId], [EffectiveDate], [ExpirationDate], [ProductPrice], [NewPrice], [Active]) VALUES (1013, N'94de4b97-69b5-43e5-97f2-aff7e12bfa03', 2, 4, CAST(N'2022-06-09' AS Date), CAST(N'2022-06-10' AS Date), CAST(100.00 AS Decimal(18, 2)), CAST(300.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Agreement] ([Id], [UserId], [ProductGroupId], [ProductId], [EffectiveDate], [ExpirationDate], [ProductPrice], [NewPrice], [Active]) VALUES (1014, N'94de4b97-69b5-43e5-97f2-aff7e12bfa03', 2, 4, CAST(N'0001-01-01' AS Date), CAST(N'2022-06-11' AS Date), CAST(100.00 AS Decimal(18, 2)), CAST(350.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Agreement] ([Id], [UserId], [ProductGroupId], [ProductId], [EffectiveDate], [ExpirationDate], [ProductPrice], [NewPrice], [Active]) VALUES (1015, N'94de4b97-69b5-43e5-97f2-aff7e12bfa03', 2, 4, CAST(N'2022-06-11' AS Date), CAST(N'2022-06-12' AS Date), CAST(100.00 AS Decimal(18, 2)), CAST(400.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Agreement] ([Id], [UserId], [ProductGroupId], [ProductId], [EffectiveDate], [ExpirationDate], [ProductPrice], [NewPrice], [Active]) VALUES (1016, N'94de4b97-69b5-43e5-97f2-aff7e12bfa03', 2, 4, CAST(N'2022-06-12' AS Date), CAST(N'2022-06-13' AS Date), CAST(100.00 AS Decimal(18, 2)), CAST(450.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Agreement] ([Id], [UserId], [ProductGroupId], [ProductId], [EffectiveDate], [ExpirationDate], [ProductPrice], [NewPrice], [Active]) VALUES (1017, N'94de4b97-69b5-43e5-97f2-aff7e12bfa03', 2, 4, CAST(N'2022-06-13' AS Date), CAST(N'2022-06-14' AS Date), CAST(100.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Agreement] ([Id], [UserId], [ProductGroupId], [ProductId], [EffectiveDate], [ExpirationDate], [ProductPrice], [NewPrice], [Active]) VALUES (1018, N'94de4b97-69b5-43e5-97f2-aff7e12bfa03', 2, 4, CAST(N'2022-06-14' AS Date), CAST(N'2022-06-15' AS Date), CAST(100.00 AS Decimal(18, 2)), CAST(550.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Agreement] ([Id], [UserId], [ProductGroupId], [ProductId], [EffectiveDate], [ExpirationDate], [ProductPrice], [NewPrice], [Active]) VALUES (1019, N'94de4b97-69b5-43e5-97f2-aff7e12bfa03', 2, 4, CAST(N'2022-06-15' AS Date), CAST(N'2022-06-16' AS Date), CAST(100.00 AS Decimal(18, 2)), CAST(600.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Agreement] ([Id], [UserId], [ProductGroupId], [ProductId], [EffectiveDate], [ExpirationDate], [ProductPrice], [NewPrice], [Active]) VALUES (1020, N'94de4b97-69b5-43e5-97f2-aff7e12bfa03', 2, 4, CAST(N'2022-06-16' AS Date), CAST(N'2022-06-17' AS Date), CAST(100.00 AS Decimal(18, 2)), CAST(650.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Agreement] ([Id], [UserId], [ProductGroupId], [ProductId], [EffectiveDate], [ExpirationDate], [ProductPrice], [NewPrice], [Active]) VALUES (1021, N'94de4b97-69b5-43e5-97f2-aff7e12bfa03', 2, 4, CAST(N'2022-06-17' AS Date), CAST(N'2022-06-18' AS Date), CAST(100.00 AS Decimal(18, 2)), CAST(700.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Agreement] ([Id], [UserId], [ProductGroupId], [ProductId], [EffectiveDate], [ExpirationDate], [ProductPrice], [NewPrice], [Active]) VALUES (1022, N'94de4b97-69b5-43e5-97f2-aff7e12bfa03', 2, 4, CAST(N'2022-06-18' AS Date), CAST(N'2022-06-19' AS Date), CAST(100.00 AS Decimal(18, 2)), CAST(750.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Agreement] ([Id], [UserId], [ProductGroupId], [ProductId], [EffectiveDate], [ExpirationDate], [ProductPrice], [NewPrice], [Active]) VALUES (1023, N'94de4b97-69b5-43e5-97f2-aff7e12bfa03', 2, 4, CAST(N'2022-06-19' AS Date), CAST(N'2022-06-20' AS Date), CAST(100.00 AS Decimal(18, 2)), CAST(800.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Agreement] ([Id], [UserId], [ProductGroupId], [ProductId], [EffectiveDate], [ExpirationDate], [ProductPrice], [NewPrice], [Active]) VALUES (1024, N'94de4b97-69b5-43e5-97f2-aff7e12bfa03', 2, 4, CAST(N'2022-06-20' AS Date), CAST(N'2022-06-21' AS Date), CAST(100.00 AS Decimal(18, 2)), CAST(850.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Agreement] ([Id], [UserId], [ProductGroupId], [ProductId], [EffectiveDate], [ExpirationDate], [ProductPrice], [NewPrice], [Active]) VALUES (1025, N'94de4b97-69b5-43e5-97f2-aff7e12bfa03', 4, 8, CAST(N'2022-06-07' AS Date), CAST(N'2022-06-16' AS Date), CAST(10000.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Agreement] ([Id], [UserId], [ProductGroupId], [ProductId], [EffectiveDate], [ExpirationDate], [ProductPrice], [NewPrice], [Active]) VALUES (1027, N'94de4b97-69b5-43e5-97f2-aff7e12bfa03', 2, 5, CAST(N'2022-07-08' AS Date), CAST(N'2022-07-15' AS Date), CAST(200.00 AS Decimal(18, 2)), CAST(40.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Agreement] ([Id], [UserId], [ProductGroupId], [ProductId], [EffectiveDate], [ExpirationDate], [ProductPrice], [NewPrice], [Active]) VALUES (1028, N'94de4b97-69b5-43e5-97f2-aff7e12bfa03', 3, 7, CAST(N'0001-01-01' AS Date), CAST(N'0001-01-01' AS Date), CAST(2000.00 AS Decimal(18, 2)), CAST(34.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Agreement] ([Id], [UserId], [ProductGroupId], [ProductId], [EffectiveDate], [ExpirationDate], [ProductPrice], [NewPrice], [Active]) VALUES (1029, N'94de4b97-69b5-43e5-97f2-aff7e12bfa03', 2, 5, CAST(N'0001-01-01' AS Date), CAST(N'0001-01-01' AS Date), CAST(200.00 AS Decimal(18, 2)), CAST(89.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Agreement] ([Id], [UserId], [ProductGroupId], [ProductId], [EffectiveDate], [ExpirationDate], [ProductPrice], [NewPrice], [Active]) VALUES (1030, N'94de4b97-69b5-43e5-97f2-aff7e12bfa03', 2, 5, CAST(N'2022-06-01' AS Date), CAST(N'2022-06-15' AS Date), CAST(200.00 AS Decimal(18, 2)), CAST(232323.46 AS Decimal(18, 2)), 1)
INSERT [dbo].[Agreement] ([Id], [UserId], [ProductGroupId], [ProductId], [EffectiveDate], [ExpirationDate], [ProductPrice], [NewPrice], [Active]) VALUES (1031, N'94de4b97-69b5-43e5-97f2-aff7e12bfa03', 1, 2, CAST(N'0001-01-01' AS Date), CAST(N'0001-01-01' AS Date), CAST(20.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Agreement] ([Id], [UserId], [ProductGroupId], [ProductId], [EffectiveDate], [ExpirationDate], [ProductPrice], [NewPrice], [Active]) VALUES (1032, N'94de4b97-69b5-43e5-97f2-aff7e12bfa03', 1, 1, CAST(N'2022-06-24' AS Date), CAST(N'2022-06-30' AS Date), CAST(10.00 AS Decimal(18, 2)), CAST(798.00 AS Decimal(18, 2)), 1)
SET IDENTITY_INSERT [dbo].[Agreement] OFF
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'29025d98-25a2-425f-b61a-1a6bc29d6b12', N'xyz@gmail.com', N'XYZ@GMAIL.COM', N'xyz@gmail.com', N'XYZ@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEMdrAVXSs7ietidfrG3ADbx2MJuUPwA57OA92HWed3vwsK1rQaUEDsRlRL2h52ugoQ==', N'G6FKJR4LIQV5LZ7S3URPVUOB5ACRUC3V', N'a11b3a47-8b0a-43bb-b24e-38e38ca6785a', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'39bac73a-3add-454a-a6f6-2e1256a4f58e', N'lmn@gmail.com', N'LMN@GMAIL.COM', N'lmn@gmail.com', N'LMN@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEPGWWTMXl1gmIMZamvnaf5wDujbgVQyyZ0FXEm/oT8pABROJVyOJp5oaYntfE0SEpw==', N'KRZS3LBFNUX2ME3P6XJ7FLB4V4Z26DVF', N'502bfa28-23df-4c00-8fde-40ec4b017749', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'6133e0c4-d423-42bd-ae13-ca62437e2905', N'abc@gmail.com', N'ABC@GMAIL.COM', N'abc@gmail.com', N'ABC@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEO6Gn+WznkEf0eZtanr6mk+vi1yRy/gEclTxH4MZhlGCzBRTnjDHeguHSstjuw49+A==', N'6A7X3HCWSEY7NUJV24AC7EFUZUDRF5YH', N'427e4d50-d5d7-43fe-8dff-93c8bb12b8d3', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'94de4b97-69b5-43e5-97f2-aff7e12bfa03', N'swapnil@gmail.com', N'SWAPNIL@GMAIL.COM', N'swapnil@gmail.com', N'SWAPNIL@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEGlYXLh43UKc8wEYhFpNTfsmkiG0va9+u1mJMepBLhghCJUGaPV2yb5OsOD0iovDkA==', N'G5H76XOTXIABDT2W6EHYR53F67ZNI7NI', N'6d72d424-47de-496f-a7fa-1f1594af340d', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Id], [ProductGroupId], [ProductDescription], [ProductNumber], [Price], [Active]) VALUES (1, 1, N'Product_1_Group_1', N'3fd5454d-d788-47ad-876f-35180c35e85f', CAST(10.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Product] ([Id], [ProductGroupId], [ProductDescription], [ProductNumber], [Price], [Active]) VALUES (2, 1, N'Product_2_Group_1', N'8427271f-a925-4a56-b1b0-b987550bf6d8', CAST(20.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Product] ([Id], [ProductGroupId], [ProductDescription], [ProductNumber], [Price], [Active]) VALUES (3, 1, N'Product_3_Group_1', N'8eab26ae-ade6-4a43-b425-6bad5d58f393', CAST(30.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Product] ([Id], [ProductGroupId], [ProductDescription], [ProductNumber], [Price], [Active]) VALUES (4, 2, N'Product_1_Group_2', N'd92f0ba9-e31a-4f0f-b318-fb6adf8dbb45', CAST(100.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Product] ([Id], [ProductGroupId], [ProductDescription], [ProductNumber], [Price], [Active]) VALUES (5, 2, N'Product_2_Group_2', N'e323edeb-4de9-405c-9c35-e88dbaccc93d', CAST(200.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Product] ([Id], [ProductGroupId], [ProductDescription], [ProductNumber], [Price], [Active]) VALUES (6, 3, N'Product_1_Group_3', N'd2d09008-e344-4646-9ba7-c431b0d4d3df', CAST(1000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Product] ([Id], [ProductGroupId], [ProductDescription], [ProductNumber], [Price], [Active]) VALUES (7, 3, N'Product_2_Group_3', N'4ed490d6-5f17-4d91-881a-30f54026d232', CAST(2000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Product] ([Id], [ProductGroupId], [ProductDescription], [ProductNumber], [Price], [Active]) VALUES (8, 4, N'Product_1_Group_4', N'73dbd446-ada7-4776-9497-532859534389', CAST(10000.00 AS Decimal(18, 2)), 1)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductGroup] ON 

INSERT [dbo].[ProductGroup] ([Id], [GroupDescription], [GroupCode], [Active]) VALUES (1, N'Product Group 1', N'82777782-fa0b-49ea-89c3-eec039f7a496', 1)
INSERT [dbo].[ProductGroup] ([Id], [GroupDescription], [GroupCode], [Active]) VALUES (2, N'Product Group 2', N'1ec03cc5-09cc-4452-80dc-f547e34c38b5', 1)
INSERT [dbo].[ProductGroup] ([Id], [GroupDescription], [GroupCode], [Active]) VALUES (3, N'Product Group 3', N'e9f8627b-590a-44d9-bafc-d433253de758', 1)
INSERT [dbo].[ProductGroup] ([Id], [GroupDescription], [GroupCode], [Active]) VALUES (4, N'Product Group 4', N'96ddf76f-cdb5-49ee-b606-0a8f9ca86ae5', 1)
SET IDENTITY_INSERT [dbo].[ProductGroup] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 03-06-2022 12:14:11 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 03-06-2022 12:14:11 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 03-06-2022 12:14:11 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 03-06-2022 12:14:11 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 03-06-2022 12:14:11 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 03-06-2022 12:14:11 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 03-06-2022 12:14:11 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UQ__Product__49A3C8399F603606]    Script Date: 03-06-2022 12:14:11 ******/
ALTER TABLE [dbo].[Product] ADD UNIQUE NONCLUSTERED 
(
	[ProductNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UQ__ProductG__3B97438046B4C5EB]    Script Date: 03-06-2022 12:14:11 ******/
ALTER TABLE [dbo].[ProductGroup] ADD UNIQUE NONCLUSTERED 
(
	[GroupCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Agreement] ADD  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[Product] ADD  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[ProductGroup] ADD  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[Agreement]  WITH CHECK ADD  CONSTRAINT [FK_Agreement_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[Agreement] CHECK CONSTRAINT [FK_Agreement_Product]
GO
ALTER TABLE [dbo].[Agreement]  WITH CHECK ADD  CONSTRAINT [FK_Agreement_ProductGroup] FOREIGN KEY([ProductGroupId])
REFERENCES [dbo].[ProductGroup] ([Id])
GO
ALTER TABLE [dbo].[Agreement] CHECK CONSTRAINT [FK_Agreement_ProductGroup]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductGroup] FOREIGN KEY([ProductGroupId])
REFERENCES [dbo].[ProductGroup] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductGroup]
GO
USE [master]
GO
ALTER DATABASE [Agreement] SET  READ_WRITE 
GO
