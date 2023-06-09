USE [master]
GO
/****** Object:  Database [Food_Web]    Script Date: 6/21/2023 10:02:25 PM ******/
CREATE DATABASE [Food_Web]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Food_Web', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Food_Web.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Food_Web_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Food_Web_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Food_Web] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Food_Web].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Food_Web] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Food_Web] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Food_Web] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Food_Web] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Food_Web] SET ARITHABORT OFF 
GO
ALTER DATABASE [Food_Web] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Food_Web] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Food_Web] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Food_Web] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Food_Web] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Food_Web] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Food_Web] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Food_Web] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Food_Web] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Food_Web] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Food_Web] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Food_Web] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Food_Web] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Food_Web] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Food_Web] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Food_Web] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Food_Web] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Food_Web] SET RECOVERY FULL 
GO
ALTER DATABASE [Food_Web] SET  MULTI_USER 
GO
ALTER DATABASE [Food_Web] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Food_Web] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Food_Web] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Food_Web] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Food_Web] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Food_Web] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Food_Web', N'ON'
GO
ALTER DATABASE [Food_Web] SET QUERY_STORE = OFF
GO
USE [Food_Web]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 6/21/2023 10:02:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 6/21/2023 10:02:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 6/21/2023 10:02:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 6/21/2023 10:02:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 6/21/2023 10:02:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 6/21/2023 10:02:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[IsApproved] [bit] NULL,
	[image] [nvarchar](max) NULL,
	[Adress] [nvarchar](max) NULL,
	[status] [nvarchar](max) NULL,
	[Opentime] [time](7) NULL,
	[Closetime] [time](7) NULL,
	[Fullname] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blog]    Script Date: 6/21/2023 10:02:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blog](
	[Blogid] [int] IDENTITY(1,1) NOT NULL,
	[Bloglong] [varchar](100) NULL,
	[Blogday] [date] NOT NULL,
	[image] [varchar](100) NULL,
	[Blogshort] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Blogid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CartItem]    Script Date: 6/21/2023 10:02:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CartItem](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [varchar](100) NULL,
	[Price] [decimal](18, 0) NOT NULL,
	[Image] [varchar](100) NOT NULL,
	[Quantity] [int] NULL,
	[Money] [decimal](18, 0) NULL,
	[Productid] [int] NULL,
	[IdUser] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK__CartItem__3214EC27E66069A0] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 6/21/2023 10:02:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Categoryid] [int] IDENTITY(1,1) NOT NULL,
	[Categoryname] [nvarchar](100) NULL,
	[image] [nvarchar](max) NULL,
 CONSTRAINT [PK__Category__19060623C1313E61] PRIMARY KEY CLUSTERED 
(
	[Categoryid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 6/21/2023 10:02:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[comment_id] [int] NOT NULL,
	[content] [nvarchar](max) NULL,
	[Store_id] [nvarchar](128) NULL,
	[user_id] [nvarchar](128) NULL,
	[Rating] [int] NULL,
	[created] [datetime] NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[comment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Discount]    Script Date: 6/21/2023 10:02:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discount](
	[Id] [int] NOT NULL,
	[Code] [nvarchar](50) NULL,
	[StoreId] [nvarchar](128) NULL,
	[SoLuong] [int] NULL,
	[DiscountPercent] [float] NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NULL,
 CONSTRAINT [PK_Discount] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[extrafood]    Script Date: 6/21/2023 10:02:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[extrafood](
	[ext_id] [int] IDENTITY(1,1) NOT NULL,
	[image] [varchar](100) NULL,
	[Productid] [int] NOT NULL,
	[price] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ext_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Heartitem]    Script Date: 6/21/2023 10:02:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Heartitem](
	[ID] [int] NOT NULL,
	[ProductName] [varchar](100) NULL,
	[Price] [decimal](18, 0) NULL,
	[Image] [varchar](100) NULL,
	[Productid] [int] NULL,
	[Userid] [nvarchar](128) NULL,
 CONSTRAINT [PK_Heartitem] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_detail]    Script Date: 6/21/2023 10:02:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_detail](
	[Od_id] [int] NOT NULL,
	[Productid] [int] NOT NULL,
	[price] [float] NULL,
	[num] [bigint] NULL,
	[tt_money] [float] NULL,
	[Storeid] [nvarchar](128) NULL,
PRIMARY KEY CLUSTERED 
(
	[Od_id] ASC,
	[Productid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 6/21/2023 10:02:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Od_id] [int] IDENTITY(1,1) NOT NULL,
	[Od_name] [varchar](50) NULL,
	[Od_email] [nvarchar](50) NULL,
	[Od_phone_number] [float] NULL,
	[Od_address] [nvarchar](100) NULL,
	[Od_note] [nvarchar](100) NULL,
	[Od_date] [datetime] NULL,
	[Od_status] [bit] NULL,
	[idthanhtoan] [int] NULL,
 CONSTRAINT [PK__Orders__1888DEAE55BF8437] PRIMARY KEY CLUSTERED 
(
	[Od_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 6/21/2023 10:02:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Productid] [int] IDENTITY(1,1) NOT NULL,
	[Productname] [nvarchar](100) NULL,
	[price] [int] NULL,
	[image] [nvarchar](100) NULL,
	[discription] [nvarchar](100) NULL,
	[Categoryid] [int] NOT NULL,
	[sortdiscription] [nvarchar](100) NULL,
	[Userid] [nvarchar](128) NULL,
	[status] [bit] NOT NULL,
	[is_hot] [bit] NOT NULL,
	[DiscountedPrice] [int] NULL,
	[DiscountPercent] [int] NULL,
 CONSTRAINT [PK__Product__B40F3AA58E43BAEA] PRIMARY KEY CLUSTERED 
(
	[Productid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThanhToan]    Script Date: 6/21/2023 10:02:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThanhToan](
	[id] [int] NOT NULL,
	[TenHinhThuc] [nvarchar](max) NULL,
 CONSTRAINT [PK_ThanhToan] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202303301550417_InitialCreate', N'WebFood.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5CDD6EE33616BE5FA0EF20E8AA5DA4567E7606B381DD2275E26EB0931F8C33DDDE0D68897684914855A2D2048B3ED95EEC23ED2B2C2951B2F82751B6623BC500038B3CFCCEE1E12179787898FFFDE7BFE31F9FE3C8798269166234714F46C7AE03918F8310AD266E4E96DF7F707FFCE19BBF8CAF82F8D9F9A5A23B6374B425CA26EE2321C9B9E765FE238C41368A433FC5195E92918F630F04D83B3D3EFEBB7772E2410AE1522CC7197FCA110963587CD0CF29463E4C480EA21B1CC028E3E5B4665EA03AB7208659027C3871FF0517338C835149E93A175108A81473182D5D072084092054C6F3CF199C9314A3D53CA105207A784920A55B8228835CF6F335B96D378E4F5937BC75C30ACACF3382E39E8027675C2F9EDC7C23EDBAB5DEA8E6AEA886C90BEB75A1BD897B1DC0A2E8138EA8026486E7D32865C413F7A666719125B7908CAA86A312729652B8DF71FA75D4443C72ACDB1DD576743A3A66FF8E9C691E913C851304739282E8C8B9CF1751E8FF13BE3CE0AF104DCE4E16CBB30FEFDE83E0ECFDDFE0D9BB664F695F299D50408BEE539CC094CA069775FF5DC713DB7972C3BA59A34DA9156A4B744AB8CE0D78FE08D18A3CD2C972FAC17566E1330CAA126E5C9F514867106D44D29C7EDEE651041611ACEBBD569EECFF16AEA7EFDE0FC2F5163C85AB62E825FE74E2A4745E7D8251519B3D864939BD84F1FEC2C966298ED9B7685F65ED9739CE539F75061B491E40BA8244946EECAD8DD7CAA419D4F0665DA11EBE69334955F3D692B20E6D32132A16BB9E0D95BCAFCBD7DAE22E92840E5E615A4C236D06276E5423A9E591C3EBD72673626B328876E5CFBC025EC5208C0658022DB850CF6319A631AC7BF913A60607506F99EF4196D11520F807C81E5B44A73F07107D0EFD3CA5863927204E5E9DDBFD2346F0368F17CCDE77C76BB0A179F81DCF804F707A8558ABADF13E62FF2BCEC9150A2E01819F895F01B2CF8730B60718449C0BDF875936A3C60C8329A68E7505788DC8D9696F38B638EDDB059946208CF53E88B48C7EA948D77E889E42F1450C643A7FA44DD48F7815223B512B52B3A82545A7A89CACAFA80CCC4E524E6916B420E894B3A41ACCC32B46687817AF803D7C1F6FBBCDDBB41634D438A72B24FC192298D2652CB80784C014AD47C066DDD887B3500C1F63FAEA7B53C1E91710E543B3DA6836148BC0F0B3A1803DFCD95088498B9FC280792516079F8A98C25BD1EBCF54DD734E926CD7D341E8E6AE99EF660D304D978B2CC37E58CC024DC88B072C44F9A90FE774472FCADEC81110DA316AE821DBF26809ED9B2B1BD51DBA841124D0B9F0CB90E014643E085435D20E053D04AB76548D60EB488828DC5F159ED4D261CA1A017608CAE84C0D1151A74588FC300151A796A496965B18EB7BCD43AEB98409448C61A7266C98EB031F4C809A8F34285D1A1A7B0D8B6B374483D76A1AF32E17763DEE4A3C622736D9E13B1BEC92FB6FAF6298ED1ADB8171B6ABC4460063106F1F06CACF2AB606201F5C0ECD40A51393C140B94BB513031535B607031555F2E60CB43CA2DA8EBF745E3D34F3140FCABBDFD65BD5B507DB14F47160A659FA9EB40DA12D60AA9AE7E58255C267A2399C5139F9F92CE3AEAE6C220C7C0E8918B259FBBB5A3FD46B07918DA80D706D681DA0FCFA4F015226540FE1AA585EAB74DC8BE8015BC5DD5A61F9DA2FC1366C40C56E5E833608CD97A5B2715A9D3EEA9ED5D6A018B9D561A181A3310879F1123B6EA114535C56558C8D2FDCC71B6E748C0F468B823A3C578392AACE0CAEA5CA34BBB5A473C8FAB8645B6949729F0C5AAA3A33B896B88D762B49E314F4700BB65291B8850F34D9AA4847BDDBD47563AFCC8CE20563CF904235BE014912A25523A58A9738F3329F6AFAFDBC7FB2515C62787EA6C939AAA5AD39119C8215946A296B2AE92C4C33720908580016E79906B142A6DD5B0DCB7FC5B2B97DAA8358ED031535FB5DB6902EED857D56754478FB19ED5DCCBC992284AE197B7D7387A5B78108A49AA8FD1447798CCCCE95B9757977D76C5F96A808634F925F719E144D292EAEA876AB415127C4000354FB2D9B0F9219C2A4EACAEB6C2ADBE4899A51AAC05413C514ACDADBA0991C18EB8192FDC2FEE3D489F03AF38927A3340178514F8C463E8302D6A8B34715534E9A98628D3DA29457D28494AA7A48D9CC1E11846C566C8467D0A89EC29E839A2FD244576BED913599234D684DF506D81A99E53A7B544D72491358536D8FBDCE349117D003DEB18CA7958DB6ACF230BBDD9E65C0789DD570982DAF7167DF046A14F7C4E2B7F20A182F3F484B329EE836B2A4327EB19D251930CC2B8E70D32D2E38ADD7F3664CE1FA5A58D4DBAEEFCD78FDECF555AD4239CCC92435F7FA50271DDEC6FC20D5FD484639599524AE53A9916EE82F1981F188118CE6BF45D328846CF9AE086E000A97302365CA867B7A7C722ABDB5399C772F5E960591E6206A7AFC228ED90EB2AFD01348FD4790AAB9105BBC0D59832A61E66B14C0E789FBEFA2D57911B160BF8AE223E73AFB8CC2DF725AF190E6D0F943CDED1C2657DEE275462DE81F6FE2D983BDCAAF7FFD52363D72EE523A9DCE9D6349D19B0CBFF818A2973465D32DA4D9F889C4DB9D6DC23B042DAA345B367F76B008C9204F0E2A29BF8DC1F3777D45D33E2BD80A51F3746028BC4154687A1AB00996F15940403F49F12CA05F67F5CF043611CDF8442044FDC1E40702F6CB50D5728FFB90E6B0B48B25A9D0736782F556D996FBDE9B943CECAD26BA9A6BDD036ED07CEAED5C943796A73CD8D6A949431E0C7B9F76FFEAB9C787926EBC76DAF79B65BCCBC4E2964BA43F553EF10164C069327AF69F35BC6B5B33457F0F3CF5B25F6EF081191BDFE6F79F01BC6B633305880FDCD87AE5F91E98ADED6BFFDCB3A5596FA17BCFDA5513900CB738BA287257566E1972A7C7FF05A646507A94E5634A7D1A585B0A6B07C3358999A939FF4C66AC4C1C85AF42D1CEB65F5FF986DFDA594ED3CED690B5D9C69BAFFFADBC394D3B6F432EE43EF289B5D988BA1CEF8E75AC2D65EA2DE50F0B3DE94857EFF2595BAFE4DF52BAF0204A11668FE176F9ED64070FA29221A74E8F6C60F5A298EE9D8DBFB948F7EF2C5CAD21D85F6044D01776CD9AE61A2D71B5794B1255245284E6061210D02DF52225E112F88456B30074F11ABC08EAB16B90050CAED15D4E929CD02EC3781109012FE604B4F12F529E4599C77709FBCA86E80215336481FB3BF4531E46412DF74C1313324030EF82877BD9581216F65DBDD448B718590271F5D54ED1038C9388826577680E9EE026B251F3FB0857C07F5947004D20DD0321AA7D7C1982550AE28C63ACDBD34F6AC341FCFCC3FF01EBF3DA197A540000, N'6.4.4')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'1', N'Admin')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'2', N'Member')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'3', N'User')
GO
INSERT [dbo].[AspNetUserLogins] ([LoginProvider], [ProviderKey], [UserId]) VALUES (N'Facebook', N'1553326728500350', N'ce69cbe4-4a6d-4858-b466-edd549b62188')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'fb38ad1f-8fb1-413c-ad33-09fb32e653ec', N'1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'117bdf44-dd82-4050-8eab-070a493e6f11', N'2')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', N'2')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'535a8a83-56de-442e-8c67-42b58fd59cde', N'2')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'b19d0133-3e4e-41c2-a6e9-63a3f63550af', N'2')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'dc269f5d-816f-4024-b157-edc1febca051', N'2')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e5bd85f3-8b08-4e97-b563-a19878578d9a', N'2')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'0279debd-bb14-4901-94ba-f03fb6eb2d6f', N'3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'311f25d5-ea90-4f36-a596-1d573d7033d3', N'3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'95eb7e77-43dd-464b-aad1-3a1595b45de6', N'3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'9ef0eb0e-85ef-4d67-b642-afa1301a78e4', N'3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'a9ddc7bb-b61a-4523-831d-34c8c2f7ba3c', N'3')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [IsApproved], [image], [Adress], [status], [Opentime], [Closetime], [Fullname]) VALUES (N'0279debd-bb14-4901-94ba-f03fb6eb2d6f', N'ChuShop1@gmail.com', 0, N'AITyqou+rVbe5PZ6YQIw5+1jGI33B8u6yXLPpjc7BdkSaBUEMgZ14iUrcx43dSJ7JQ==', N'4523156b-3022-4b88-b678-a48670151aa2', N'0374059467', 0, 0, NULL, 1, 0, N'ChuShop1@gmail.com', 1, N'bt1.jpg', N'Tan Phu A _ Quận 9 Thành Phố Hồ Chí Minh', NULL, CAST(N'01:00:00' AS Time), CAST(N'11:00:00' AS Time), N'NguyenNgocSang')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [IsApproved], [image], [Adress], [status], [Opentime], [Closetime], [Fullname]) VALUES (N'117bdf44-dd82-4050-8eab-070a493e6f11', N'sthh0987@gmail.com', 0, N'AFVejld0b6ABacIRrRSU2+1/aFbWA/+bQfFGo2pbDfGgC4DsoGDsI3gd6OCjr8PVhA==', N'f39913c5-5ea4-4d23-a783-48b3c859300c', N'0797531999', 0, 0, NULL, 1, 0, N'sthh0987@gmail.com', 0, NULL, N'39 Dạ Nam', NULL, NULL, NULL, N'Nguyễn Hoàng Minh')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [IsApproved], [image], [Adress], [status], [Opentime], [Closetime], [Fullname]) VALUES (N'311f25d5-ea90-4f36-a596-1d573d7033d3', N'Store2@gmail.com', 0, N'AAQjkgHhf7YJqX4FSv2kKI8Js1pWWdLRnhpN+uF8pGZVKMjAncn/n6Lp7S2lW4z8Pw==', N'376f7dc7-6209-4027-a9ae-581681402fc3', NULL, 0, 0, NULL, 1, 0, N'Store2@gmail.com', 1, N'bt2.jpg', NULL, NULL, CAST(N'09:30:00' AS Time), CAST(N'15:30:00' AS Time), NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [IsApproved], [image], [Adress], [status], [Opentime], [Closetime], [Fullname]) VALUES (N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', N'member124@gmail.com', 0, N'AJA18BOYyvvksdpjOBCOntUGaXNeKa7vkMGgWhjF6lz8Oi9XxsMmbD9wV7WBkDSvaw==', N'3cbae886-a2e2-4130-ab97-251dd63aa03b', N'0374059466', 0, 0, NULL, 1, 0, N'member124@gmail.com', 0, NULL, N'Thôn 3_ Tân Phú A _ Thành Phố Hồ Chí Minh', NULL, NULL, NULL, N'Diêm Thị Diễm Quỳnh ')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [IsApproved], [image], [Adress], [status], [Opentime], [Closetime], [Fullname]) VALUES (N'535a8a83-56de-442e-8c67-42b58fd59cde', N'taoxn306@gmail.com', 0, N'ANNOyp65V2Bg7OLGh/8Kv8VdG56PH7bsh0d0F45zQVV9EbCMx/maUJyEELq1UB93Yw==', N'adaa06f1-8157-4d47-baa9-d052695204ab', N'2023 - My ASP', 0, 0, NULL, 1, 0, N'taoxn306@gmail.com', 0, NULL, N'2023 - My ASP', NULL, NULL, NULL, N'2023 - My ASP')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [IsApproved], [image], [Adress], [status], [Opentime], [Closetime], [Fullname]) VALUES (N'95eb7e77-43dd-464b-aad1-3a1595b45de6', N'ChuShop2@gmail.com', 0, N'ACFxeyPfB1IeRf+8EHiunQnN2BDAOJwg5jpncjbSuKxdKvT1FsbeWFNdq//roFEMLw==', N'17bd9c40-99dc-4abc-bb6b-af654a21c6b3', N'0374059466', 0, 0, NULL, 1, 0, N'ChuShop2@gmail.com', 0, NULL, N'Tan phu A', NULL, CAST(N'14:14:00' AS Time), CAST(N'20:15:00' AS Time), N'Nguyenngocsang')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [IsApproved], [image], [Adress], [status], [Opentime], [Closetime], [Fullname]) VALUES (N'9ef0eb0e-85ef-4d67-b642-afa1301a78e4', N'ChuShop3@gmail.com', 0, N'AFOLVduIMeq945pVzeCNrgTcQTJ/aQqx3WO3hiM5dDGrAqWBhG27pfY/gffkI0g0wQ==', N'd60f066e-710c-4439-b3ae-08e8a8585618', N'0374059466', 0, 0, NULL, 1, 0, N'ChuShop3@gmail.com', 0, NULL, N'Tan Phu A _ Quận 9 Thành Phố Hồ Chí Minh', NULL, CAST(N'00:45:00' AS Time), CAST(N'04:46:00' AS Time), N'NguyenNgocSang')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [IsApproved], [image], [Adress], [status], [Opentime], [Closetime], [Fullname]) VALUES (N'a9ddc7bb-b61a-4523-831d-34c8c2f7ba3c', N'Diemthidiemquynh@gmail.com', 0, N'AMuCjOSKKIZixia30g45ABFMXMbolKkHmEOgfxe9lohGuhwVmdDWTmiyMvglWedWxw==', N'eff8f64b-7764-439d-a8c8-e9b729c3393f', N'0374059466', 0, 0, NULL, 1, 0, N'Diemthidiemquynh@gmail.com', 1, NULL, N'Tan phu B', NULL, CAST(N'15:00:00' AS Time), CAST(N'15:00:00' AS Time), N'Diem Quynh')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [IsApproved], [image], [Adress], [status], [Opentime], [Closetime], [Fullname]) VALUES (N'b19d0133-3e4e-41c2-a6e9-63a3f63550af', N'Quynh@gmail.com', 0, N'AHxtlvFd/Qz+v4p5YtdhuQrmvfr6//Op1IE2m1ZtaXccYHKn6V39NS+UjXAUPRf2HA==', N'900aff41-c805-415a-ab15-b8e625356a7c', N'0374059466', 0, 0, NULL, 1, 0, N'Quynh@gmail.com', 0, N'bt3.jpg', N'Tan phu A', NULL, NULL, NULL, N'Diem Quynh')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [IsApproved], [image], [Adress], [status], [Opentime], [Closetime], [Fullname]) VALUES (N'ce69cbe4-4a6d-4858-b466-edd549b62188', N'soan01965@gmail.com', 0, NULL, N'4cfdac52-87e4-4030-96ba-5b7a2141dde6', NULL, 0, 0, NULL, 1, 0, N'Nguyen Ngoc Sang', 0, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [IsApproved], [image], [Adress], [status], [Opentime], [Closetime], [Fullname]) VALUES (N'dc269f5d-816f-4024-b157-edc1febca051', N'Khach1@gmail.com', 0, N'AC8mneV2qWXUkNDDVhX54yCEYrksY6kyR77pMFLv542c6ayFOiK8Ce/iG5n7tQ1lgw==', N'8a8bec41-400c-4624-ab90-01ff8db46d5a', N'0333362880', 0, 0, NULL, 1, 0, N'Khach1@gmail.com', 0, NULL, N'Tan Phu A _ Quận 9 Thành Phố Hồ Chí Minh', NULL, NULL, NULL, N'Nguyen NGoc Sang')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [IsApproved], [image], [Adress], [status], [Opentime], [Closetime], [Fullname]) VALUES (N'e5bd85f3-8b08-4e97-b563-a19878578d9a', N'thanghe@gmail.com', 0, N'AJctvCFC3F5d9D9YzNRAj5ixE+tjScpiEUsUFPr0c5HblQOLIPdqDAcgsFbOXuWJZQ==', N'2952083b-4a3f-4f86-a32f-cc1508245847', N'0374059466', 0, 0, NULL, 1, 0, N'thanghe@gmail.com', 0, NULL, N'Tan Phu A _ Quận 9 Thành Phố Hồ Chí Minh', NULL, NULL, NULL, N'Diem Quynh')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [IsApproved], [image], [Adress], [status], [Opentime], [Closetime], [Fullname]) VALUES (N'fb38ad1f-8fb1-413c-ad33-09fb32e653ec', N'admin@gmail.com', 0, N'APMkG37KJSBm1V4rdTUs2jV4iVBkLVDLxvUzE/YqtfhebrzZMVW05txDkt36i7XUjQ==', N'1acba9d8-dd1b-412f-9283-c37022999d7c', NULL, 0, 0, NULL, 1, 0, N'admin@gmail.com', 0, NULL, NULL, NULL, NULL, NULL, N'Diem Quynh')
GO
SET IDENTITY_INSERT [dbo].[Blog] ON 

INSERT [dbo].[Blog] ([Blogid], [Bloglong], [Blogday], [image], [Blogshort]) VALUES (1, N'adddddddddd', CAST(N'2023-01-01' AS Date), N'blog1.jpg', N'adddaaaaaa')
INSERT [dbo].[Blog] ([Blogid], [Bloglong], [Blogday], [image], [Blogshort]) VALUES (2, N'addd', CAST(N'2023-02-02' AS Date), N'blog2.jpg', N'daaaa')
INSERT [dbo].[Blog] ([Blogid], [Bloglong], [Blogday], [image], [Blogshort]) VALUES (3, N'aaaaaaaaaaaaa', CAST(N'2022-03-03' AS Date), N'blog3.jpg', N'daaaaagggggggggg')
INSERT [dbo].[Blog] ([Blogid], [Bloglong], [Blogday], [image], [Blogshort]) VALUES (4, N'hddddddddddddddddddd', CAST(N'2022-02-16' AS Date), N'blog2.jpg', N'hom nay an gi')
INSERT [dbo].[Blog] ([Blogid], [Bloglong], [Blogday], [image], [Blogshort]) VALUES (18, N'<p>adaddddddddd</p>', CAST(N'2023-06-21' AS Date), N'0.jpg', N'Vi?t Béo ')
SET IDENTITY_INSERT [dbo].[Blog] OFF
GO
SET IDENTITY_INSERT [dbo].[CartItem] ON 

INSERT [dbo].[CartItem] ([Id], [ProductName], [Price], [Image], [Quantity], [Money], [Productid], [IdUser]) VALUES (6436, N'Th?t Rán', CAST(50000 AS Decimal(18, 0)), N'ImageProduct1.jpg', 2, NULL, 1, N'dc269f5d-816f-4024-b157-edc1febca051')
INSERT [dbo].[CartItem] ([Id], [ProductName], [Price], [Image], [Quantity], [Money], [Productid], [IdUser]) VALUES (6437, N'Kem Dâu', CAST(45000 AS Decimal(18, 0)), N'ImageProduct3.jpg', 1, NULL, 3, N'dc269f5d-816f-4024-b157-edc1febca051')
INSERT [dbo].[CartItem] ([Id], [ProductName], [Price], [Image], [Quantity], [Money], [Productid], [IdUser]) VALUES (6438, N'Pizza', CAST(500000 AS Decimal(18, 0)), N'4.png', 1, NULL, 14, N'dc269f5d-816f-4024-b157-edc1febca051')
INSERT [dbo].[CartItem] ([Id], [ProductName], [Price], [Image], [Quantity], [Money], [Productid], [IdUser]) VALUES (6440, N'banh duc', CAST(100000 AS Decimal(18, 0)), N'19.png', 4, NULL, 13, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad')
INSERT [dbo].[CartItem] ([Id], [ProductName], [Price], [Image], [Quantity], [Money], [Productid], [IdUser]) VALUES (6441, N'Gà Chua Ng?t', CAST(9000 AS Decimal(18, 0)), N'ImageProduct6.png', 1, NULL, 6, N'a9ddc7bb-b61a-4523-831d-34c8c2f7ba3c')
INSERT [dbo].[CartItem] ([Id], [ProductName], [Price], [Image], [Quantity], [Money], [Productid], [IdUser]) VALUES (6444, N'Kem Dâu', CAST(45000 AS Decimal(18, 0)), N'ImageProduct3.jpg', 2, NULL, 3, N'117bdf44-dd82-4050-8eab-070a493e6f11')
INSERT [dbo].[CartItem] ([Id], [ProductName], [Price], [Image], [Quantity], [Money], [Productid], [IdUser]) VALUES (6448, N'Th?t Rán', CAST(50000 AS Decimal(18, 0)), N'ImageProduct1.jpg', 3, NULL, 1, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad')
INSERT [dbo].[CartItem] ([Id], [ProductName], [Price], [Image], [Quantity], [Money], [Productid], [IdUser]) VALUES (6449, N'Salaz Cá Ng?', CAST(50000 AS Decimal(18, 0)), N'ImageProduct11.PNG', 1, NULL, 11, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad')
INSERT [dbo].[CartItem] ([Id], [ProductName], [Price], [Image], [Quantity], [Money], [Productid], [IdUser]) VALUES (6451, N'Gà Chua Ng?t', CAST(30000 AS Decimal(18, 0)), N'ImageProduct6.png', 1, NULL, 6, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad')
SET IDENTITY_INSERT [dbo].[CartItem] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([Categoryid], [Categoryname], [image]) VALUES (1, N'Salad', N'slj.jpg')
INSERT [dbo].[Category] ([Categoryid], [Categoryname], [image]) VALUES (2, N'Seafood', N'sf.jpg')
INSERT [dbo].[Category] ([Categoryid], [Categoryname], [image]) VALUES (3, N'Drinks', N'd.jpg')
INSERT [dbo].[Category] ([Categoryid], [Categoryname], [image]) VALUES (4, N'Pasta&Pizza', N'pzlt.jpg')
INSERT [dbo].[Category] ([Categoryid], [Categoryname], [image]) VALUES (13, N'Kem ', N'k.jpg')
INSERT [dbo].[Category] ([Categoryid], [Categoryname], [image]) VALUES (14, N'Rán', N'r.jpg')
INSERT [dbo].[Category] ([Categoryid], [Categoryname], [image]) VALUES (15, N'Bánh', N'b1.jpg')
INSERT [dbo].[Category] ([Categoryid], [Categoryname], [image]) VALUES (16, N'Nướng', N'n.jpg')
INSERT [dbo].[Category] ([Categoryid], [Categoryname], [image]) VALUES (17, N'Món Nước ', N'0.jpg')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
INSERT [dbo].[Comment] ([comment_id], [content], [Store_id], [user_id], [Rating], [created]) VALUES (8, N'tuyet voi ', N'0279debd-bb14-4901-94ba-f03fb6eb2d6f', N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', 5, CAST(N'2023-05-24T03:56:29.290' AS DateTime))
INSERT [dbo].[Comment] ([comment_id], [content], [Store_id], [user_id], [Rating], [created]) VALUES (9, N'oos sau ke', N'0279debd-bb14-4901-94ba-f03fb6eb2d6f', N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', 4, CAST(N'2023-05-24T03:59:47.493' AS DateTime))
INSERT [dbo].[Comment] ([comment_id], [content], [Store_id], [user_id], [Rating], [created]) VALUES (10, N'tuyetj nhat roif ', N'0279debd-bb14-4901-94ba-f03fb6eb2d6f', N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', 4, CAST(N'2023-05-30T17:18:54.963' AS DateTime))
INSERT [dbo].[Comment] ([comment_id], [content], [Store_id], [user_id], [Rating], [created]) VALUES (12, N'heheheheh', N'0279debd-bb14-4901-94ba-f03fb6eb2d6f', N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', 3, CAST(N'2023-05-30T17:23:44.757' AS DateTime))
INSERT [dbo].[Comment] ([comment_id], [content], [Store_id], [user_id], [Rating], [created]) VALUES (13, N'ưddqd', N'0279debd-bb14-4901-94ba-f03fb6eb2d6f', N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', 5, CAST(N'2023-05-30T17:23:55.320' AS DateTime))
INSERT [dbo].[Comment] ([comment_id], [content], [Store_id], [user_id], [Rating], [created]) VALUES (14, N'rqat tuyet voi nha', NULL, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', 5, CAST(N'2023-05-30T17:25:14.437' AS DateTime))
INSERT [dbo].[Comment] ([comment_id], [content], [Store_id], [user_id], [Rating], [created]) VALUES (15, N'rqat tuyet voi nha', NULL, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', 5, CAST(N'2023-05-30T17:25:22.947' AS DateTime))
INSERT [dbo].[Comment] ([comment_id], [content], [Store_id], [user_id], [Rating], [created]) VALUES (16, N'rqat tuyet voi nha', NULL, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', 5, CAST(N'2023-05-30T17:25:36.280' AS DateTime))
INSERT [dbo].[Comment] ([comment_id], [content], [Store_id], [user_id], [Rating], [created]) VALUES (17, N'đâ', N'9e7c6fb5-6931-48b5-9b58-b5bf72193d69', N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', 3, CAST(N'2023-05-30T17:26:45.300' AS DateTime))
INSERT [dbo].[Comment] ([comment_id], [content], [Store_id], [user_id], [Rating], [created]) VALUES (18, N'met nhưo ', N'9e7c6fb5-6931-48b5-9b58-b5bf72193d69', N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', 3, CAST(N'2023-05-30T17:27:59.093' AS DateTime))
INSERT [dbo].[Comment] ([comment_id], [content], [Store_id], [user_id], [Rating], [created]) VALUES (19, N'adaddadad', N'0279debd-bb14-4901-94ba-f03fb6eb2d6f', N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', 4, CAST(N'2023-05-30T17:35:24.610' AS DateTime))
INSERT [dbo].[Comment] ([comment_id], [content], [Store_id], [user_id], [Rating], [created]) VALUES (20, N'hdaddqhdojaphodwh', N'311f25d5-ea90-4f36-a596-1d573d7033d3', N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', 4, CAST(N'2023-06-01T22:41:39.440' AS DateTime))
INSERT [dbo].[Comment] ([comment_id], [content], [Store_id], [user_id], [Rating], [created]) VALUES (21, N'hdhdhah', N'311f25d5-ea90-4f36-a596-1d573d7033d3', N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', 4, CAST(N'2023-06-02T00:03:40.887' AS DateTime))
INSERT [dbo].[Comment] ([comment_id], [content], [Store_id], [user_id], [Rating], [created]) VALUES (22, N'dhahdha', N'0279debd-bb14-4901-94ba-f03fb6eb2d6f', N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', 4, CAST(N'2023-06-02T09:42:45.483' AS DateTime))
INSERT [dbo].[Comment] ([comment_id], [content], [Store_id], [user_id], [Rating], [created]) VALUES (23, N'oce', N'0279debd-bb14-4901-94ba-f03fb6eb2d6f', N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', 3, CAST(N'2023-06-05T09:04:21.630' AS DateTime))
INSERT [dbo].[Comment] ([comment_id], [content], [Store_id], [user_id], [Rating], [created]) VALUES (25, N'oce', N'fb298d76-6693-4456-8733-c580579d2f26', N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', 4, CAST(N'2023-06-05T09:05:09.850' AS DateTime))
INSERT [dbo].[Comment] ([comment_id], [content], [Store_id], [user_id], [Rating], [created]) VALUES (26, N'dadad', N'0279debd-bb14-4901-94ba-f03fb6eb2d6f', N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', 5, CAST(N'2023-06-08T22:31:35.357' AS DateTime))
INSERT [dbo].[Comment] ([comment_id], [content], [Store_id], [user_id], [Rating], [created]) VALUES (27, N'sanghehheheheheh', N'0279debd-bb14-4901-94ba-f03fb6eb2d6f', N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', 3, CAST(N'2023-06-08T22:32:08.387' AS DateTime))
INSERT [dbo].[Comment] ([comment_id], [content], [Store_id], [user_id], [Rating], [created]) VALUES (28, NULL, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f', N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', 4, CAST(N'2023-06-09T07:16:10.523' AS DateTime))
INSERT [dbo].[Comment] ([comment_id], [content], [Store_id], [user_id], [Rating], [created]) VALUES (29, N'adadada', N'0279debd-bb14-4901-94ba-f03fb6eb2d6f', N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', 4, CAST(N'2023-06-09T09:21:14.577' AS DateTime))
INSERT [dbo].[Comment] ([comment_id], [content], [Store_id], [user_id], [Rating], [created]) VALUES (30, N'hadhaudh', N'311f25d5-ea90-4f36-a596-1d573d7033d3', N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', 4, CAST(N'2023-06-09T09:40:43.190' AS DateTime))
INSERT [dbo].[Comment] ([comment_id], [content], [Store_id], [user_id], [Rating], [created]) VALUES (31, N'da', N'', N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', 4, CAST(N'2023-06-16T08:10:19.430' AS DateTime))
INSERT [dbo].[Comment] ([comment_id], [content], [Store_id], [user_id], [Rating], [created]) VALUES (32, N'da', N'', N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', 4, CAST(N'2023-06-16T08:10:24.223' AS DateTime))
INSERT [dbo].[Comment] ([comment_id], [content], [Store_id], [user_id], [Rating], [created]) VALUES (33, N'adaada', N'', N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', 4, CAST(N'2023-06-20T20:42:02.680' AS DateTime))
INSERT [dbo].[Comment] ([comment_id], [content], [Store_id], [user_id], [Rating], [created]) VALUES (34, N'ngon lam', N'0279debd-bb14-4901-94ba-f03fb6eb2d6f', N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', 4, CAST(N'2023-06-21T06:01:39.160' AS DateTime))
INSERT [dbo].[Comment] ([comment_id], [content], [Store_id], [user_id], [Rating], [created]) VALUES (35, N'đâ', N'', N'311f25d5-ea90-4f36-a596-1d573d7033d3', NULL, CAST(N'2023-06-21T09:23:09.630' AS DateTime))
INSERT [dbo].[Comment] ([comment_id], [content], [Store_id], [user_id], [Rating], [created]) VALUES (36, N'đâ', N'', N'311f25d5-ea90-4f36-a596-1d573d7033d3', 4, CAST(N'2023-06-21T09:23:13.943' AS DateTime))
GO
INSERT [dbo].[Discount] ([Id], [Code], [StoreId], [SoLuong], [DiscountPercent], [StartDate], [EndDate]) VALUES (8, N'24a753ff', N'0279debd-bb14-4901-94ba-f03fb6eb2d6f', 5, 77, CAST(N'2023-06-06' AS Date), CAST(N'2024-04-12' AS Date))
INSERT [dbo].[Discount] ([Id], [Code], [StoreId], [SoLuong], [DiscountPercent], [StartDate], [EndDate]) VALUES (11, N'70d55787', N'311f25d5-ea90-4f36-a596-1d573d7033d3', 5, 70, CAST(N'2023-06-11' AS Date), CAST(N'2024-04-12' AS Date))
INSERT [dbo].[Discount] ([Id], [Code], [StoreId], [SoLuong], [DiscountPercent], [StartDate], [EndDate]) VALUES (13, N'c8f2e8c5', N'0279debd-bb14-4901-94ba-f03fb6eb2d6f', 5, 90, CAST(N'2023-06-20' AS Date), CAST(N'2025-04-12' AS Date))
INSERT [dbo].[Discount] ([Id], [Code], [StoreId], [SoLuong], [DiscountPercent], [StartDate], [EndDate]) VALUES (14, N'0ca78153', N'0279debd-bb14-4901-94ba-f03fb6eb2d6f', 5, 10, CAST(N'2023-06-21' AS Date), CAST(N'2024-04-12' AS Date))
INSERT [dbo].[Discount] ([Id], [Code], [StoreId], [SoLuong], [DiscountPercent], [StartDate], [EndDate]) VALUES (15, N'6ed005e6', N'a9ddc7bb-b61a-4523-831d-34c8c2f7ba3c', 5, 30, CAST(N'2023-06-21' AS Date), CAST(N'2024-12-02' AS Date))
INSERT [dbo].[Discount] ([Id], [Code], [StoreId], [SoLuong], [DiscountPercent], [StartDate], [EndDate]) VALUES (16, N'f6e69b6f', N'0279debd-bb14-4901-94ba-f03fb6eb2d6f', 5, 19, CAST(N'2023-06-21' AS Date), CAST(N'2024-04-12' AS Date))
GO
INSERT [dbo].[Heartitem] ([ID], [ProductName], [Price], [Image], [Productid], [Userid]) VALUES (10, NULL, CAST(50000 AS Decimal(18, 0)), N'ImageProduct1.jpg', 1, NULL)
INSERT [dbo].[Heartitem] ([ID], [ProductName], [Price], [Image], [Productid], [Userid]) VALUES (11, NULL, CAST(45000 AS Decimal(18, 0)), N'ImageProduct3.jpg', 3, NULL)
INSERT [dbo].[Heartitem] ([ID], [ProductName], [Price], [Image], [Productid], [Userid]) VALUES (12, NULL, CAST(42000 AS Decimal(18, 0)), N'ImageProduct10.jpg', 10, NULL)
INSERT [dbo].[Heartitem] ([ID], [ProductName], [Price], [Image], [Productid], [Userid]) VALUES (13, NULL, CAST(80000 AS Decimal(18, 0)), N'ImageProduct9.jpg', 9, NULL)
INSERT [dbo].[Heartitem] ([ID], [ProductName], [Price], [Image], [Productid], [Userid]) VALUES (15, NULL, CAST(30000 AS Decimal(18, 0)), N'ImageProduct6.png', 6, N'fb38ad1f-8fb1-413c-ad33-09fb32e653ec')
INSERT [dbo].[Heartitem] ([ID], [ProductName], [Price], [Image], [Productid], [Userid]) VALUES (20, NULL, CAST(25000 AS Decimal(18, 0)), N'0.jpg', 84, NULL)
INSERT [dbo].[Heartitem] ([ID], [ProductName], [Price], [Image], [Productid], [Userid]) VALUES (23, NULL, CAST(30000 AS Decimal(18, 0)), N'ImageProduct6.png', 6, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad')
INSERT [dbo].[Heartitem] ([ID], [ProductName], [Price], [Image], [Productid], [Userid]) VALUES (24, NULL, CAST(55000 AS Decimal(18, 0)), N'ImageProduct4.jpg', 4, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad')
INSERT [dbo].[Heartitem] ([ID], [ProductName], [Price], [Image], [Productid], [Userid]) VALUES (25, NULL, CAST(80000 AS Decimal(18, 0)), N'ImageProduct9.jpg', 9, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad')
INSERT [dbo].[Heartitem] ([ID], [ProductName], [Price], [Image], [Productid], [Userid]) VALUES (26, NULL, CAST(30000 AS Decimal(18, 0)), N'ImageProduct6.png', 6, NULL)
INSERT [dbo].[Heartitem] ([ID], [ProductName], [Price], [Image], [Productid], [Userid]) VALUES (28, NULL, CAST(55000 AS Decimal(18, 0)), N'ImageProduct4.jpg', 4, N'dc269f5d-816f-4024-b157-edc1febca051')
INSERT [dbo].[Heartitem] ([ID], [ProductName], [Price], [Image], [Productid], [Userid]) VALUES (29, NULL, CAST(30000 AS Decimal(18, 0)), N'ImageProduct6.png', 6, N'dc269f5d-816f-4024-b157-edc1febca051')
INSERT [dbo].[Heartitem] ([ID], [ProductName], [Price], [Image], [Productid], [Userid]) VALUES (30, NULL, CAST(80000 AS Decimal(18, 0)), N'ImageProduct9.jpg', 9, N'dc269f5d-816f-4024-b157-edc1febca051')
INSERT [dbo].[Heartitem] ([ID], [ProductName], [Price], [Image], [Productid], [Userid]) VALUES (31, NULL, CAST(500000 AS Decimal(18, 0)), N'4.png', 14, N'dc269f5d-816f-4024-b157-edc1febca051')
INSERT [dbo].[Heartitem] ([ID], [ProductName], [Price], [Image], [Productid], [Userid]) VALUES (32, NULL, CAST(100000 AS Decimal(18, 0)), N'19.png', 13, N'dc269f5d-816f-4024-b157-edc1febca051')
INSERT [dbo].[Heartitem] ([ID], [ProductName], [Price], [Image], [Productid], [Userid]) VALUES (33, NULL, CAST(700000 AS Decimal(18, 0)), N'14.png', 16, NULL)
INSERT [dbo].[Heartitem] ([ID], [ProductName], [Price], [Image], [Productid], [Userid]) VALUES (34, NULL, CAST(55000 AS Decimal(18, 0)), N'ImageProduct4.jpg', 4, NULL)
INSERT [dbo].[Heartitem] ([ID], [ProductName], [Price], [Image], [Productid], [Userid]) VALUES (35, NULL, CAST(500000 AS Decimal(18, 0)), N'4.png', 14, NULL)
INSERT [dbo].[Heartitem] ([ID], [ProductName], [Price], [Image], [Productid], [Userid]) VALUES (36, NULL, CAST(50000 AS Decimal(18, 0)), N'6.png', 15, NULL)
INSERT [dbo].[Heartitem] ([ID], [ProductName], [Price], [Image], [Productid], [Userid]) VALUES (37, NULL, CAST(100000 AS Decimal(18, 0)), N'19.png', 13, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad')
INSERT [dbo].[Heartitem] ([ID], [ProductName], [Price], [Image], [Productid], [Userid]) VALUES (38, NULL, CAST(25000 AS Decimal(18, 0)), N'ImageProduct86.jpg', 86, NULL)
INSERT [dbo].[Heartitem] ([ID], [ProductName], [Price], [Image], [Productid], [Userid]) VALUES (39, NULL, CAST(20000 AS Decimal(18, 0)), N'ImageProduct91.jpg', 91, NULL)
INSERT [dbo].[Heartitem] ([ID], [ProductName], [Price], [Image], [Productid], [Userid]) VALUES (40, NULL, CAST(50000 AS Decimal(18, 0)), N'ImageProduct1.jpg', 1, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad')
INSERT [dbo].[Heartitem] ([ID], [ProductName], [Price], [Image], [Productid], [Userid]) VALUES (41, NULL, CAST(45000 AS Decimal(18, 0)), N'ImageProduct3.jpg', 3, N'311f25d5-ea90-4f36-a596-1d573d7033d3')
GO
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4222, 14, 500000, 1, 500000, N'311f25d5-ea90-4f36-a596-1d573d7033d3')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4223, 17, 10000000, 1, 10000000, N'311f25d5-ea90-4f36-a596-1d573d7033d3')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4227, 4, 3333, 1, 3333, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4228, 1, 1114, 1, 1114, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4229, 1, 1114, 1, 1114, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4230, 1, 1114, 1, 1114, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4230, 13, 100000, 1, 100000, N'311f25d5-ea90-4f36-a596-1d573d7033d3')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4234, 16, 700000, 1, 700000, N'311f25d5-ea90-4f36-a596-1d573d7033d3')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4236, 13, 100000, 1, 100000, N'311f25d5-ea90-4f36-a596-1d573d7033d3')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4237, 16, 700000, 1, 700000, N'311f25d5-ea90-4f36-a596-1d573d7033d3')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4238, 1, 1114, 1, 1114, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4239, 13, 100000, 1, 100000, N'311f25d5-ea90-4f36-a596-1d573d7033d3')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4241, 16, 700000, 1, 700000, N'311f25d5-ea90-4f36-a596-1d573d7033d3')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4242, 1, 1114, 1, 1114, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4245, 1, 1114, 1, 1114, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4245, 13, 100000, 1, 100000, N'311f25d5-ea90-4f36-a596-1d573d7033d3')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4246, 16, 700000, 1, 700000, N'311f25d5-ea90-4f36-a596-1d573d7033d3')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4247, 1, 1114, 1, 1114, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4249, 13, 100000, 1, 100000, N'311f25d5-ea90-4f36-a596-1d573d7033d3')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4250, 13, 100000, 1, 100000, N'311f25d5-ea90-4f36-a596-1d573d7033d3')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4251, 16, 700000, 1, 700000, N'311f25d5-ea90-4f36-a596-1d573d7033d3')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4252, 1, 1114, 1, 1114, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4254, 1, 1114, 1, 1114, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4254, 13, 100000, 1, 100000, N'311f25d5-ea90-4f36-a596-1d573d7033d3')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4256, 1, 1114, 1, 1114, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4257, 16, 700000, 1, 700000, N'311f25d5-ea90-4f36-a596-1d573d7033d3')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4258, 13, 100000, 2, 200000, N'311f25d5-ea90-4f36-a596-1d573d7033d3')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4259, 14, 500000, 1, 500000, N'311f25d5-ea90-4f36-a596-1d573d7033d3')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4260, 1, 1114, 1, 1114, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4261, 13, 100000, 1, 100000, N'311f25d5-ea90-4f36-a596-1d573d7033d3')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4262, 1, 1114, 1, 1114, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4263, 16, 700000, 1, 700000, N'311f25d5-ea90-4f36-a596-1d573d7033d3')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4264, 13, 100000, 1, 100000, N'311f25d5-ea90-4f36-a596-1d573d7033d3')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4265, 1, 1114, 2, 2228, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4265, 16, 700000, 1, 700000, N'311f25d5-ea90-4f36-a596-1d573d7033d3')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4266, 14, 500000, 1, 500000, N'311f25d5-ea90-4f36-a596-1d573d7033d3')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4267, 4, 3333, 1, 3333, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4267, 17, 10000000, 1, 10000000, N'311f25d5-ea90-4f36-a596-1d573d7033d3')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4268, 15, 50000, 1, 50000, N'311f25d5-ea90-4f36-a596-1d573d7033d3')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4274, 18, 780000, 1, 780000, N'311f25d5-ea90-4f36-a596-1d573d7033d3')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4278, 1, 1114, 1, 1114, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4279, 13, 100000, 1, 100000, N'311f25d5-ea90-4f36-a596-1d573d7033d3')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4283, 16, 700000, 1, 700000, N'311f25d5-ea90-4f36-a596-1d573d7033d3')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4285, 13, 100000, 1, 100000, N'311f25d5-ea90-4f36-a596-1d573d7033d3')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4286, 1, 1114, 1, 1114, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4287, 1, 1114, 1, 1114, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4287, 13, 100000, 1, 100000, N'311f25d5-ea90-4f36-a596-1d573d7033d3')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4288, 1, 1114, 1, 1114, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4288, 13, 100000, 1, 100000, N'311f25d5-ea90-4f36-a596-1d573d7033d3')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4289, 16, 700000, 1, 700000, N'311f25d5-ea90-4f36-a596-1d573d7033d3')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4292, 1, 1114, 1, 1114, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4293, 13, 100000, 1, 100000, N'311f25d5-ea90-4f36-a596-1d573d7033d3')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4293, 16, 700000, 1, 700000, N'311f25d5-ea90-4f36-a596-1d573d7033d3')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4294, 16, 700000, 1, 700000, N'311f25d5-ea90-4f36-a596-1d573d7033d3')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4295, 1, 1114, 1, 1114, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4295, 13, 100000, 1, 100000, N'311f25d5-ea90-4f36-a596-1d573d7033d3')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4296, 1, 1114, 11, 12254, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4297, 14, 500000, 1, 500000, N'311f25d5-ea90-4f36-a596-1d573d7033d3')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4299, 16, 700000, 1, 700000, N'311f25d5-ea90-4f36-a596-1d573d7033d3')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4300, 15, 50000, 1, 50000, N'311f25d5-ea90-4f36-a596-1d573d7033d3')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4301, 13, 100000, 1, 100000, N'311f25d5-ea90-4f36-a596-1d573d7033d3')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4303, 1, 1114, 1, 1114, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4305, 4, 3333, 1, 3333, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4306, 18, 780000, 1, 780000, N'311f25d5-ea90-4f36-a596-1d573d7033d3')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4307, 1, 1114, 2, 2228, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4310, 1, 1114, 1, 1114, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4311, 13, 100000, 1, 100000, N'311f25d5-ea90-4f36-a596-1d573d7033d3')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4314, 16, 700000, 1, 700000, N'311f25d5-ea90-4f36-a596-1d573d7033d3')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4315, 3, 3333, 1, 3333, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4316, 1, 1114, 1, 1114, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4319, 13, 100000, 1, 100000, N'311f25d5-ea90-4f36-a596-1d573d7033d3')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4320, 13, 100000, 1, 100000, N'311f25d5-ea90-4f36-a596-1d573d7033d3')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4321, 16, 700000, 1, 700000, N'311f25d5-ea90-4f36-a596-1d573d7033d3')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4323, 1, 1115, 3, 3345, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4325, 10, 2500, 3, 7500, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4326, 10, 2500, 5, 12500, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4327, 16, 0, 8, 0, N'311f25d5-ea90-4f36-a596-1d573d7033d3')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4330, 16, 0, 1, 0, N'311f25d5-ea90-4f36-a596-1d573d7033d3')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4332, 1, 1115, 1, 1115, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4334, 1, 1115, 1, 1115, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4335, 1, 557, 1, 557, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4335, 13, 100000, 2, 200000, N'311f25d5-ea90-4f36-a596-1d573d7033d3')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4335, 16, 0, 2, 0, N'311f25d5-ea90-4f36-a596-1d573d7033d3')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4335, 17, 10000000, 1, 10000000, N'311f25d5-ea90-4f36-a596-1d573d7033d3')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4336, 18, 780000, 1, 780000, N'311f25d5-ea90-4f36-a596-1d573d7033d3')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4337, 79, 20000, 1, 20000, N'fb298d76-6693-4456-8733-c580579d2f26')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4338, 15, 50000, 1, 50000, N'311f25d5-ea90-4f36-a596-1d573d7033d3')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4339, 1, 557, 1, 557, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4339, 13, 100000, 1, 100000, N'311f25d5-ea90-4f36-a596-1d573d7033d3')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4340, 16, 0, 1, 0, N'311f25d5-ea90-4f36-a596-1d573d7033d3')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4340, 79, 20000, 1, 20000, N'fb298d76-6693-4456-8733-c580579d2f26')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4342, 10, 5000, 4, 20000, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4342, 11, 50, 5, 250, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4344, 13, 100000, 1, 100000, N'311f25d5-ea90-4f36-a596-1d573d7033d3')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4345, 16, 0, 1, 0, N'311f25d5-ea90-4f36-a596-1d573d7033d3')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4346, 16, 700000, 1, 700000, N'311f25d5-ea90-4f36-a596-1d573d7033d3')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4347, 79, 20000, 1, 20000, N'fb298d76-6693-4456-8733-c580579d2f26')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4348, 13, 100000, 5, 500000, N'311f25d5-ea90-4f36-a596-1d573d7033d3')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4350, 13, 100000, 3, 300000, N'311f25d5-ea90-4f36-a596-1d573d7033d3')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4351, 79, 20000, 2, 40000, N'fb298d76-6693-4456-8733-c580579d2f26')
GO
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4352, 4, 3333, 4, 13332, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4353, 16, 0, 10, 0, N'311f25d5-ea90-4f36-a596-1d573d7033d3')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4354, 3, 3333, 2, 6666, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4354, 9, 500000, 2, 1000000, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4355, 13, 100000, 4, 400000, N'311f25d5-ea90-4f36-a596-1d573d7033d3')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4356, 9, 24000, 8, 192000, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4357, 3, 45000, 1, 45000, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4359, 17, 3000000, 2, 6000000, N'311f25d5-ea90-4f36-a596-1d573d7033d3')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4361, 15, 50000, 11, 550000, N'311f25d5-ea90-4f36-a596-1d573d7033d3')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4362, 13, 100000, 2, 200000, N'311f25d5-ea90-4f36-a596-1d573d7033d3')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4363, 79, 20000, 2, 40000, N'fb298d76-6693-4456-8733-c580579d2f26')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4365, 4, 55000, 5, 275000, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4366, 4, 55000, 3, 165000, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4370, 17, 3000000, 1, 3000000, N'311f25d5-ea90-4f36-a596-1d573d7033d3')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4371, 16, 0, 6, 0, N'311f25d5-ea90-4f36-a596-1d573d7033d3')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4372, 1, 50000, 3, 150000, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4372, 9, 24000, 1, 24000, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4373, 3, 45000, 2, 90000, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4374, 1, 50000, 3, 150000, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4375, 3, 45000, 1, 45000, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4376, 4, 55000, 1, 55000, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4377, 3, 45000, 3, 135000, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4378, 1, 50000, 3, 150000, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4380, 1, 50000, 5, 250000, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4381, 1, 50000, 2, 100000, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4382, 4, 55000, 3, 165000, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4383, 79, 20000, 2, 40000, N'fb298d76-6693-4456-8733-c580579d2f26')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4384, 3, 45000, 7, 315000, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4385, 3, 45000, 6, 270000, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4385, 6, 9000, 5, 45000, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4386, 1, 50000, 4, 200000, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4387, 6, 9000, 3, 27000, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4388, 3, 45000, 4, 180000, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4393, 1, 50000, 2, 100000, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4394, 6, 9000, 4, 36000, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4395, 10, 42000, 4, 168000, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4397, 1, 50000, 4, 200000, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4398, 14, 500000, 9, 4500000, N'311f25d5-ea90-4f36-a596-1d573d7033d3')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4400, 11, 50000, 3, 150000, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4401, 1, 50000, 2, 100000, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4401, 15, 50000, 2, 100000, N'311f25d5-ea90-4f36-a596-1d573d7033d3')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4401, 16, 0, 9, 0, N'311f25d5-ea90-4f36-a596-1d573d7033d3')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4401, 17, 3000000, 2, 6000000, N'311f25d5-ea90-4f36-a596-1d573d7033d3')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4402, 10, 42000, 1, 42000, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4403, 10, 32760, 1, 32760, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4404, 4, 55000, 2, 110000, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (4405, 11, 50000, 2, 100000, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (5399, 1, 50000, 3, 150000, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (5399, 9, 24000, 4, 96000, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (5400, 3, 45000, 5, 225000, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (5401, 4, 55000, 2, 110000, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (5402, 3, 45000, 8, 360000, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (5403, 1, 50000, 6, 300000, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (5405, 4, 54450, 6, 326700, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (5405, 6, 9000, 3, 27000, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (5406, 3, 45000, 6, 270000, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (5407, 1, 50000, 3, 150000, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (5408, 3, 45000, 4, 180000, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (5409, 1, 50000, 2, 100000, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (5410, 4, 55000, 2, 110000, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (5410, 6, 15000, 2, 30000, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (5411, 95, 20000, 7, 140000, N'a9ddc7bb-b61a-4523-831d-34c8c2f7ba3c')
INSERT [dbo].[Order_detail] ([Od_id], [Productid], [price], [num], [tt_money], [Storeid]) VALUES (5412, 3, 45000, 4, 180000, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f')
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4217, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-05-28T21:38:22.843' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4218, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-05-28T21:39:19.130' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4219, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-05-28T21:41:27.803' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4220, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-05-28T21:41:57.173' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4221, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-05-28T21:44:18.823' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4222, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-05-28T21:45:50.177' AS DateTime), 1, 2)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4223, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-05-28T21:46:40.397' AS DateTime), 1, 2)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4224, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-05-28T21:46:55.133' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4225, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-05-28T21:47:23.823' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4226, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-05-28T21:47:40.000' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4227, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-05-28T21:48:08.293' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4228, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-05-28T21:48:53.383' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4229, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-05-28T21:49:28.373' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4230, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-05-28T21:50:12.557' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4231, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-05-28T21:52:38.523' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4232, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-05-28T21:52:52.630' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4233, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-05-28T21:53:05.023' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4234, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-05-28T21:59:46.917' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4235, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-05-28T22:00:09.377' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4236, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-05-28T22:00:24.667' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4237, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-05-28T22:00:49.837' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4238, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-05-28T22:02:29.993' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4239, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-05-28T22:02:51.327' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4240, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-05-28T22:03:01.573' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4241, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-05-28T22:03:11.373' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4242, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-05-28T23:08:04.790' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4243, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-05-28T23:08:11.587' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4244, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-05-28T23:08:20.863' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4245, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-05-28T23:08:36.107' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4246, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-05-28T23:08:45.953' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4247, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-05-28T23:10:35.500' AS DateTime), 1, 2)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4248, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-05-28T23:12:43.260' AS DateTime), 1, 2)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4249, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-05-28T23:13:18.423' AS DateTime), 1, 2)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4250, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-05-28T23:15:18.433' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4251, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-05-28T23:16:02.577' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4252, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-05-28T23:16:53.740' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4253, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-05-28T23:19:57.363' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4254, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-05-28T23:21:11.793' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4255, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-05-28T23:27:35.683' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4256, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-05-28T23:29:34.340' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4257, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-05-28T23:30:26.950' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4258, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-05-28T23:33:01.843' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4259, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-05-28T23:33:29.923' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4260, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-05-28T23:35:20.587' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4261, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-05-29T11:01:52.543' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4262, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-05-29T11:02:28.813' AS DateTime), 1, 2)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4263, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-05-29T11:02:38.040' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4264, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-05-29T11:07:46.660' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4265, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-05-29T11:10:32.440' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4266, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-05-29T11:18:16.687' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4267, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-05-29T11:21:44.313' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4268, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-05-29T12:50:59.043' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4269, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-05-29T12:51:02.703' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4270, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-05-29T12:51:05.527' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4271, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-05-29T12:51:05.720' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4272, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-05-29T12:51:22.717' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4273, N'11111', NULL, NULL, NULL, NULL, CAST(N'2023-05-28T23:08:45.953' AS DateTime), 0, NULL)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4274, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-05-29T12:52:38.727' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4275, N'1111', NULL, NULL, NULL, NULL, CAST(N'2023-05-28T23:08:45.953' AS DateTime), 0, NULL)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4276, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-05-28T23:08:45.953' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4277, N'1', NULL, NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4278, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-05-29T12:59:05.743' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4279, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-05-29T13:00:40.280' AS DateTime), 1, 2)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4280, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-05-29T13:02:26.920' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4281, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-05-29T13:02:35.983' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4282, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-05-29T13:02:45.833' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4283, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-05-29T13:04:01.447' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4284, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-05-29T13:04:08.047' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4285, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-05-29T13:04:19.343' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4286, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-05-29T13:04:48.790' AS DateTime), 1, 2)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4287, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-05-29T13:05:02.097' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4288, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-05-29T13:06:10.097' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4289, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-05-29T13:06:41.037' AS DateTime), 1, 2)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4290, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-05-30T02:44:03.507' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4291, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-05-30T02:44:11.503' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4292, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-05-30T02:44:19.407' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4293, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-05-30T02:44:25.733' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4294, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-05-30T16:14:54.483' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4295, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-05-30T16:14:59.850' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4296, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-05-30T17:15:17.807' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4297, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-05-30T18:09:40.993' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4298, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-01T22:21:43.453' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4299, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-01T22:21:57.100' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4300, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-01T22:24:27.680' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4301, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-01T22:26:17.257' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4302, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-01T22:33:08.490' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4303, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-01T22:39:17.237' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4304, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-01T22:39:53.360' AS DateTime), 1, 2)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4305, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-01T22:40:55.740' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4306, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-01T23:57:53.190' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4307, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-01T23:58:29.530' AS DateTime), 1, 2)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4309, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-02T01:33:25.717' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4310, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-02T01:33:38.237' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4311, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-02T01:34:29.810' AS DateTime), 1, 2)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4312, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-02T05:13:04.637' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4313, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-02T09:40:40.070' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4314, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-02T09:41:30.510' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4315, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-03T09:30:33.963' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4316, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-03T09:30:39.863' AS DateTime), 0, 1)
GO
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4317, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-03T11:54:09.373' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4318, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-03T11:54:14.810' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4319, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-03T11:54:23.933' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4320, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-03T16:56:19.413' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4321, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-03T16:56:46.973' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4322, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-03T22:48:22.480' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4323, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-03T22:48:28.723' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4324, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-03T22:55:36.023' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4325, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-03T22:56:03.467' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4326, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-03T23:05:54.860' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4327, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-03T23:06:07.263' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4328, N'fc749944-ca54-4cdf-b2be-40cbbf65a12a', NULL, NULL, NULL, NULL, CAST(N'2023-06-04T00:57:28.447' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4329, N'fc749944-ca54-4cdf-b2be-40cbbf65a12a', NULL, NULL, NULL, NULL, CAST(N'2023-06-04T00:57:34.290' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4330, N'2ac5a0ab-b417-4e3d-bd47-b6859266bcc4', NULL, NULL, NULL, NULL, CAST(N'2023-06-04T01:14:57.460' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4331, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-04T20:14:15.250' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4332, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-04T20:14:22.020' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4333, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-04T20:20:02.167' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4334, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-04T20:21:07.577' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4335, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-04T20:56:34.537' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4336, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-04T22:39:08.237' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4337, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-04T23:50:01.043' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4338, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-05T09:02:19.583' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4339, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-05T09:02:47.880' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4340, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-05T09:02:54.693' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4341, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-05T11:50:36.220' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4342, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-05T11:50:42.920' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4343, N'b19d0133-3e4e-41c2-a6e9-63a3f63550af', NULL, NULL, NULL, NULL, CAST(N'2023-06-05T16:49:00.380' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4344, N'b19d0133-3e4e-41c2-a6e9-63a3f63550af', NULL, NULL, NULL, NULL, CAST(N'2023-06-05T16:49:05.657' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4345, N'b19d0133-3e4e-41c2-a6e9-63a3f63550af', NULL, NULL, NULL, NULL, CAST(N'2023-06-05T16:57:54.807' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4346, N'b19d0133-3e4e-41c2-a6e9-63a3f63550af', NULL, NULL, NULL, NULL, CAST(N'2023-06-05T16:59:27.027' AS DateTime), 0, 2)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4347, N'b19d0133-3e4e-41c2-a6e9-63a3f63550af', NULL, NULL, NULL, NULL, CAST(N'2023-06-05T17:12:25.610' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4348, N'b19d0133-3e4e-41c2-a6e9-63a3f63550af', NULL, NULL, NULL, NULL, CAST(N'2023-06-05T19:15:08.023' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4349, N'b19d0133-3e4e-41c2-a6e9-63a3f63550af', NULL, NULL, NULL, NULL, CAST(N'2023-06-05T19:17:42.097' AS DateTime), 0, 2)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4350, N'b19d0133-3e4e-41c2-a6e9-63a3f63550af', NULL, NULL, NULL, NULL, CAST(N'2023-06-05T19:18:22.230' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4351, N'b19d0133-3e4e-41c2-a6e9-63a3f63550af', NULL, NULL, NULL, NULL, CAST(N'2023-06-05T19:49:13.963' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4352, N'b19d0133-3e4e-41c2-a6e9-63a3f63550af', NULL, NULL, NULL, NULL, CAST(N'2023-06-06T02:13:50.400' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4353, N'b19d0133-3e4e-41c2-a6e9-63a3f63550af', NULL, NULL, NULL, NULL, CAST(N'2023-06-06T02:14:01.187' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4354, N'b19d0133-3e4e-41c2-a6e9-63a3f63550af', NULL, NULL, NULL, NULL, CAST(N'2023-06-06T02:14:23.463' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4355, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-07T17:17:44.667' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4356, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-08T00:32:38.873' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4357, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-08T08:57:31.660' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4358, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-08T11:28:23.340' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4359, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-08T11:28:31.610' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4360, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-08T11:28:40.513' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4361, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-08T11:28:48.560' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4362, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-08T12:22:17.257' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4363, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-08T12:33:33.857' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4364, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-08T20:33:53.390' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4365, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-08T20:34:01.810' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4366, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-09T00:13:01.870' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4367, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-09T00:44:52.823' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4368, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-09T00:44:58.787' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4369, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-09T00:45:03.707' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4370, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-09T01:03:17.810' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4371, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-09T01:03:57.570' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4372, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-09T01:04:04.003' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4373, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-09T01:08:55.270' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4374, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-09T01:09:11.807' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4375, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-09T06:21:48.383' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4376, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-09T06:22:00.063' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4377, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-09T06:22:58.507' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4378, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-09T06:25:54.657' AS DateTime), 0, 2)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4379, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-11T12:19:08.427' AS DateTime), 0, 2)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4380, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-11T12:19:41.257' AS DateTime), 0, 2)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4381, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-11T12:20:12.183' AS DateTime), 0, 2)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4382, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-11T12:52:56.290' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4383, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-11T12:57:35.087' AS DateTime), 0, 2)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4384, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-11T13:02:04.947' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4385, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-11T13:10:08.807' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4386, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-11T13:15:23.923' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4387, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-11T13:47:03.620' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4388, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-11T14:24:56.077' AS DateTime), 0, 2)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4389, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-11T14:25:10.747' AS DateTime), 0, 2)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4390, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-11T14:26:36.260' AS DateTime), 0, 2)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4391, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-11T14:26:56.947' AS DateTime), 0, 2)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4392, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-11T14:27:38.377' AS DateTime), 0, 2)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4393, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-11T15:19:18.147' AS DateTime), 0, 2)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4394, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-12T00:21:18.480' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4395, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-12T00:25:51.583' AS DateTime), 0, 2)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4396, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-12T00:25:53.810' AS DateTime), 0, 2)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4397, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-12T00:57:48.753' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4398, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-12T01:09:18.533' AS DateTime), 0, 2)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4399, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-13T23:02:30.150' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4400, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-13T23:02:41.143' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4401, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-13T23:03:23.293' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4402, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-16T07:03:58.090' AS DateTime), 0, 2)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4403, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-16T07:04:43.660' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4404, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-16T21:33:30.777' AS DateTime), 0, 2)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (4405, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-16T22:16:22.300' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (5399, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-19T16:17:11.840' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (5400, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-20T13:13:23.947' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (5401, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-20T13:14:23.977' AS DateTime), 0, 2)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (5402, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-20T19:54:27.797' AS DateTime), 0, 2)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (5403, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-20T22:43:27.753' AS DateTime), 0, 2)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (5404, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-21T05:54:50.677' AS DateTime), 0, 2)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (5405, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-21T05:55:50.467' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (5406, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-21T05:56:18.800' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (5407, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-21T05:57:01.830' AS DateTime), 0, 2)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (5408, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-21T06:06:06.040' AS DateTime), 0, 2)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (5409, N'117bdf44-dd82-4050-8eab-070a493e6f11', NULL, NULL, NULL, NULL, CAST(N'2023-06-21T08:19:45.570' AS DateTime), 0, 2)
GO
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (5410, N'117bdf44-dd82-4050-8eab-070a493e6f11', NULL, NULL, NULL, NULL, CAST(N'2023-06-21T08:20:44.077' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (5411, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-21T09:01:47.863' AS DateTime), 0, 1)
INSERT [dbo].[Orders] ([Od_id], [Od_name], [Od_email], [Od_phone_number], [Od_address], [Od_note], [Od_date], [Od_status], [idthanhtoan]) VALUES (5412, N'3510f936-6109-4bc1-a946-0b9fd1bf68ad', NULL, NULL, NULL, NULL, CAST(N'2023-06-21T10:04:57.943' AS DateTime), 0, 1)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Productid], [Productname], [price], [image], [discription], [Categoryid], [sortdiscription], [Userid], [status], [is_hot], [DiscountedPrice], [DiscountPercent]) VALUES (1, N'Thịt Rán', 50000, N'ImageProduct1.jpg', N'Ít Dẫu Mỡ, Tiết Kiệm', 14, N'Nguyên Liệu Tự Nhiên, Chế biến sạch sẽ ', N'0279debd-bb14-4901-94ba-f03fb6eb2d6f', 0, 0, NULL, NULL)
INSERT [dbo].[Product] ([Productid], [Productname], [price], [image], [discription], [Categoryid], [sortdiscription], [Userid], [status], [is_hot], [DiscountedPrice], [DiscountPercent]) VALUES (3, N'Kem Dâu', 100000, N'ImageProduct3.jpg', N'Dâu Thực 99%', 13, N'Làm từ dâu Đà Lạt', N'0279debd-bb14-4901-94ba-f03fb6eb2d6f', 0, 0, NULL, NULL)
INSERT [dbo].[Product] ([Productid], [Productname], [price], [image], [discription], [Categoryid], [sortdiscription], [Userid], [status], [is_hot], [DiscountedPrice], [DiscountPercent]) VALUES (4, N'Bánh Nhiều Lớp', 55000, N'ImageProduct4.jpg', NULL, 15, NULL, N'0279debd-bb14-4901-94ba-f03fb6eb2d6f', 1, 1, 55000, 0)
INSERT [dbo].[Product] ([Productid], [Productname], [price], [image], [discription], [Categoryid], [sortdiscription], [Userid], [status], [is_hot], [DiscountedPrice], [DiscountPercent]) VALUES (6, N'Gà Chua Ngọt', 30000, N'ImageProduct6.png', N'Làm từ gà thật', 14, N'Siêu sạch và ngon', N'0279debd-bb14-4901-94ba-f03fb6eb2d6f', 1, 1, 30000, 0)
INSERT [dbo].[Product] ([Productid], [Productname], [price], [image], [discription], [Categoryid], [sortdiscription], [Userid], [status], [is_hot], [DiscountedPrice], [DiscountPercent]) VALUES (9, N'Cá Hồi Nướng', 80000, N'ImageProduct9.jpg', N'Làm từ cá hồi đại dương', 16, N'Nguyên Liệu thiên nhiên', N'0279debd-bb14-4901-94ba-f03fb6eb2d6f', 1, 1, 80000, 0)
INSERT [dbo].[Product] ([Productid], [Productname], [price], [image], [discription], [Categoryid], [sortdiscription], [Userid], [status], [is_hot], [DiscountedPrice], [DiscountPercent]) VALUES (10, N'Nước Ép Dâu', 42000, N'ImageProduct10.jpg', N'Làm Từ dâu đà lạt', 3, N'Dâu thật', N'0279debd-bb14-4901-94ba-f03fb6eb2d6f', 1, 0, 32760, 22)
INSERT [dbo].[Product] ([Productid], [Productname], [price], [image], [discription], [Categoryid], [sortdiscription], [Userid], [status], [is_hot], [DiscountedPrice], [DiscountPercent]) VALUES (11, N'Salaz Cá Ngừ', 50000, N'ImageProduct11.PNG', N'Thích Hợp cho buổi sáng', 1, N'dada', N'0279debd-bb14-4901-94ba-f03fb6eb2d6f', 1, 1, NULL, NULL)
INSERT [dbo].[Product] ([Productid], [Productname], [price], [image], [discription], [Categoryid], [sortdiscription], [Userid], [status], [is_hot], [DiscountedPrice], [DiscountPercent]) VALUES (12, N'CoCa', 50000, N'ImageProduct12.jpg', N'adad', 3, N'X', N'0279debd-bb14-4901-94ba-f03fb6eb2d6f', 1, 0, 15000, 70)
INSERT [dbo].[Product] ([Productid], [Productname], [price], [image], [discription], [Categoryid], [sortdiscription], [Userid], [status], [is_hot], [DiscountedPrice], [DiscountPercent]) VALUES (13, N'banh duc', 100000, N'19.png', N'fafaf', 1, N'âffff', N'311f25d5-ea90-4f36-a596-1d573d7033d3', 1, 0, NULL, NULL)
INSERT [dbo].[Product] ([Productid], [Productname], [price], [image], [discription], [Categoryid], [sortdiscription], [Userid], [status], [is_hot], [DiscountedPrice], [DiscountPercent]) VALUES (14, N'Pizza', 500000, N'4.png', N'sieu ngon sieu re', 3, N'ai biết gì đâu ', N'311f25d5-ea90-4f36-a596-1d573d7033d3', 1, 0, NULL, NULL)
INSERT [dbo].[Product] ([Productid], [Productname], [price], [image], [discription], [Categoryid], [sortdiscription], [Userid], [status], [is_hot], [DiscountedPrice], [DiscountPercent]) VALUES (15, N'Pizza', 50000, N'6.png', N'hcahcagua', 4, N'âf', N'311f25d5-ea90-4f36-a596-1d573d7033d3', 1, 1, NULL, NULL)
INSERT [dbo].[Product] ([Productid], [Productname], [price], [image], [discription], [Categoryid], [sortdiscription], [Userid], [status], [is_hot], [DiscountedPrice], [DiscountPercent]) VALUES (16, N'salaz', 700000, N'14.png', N'dâd', 1, N'dadad', N'311f25d5-ea90-4f36-a596-1d573d7033d3', 1, 1, 0, 100)
INSERT [dbo].[Product] ([Productid], [Productname], [price], [image], [discription], [Categoryid], [sortdiscription], [Userid], [status], [is_hot], [DiscountedPrice], [DiscountPercent]) VALUES (17, N'sanwith', 10000000, N'16.png', N'adadad', 4, N'adadad', N'311f25d5-ea90-4f36-a596-1d573d7033d3', 1, 0, 3000000, 70)
INSERT [dbo].[Product] ([Productid], [Productname], [price], [image], [discription], [Categoryid], [sortdiscription], [Userid], [status], [is_hot], [DiscountedPrice], [DiscountPercent]) VALUES (18, N'chicken7vi', 780000, N'21.png', N'eqeqe', 4, N'qeqe', N'311f25d5-ea90-4f36-a596-1d573d7033d3', 1, 1, NULL, NULL)
INSERT [dbo].[Product] ([Productid], [Productname], [price], [image], [discription], [Categoryid], [sortdiscription], [Userid], [status], [is_hot], [DiscountedPrice], [DiscountPercent]) VALUES (79, N'salaz hỗn hợp', 20000, N'0.PNG', NULL, 1, NULL, N'fb298d76-6693-4456-8733-c580579d2f26', 1, 0, NULL, NULL)
INSERT [dbo].[Product] ([Productid], [Productname], [price], [image], [discription], [Categoryid], [sortdiscription], [Userid], [status], [is_hot], [DiscountedPrice], [DiscountPercent]) VALUES (84, N'Gà Rán', 25000, N'0.jpg', N'làm từ gà thật nguyên chất ', 14, N'Gà rán món ăn yêu thích của nhiều người đặc biệt là các bạn nhỏ.!', N'0279debd-bb14-4901-94ba-f03fb6eb2d6f', 1, 0, 18750, 25)
INSERT [dbo].[Product] ([Productid], [Productname], [price], [image], [discription], [Categoryid], [sortdiscription], [Userid], [status], [is_hot], [DiscountedPrice], [DiscountPercent]) VALUES (86, N'Phở Tái ', 25000, N'ImageProduct86.jpg', N'Bỏ túi công thức nấu phở bò tái thơm ngon tại nhà – Digifood', 17, N'Phở bò tái .', N'a9ddc7bb-b61a-4523-831d-34c8c2f7ba3c', 1, 0, NULL, NULL)
INSERT [dbo].[Product] ([Productid], [Productname], [price], [image], [discription], [Categoryid], [sortdiscription], [Userid], [status], [is_hot], [DiscountedPrice], [DiscountPercent]) VALUES (87, N'gà ran', 50000, N'ImageProduct87.jpg', N'2 miếng gà rán', 14, N'Gà rán giòn đơn giản với lớp da giòn rụm và hương thịt gà mềm thơm', N'a9ddc7bb-b61a-4523-831d-34c8c2f7ba3c', 1, 0, NULL, NULL)
INSERT [dbo].[Product] ([Productid], [Productname], [price], [image], [discription], [Categoryid], [sortdiscription], [Userid], [status], [is_hot], [DiscountedPrice], [DiscountPercent]) VALUES (88, N'Salad trứng', 30000, N'ImageProduct88.jpg', N'rau trộn với trứng', 1, N'salad rau quả trộn dầu giấm rất đơn giản mà lại cực kỳ ngon và đẹp mắt.', N'a9ddc7bb-b61a-4523-831d-34c8c2f7ba3c', 1, 0, NULL, NULL)
INSERT [dbo].[Product] ([Productid], [Productname], [price], [image], [discription], [Categoryid], [sortdiscription], [Userid], [status], [is_hot], [DiscountedPrice], [DiscountPercent]) VALUES (89, N'Pizza', 40000, N'ImageProduct89.jpg', N'pizza phô mai', 4, N'pizza đế mỏng với lớp phô mai béo ngậy', N'a9ddc7bb-b61a-4523-831d-34c8c2f7ba3c', 1, 0, NULL, NULL)
INSERT [dbo].[Product] ([Productid], [Productname], [price], [image], [discription], [Categoryid], [sortdiscription], [Userid], [status], [is_hot], [DiscountedPrice], [DiscountPercent]) VALUES (90, N'Cơm tấm', 40000, N'ImageProduct90.jpg', N'Cơm tấm thập cẩm', 16, N'Cơm tấm với đủ loại đồ ăn kèm theo', N'a9ddc7bb-b61a-4523-831d-34c8c2f7ba3c', 1, 0, NULL, NULL)
INSERT [dbo].[Product] ([Productid], [Productname], [price], [image], [discription], [Categoryid], [sortdiscription], [Userid], [status], [is_hot], [DiscountedPrice], [DiscountPercent]) VALUES (91, N'Bánh tráng trộn', 20000, N'ImageProduct91.jpg', N'Bánh tráng trộn với trứng cút', 1, N'Bánh tráng được thêm đủ loại topping', N'a9ddc7bb-b61a-4523-831d-34c8c2f7ba3c', 1, 0, NULL, NULL)
INSERT [dbo].[Product] ([Productid], [Productname], [price], [image], [discription], [Categoryid], [sortdiscription], [Userid], [status], [is_hot], [DiscountedPrice], [DiscountPercent]) VALUES (92, N'Bánh mì ', 20000, N'ImageProduct92.jpg', N'Bánh mì thập cẩm', 15, N'Bánh mì với đầy đủ thịt nguội và gia vị', N'a9ddc7bb-b61a-4523-831d-34c8c2f7ba3c', 1, 0, NULL, NULL)
INSERT [dbo].[Product] ([Productid], [Productname], [price], [image], [discription], [Categoryid], [sortdiscription], [Userid], [status], [is_hot], [DiscountedPrice], [DiscountPercent]) VALUES (93, N'Mì trộn', 30000, N'ImageProduct93.jpg', N'Mì trộn tương đen với trứng', 4, N'Mì trộn với sốt tương đen thơm ngon và lát trứng béo ngậy', N'a9ddc7bb-b61a-4523-831d-34c8c2f7ba3c', 1, 0, NULL, NULL)
INSERT [dbo].[Product] ([Productid], [Productname], [price], [image], [discription], [Categoryid], [sortdiscription], [Userid], [status], [is_hot], [DiscountedPrice], [DiscountPercent]) VALUES (94, N'Mì hoành thánh', 35000, N'ImageProduct94.jpg', N'Mì, hoành thánh, xá xíu', 4, N'Mì hoành thánh được ăn kèm với tương giám đỏ', N'a9ddc7bb-b61a-4523-831d-34c8c2f7ba3c', 1, 0, NULL, NULL)
INSERT [dbo].[Product] ([Productid], [Productname], [price], [image], [discription], [Categoryid], [sortdiscription], [Userid], [status], [is_hot], [DiscountedPrice], [DiscountPercent]) VALUES (95, N'Kem', 20000, N'ImageProduct95.jpg', N'Kem vị vani', 13, N'Kem với hương vị vani truyền thống', N'a9ddc7bb-b61a-4523-831d-34c8c2f7ba3c', 1, 0, NULL, NULL)
INSERT [dbo].[Product] ([Productid], [Productname], [price], [image], [discription], [Categoryid], [sortdiscription], [Userid], [status], [is_hot], [DiscountedPrice], [DiscountPercent]) VALUES (96, N'Thịt nướng', 30000, N'ImageProduct96.jpg', N'5 que thịt nướng', 16, N'thịt nướng được thấm với nước sốt BQ truyền thống', N'a9ddc7bb-b61a-4523-831d-34c8c2f7ba3c', 1, 0, NULL, NULL)
INSERT [dbo].[Product] ([Productid], [Productname], [price], [image], [discription], [Categoryid], [sortdiscription], [Userid], [status], [is_hot], [DiscountedPrice], [DiscountPercent]) VALUES (97, N'Nước ép dưa hấu', 15000, N'ImageProduct97.jpg', N'Nước ép dưa hấu 400ml', 3, N'Nước ép dưa hấu giải nhiệt cho những ngày hè', N'a9ddc7bb-b61a-4523-831d-34c8c2f7ba3c', 1, 0, NULL, NULL)
INSERT [dbo].[Product] ([Productid], [Productname], [price], [image], [discription], [Categoryid], [sortdiscription], [Userid], [status], [is_hot], [DiscountedPrice], [DiscountPercent]) VALUES (98, N'Sò điệp', 35000, N'0.jpg', N'Sò điệp, phô mai', 2, N'Sò điệp được nướng kèm với sốt phô mai', N'a9ddc7bb-b61a-4523-831d-34c8c2f7ba3c', 1, 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
INSERT [dbo].[ThanhToan] ([id], [TenHinhThuc]) VALUES (1, N'Thanh Toan Truc Tiep')
INSERT [dbo].[ThanhToan] ([id], [TenHinhThuc]) VALUES (2, N'MoMo')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 6/21/2023 10:02:25 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 6/21/2023 10:02:25 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 6/21/2023 10:02:25 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_RoleId]    Script Date: 6/21/2023 10:02:25 PM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 6/21/2023 10:02:25 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 6/21/2023 10:02:25 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[CartItem]  WITH CHECK ADD  CONSTRAINT [FK_CartItem_Product] FOREIGN KEY([Productid])
REFERENCES [dbo].[Product] ([Productid])
GO
ALTER TABLE [dbo].[CartItem] CHECK CONSTRAINT [FK_CartItem_Product]
GO
ALTER TABLE [dbo].[extrafood]  WITH CHECK ADD  CONSTRAINT [FK__extrafood__Produ__33D4B598] FOREIGN KEY([Productid])
REFERENCES [dbo].[Product] ([Productid])
GO
ALTER TABLE [dbo].[extrafood] CHECK CONSTRAINT [FK__extrafood__Produ__33D4B598]
GO
ALTER TABLE [dbo].[Heartitem]  WITH CHECK ADD  CONSTRAINT [FK_Heartitem_Product] FOREIGN KEY([Productid])
REFERENCES [dbo].[Product] ([Productid])
GO
ALTER TABLE [dbo].[Heartitem] CHECK CONSTRAINT [FK_Heartitem_Product]
GO
ALTER TABLE [dbo].[Order_detail]  WITH CHECK ADD  CONSTRAINT [FK__Order_det__Od_id__300424B4] FOREIGN KEY([Od_id])
REFERENCES [dbo].[Orders] ([Od_id])
GO
ALTER TABLE [dbo].[Order_detail] CHECK CONSTRAINT [FK__Order_det__Od_id__300424B4]
GO
ALTER TABLE [dbo].[Order_detail]  WITH CHECK ADD  CONSTRAINT [FK__Order_det__Produ__31EC6D26] FOREIGN KEY([Productid])
REFERENCES [dbo].[Product] ([Productid])
GO
ALTER TABLE [dbo].[Order_detail] CHECK CONSTRAINT [FK__Order_det__Produ__31EC6D26]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_ThanhToan] FOREIGN KEY([idthanhtoan])
REFERENCES [dbo].[ThanhToan] ([id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_ThanhToan]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([Categoryid])
REFERENCES [dbo].[Category] ([Categoryid])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
USE [master]
GO
ALTER DATABASE [Food_Web] SET  READ_WRITE 
GO
