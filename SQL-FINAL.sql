USE [master]
GO
/****** Object:  Database [ObligatorioRodriguezLemaEntityGonzaPc]    Script Date: 25/11/2021 10:06:05 ******/
CREATE DATABASE [ObligatorioRodriguezLemaEntityGonzaPc]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'miConexion3', FILENAME = N'C:\Users\Nacho\miConexion3.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'miConexion3_log', FILENAME = N'C:\Users\Nacho\miConexion3_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [ObligatorioRodriguezLemaEntityGonzaPc] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ObligatorioRodriguezLemaEntityGonzaPc].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ObligatorioRodriguezLemaEntityGonzaPc] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ObligatorioRodriguezLemaEntityGonzaPc] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ObligatorioRodriguezLemaEntityGonzaPc] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ObligatorioRodriguezLemaEntityGonzaPc] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ObligatorioRodriguezLemaEntityGonzaPc] SET ARITHABORT OFF 
GO
ALTER DATABASE [ObligatorioRodriguezLemaEntityGonzaPc] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [ObligatorioRodriguezLemaEntityGonzaPc] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ObligatorioRodriguezLemaEntityGonzaPc] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ObligatorioRodriguezLemaEntityGonzaPc] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ObligatorioRodriguezLemaEntityGonzaPc] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ObligatorioRodriguezLemaEntityGonzaPc] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ObligatorioRodriguezLemaEntityGonzaPc] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ObligatorioRodriguezLemaEntityGonzaPc] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ObligatorioRodriguezLemaEntityGonzaPc] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ObligatorioRodriguezLemaEntityGonzaPc] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ObligatorioRodriguezLemaEntityGonzaPc] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ObligatorioRodriguezLemaEntityGonzaPc] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ObligatorioRodriguezLemaEntityGonzaPc] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ObligatorioRodriguezLemaEntityGonzaPc] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ObligatorioRodriguezLemaEntityGonzaPc] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ObligatorioRodriguezLemaEntityGonzaPc] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [ObligatorioRodriguezLemaEntityGonzaPc] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ObligatorioRodriguezLemaEntityGonzaPc] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ObligatorioRodriguezLemaEntityGonzaPc] SET  MULTI_USER 
GO
ALTER DATABASE [ObligatorioRodriguezLemaEntityGonzaPc] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ObligatorioRodriguezLemaEntityGonzaPc] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ObligatorioRodriguezLemaEntityGonzaPc] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ObligatorioRodriguezLemaEntityGonzaPc] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ObligatorioRodriguezLemaEntityGonzaPc] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ObligatorioRodriguezLemaEntityGonzaPc] SET QUERY_STORE = OFF
GO
USE [ObligatorioRodriguezLemaEntityGonzaPc]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [ObligatorioRodriguezLemaEntityGonzaPc]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 25/11/2021 10:06:05 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Actividads]    Script Date: 25/11/2021 10:06:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Actividads](
	[id] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[EdadMinima] [int] NOT NULL,
	[EdadMaxima] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Actividads] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiaHorarios]    Script Date: 25/11/2021 10:06:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiaHorarios](
	[Id] [int] NOT NULL,
	[Dia] [nvarchar](128) NOT NULL,
	[Hora] [int] NOT NULL,
	[Cupos] [int] NOT NULL,
 CONSTRAINT [PK_dbo.DiaHorarios] PRIMARY KEY CLUSTERED 
(
	[Id] ASC,
	[Dia] ASC,
	[Hora] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Funcionarios]    Script Date: 25/11/2021 10:06:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Funcionarios](
	[Email] [nvarchar](128) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Encriptada] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Funcionarios] PRIMARY KEY CLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IngresoActividads]    Script Date: 25/11/2021 10:06:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IngresoActividads](
	[FechaDeIngreso] [datetime] NOT NULL,
	[cedula] [nvarchar](128) NOT NULL,
	[idActividad] [int] NOT NULL,
	[Dia] [nvarchar](128) NULL,
	[Hora] [int] NOT NULL,
 CONSTRAINT [PK_dbo.IngresoActividads] PRIMARY KEY CLUSTERED 
(
	[FechaDeIngreso] ASC,
	[cedula] ASC,
	[idActividad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Membresias]    Script Date: 25/11/2021 10:06:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Membresias](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FechaUltimaCuota] [datetime] NOT NULL,
	[Vigencia] [bit] NOT NULL,
	[TotalPagado] [decimal](18, 2) NOT NULL,
	[Descuento] [decimal](18, 2) NOT NULL,
	[CantidadActividades] [int] NULL,
	[Discriminator] [nvarchar](128) NOT NULL,
	[Socio_Cedula] [nvarchar](128) NULL,
 CONSTRAINT [PK_dbo.Membresias] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Socios]    Script Date: 25/11/2021 10:06:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Socios](
	[Cedula] [nvarchar](128) NOT NULL,
	[NombreApellido] [nvarchar](max) NULL,
	[FechaNacimiento] [datetime] NOT NULL,
	[Activo] [bit] NOT NULL,
	[FechaInscripcion] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Socios] PRIMARY KEY CLUSTERED 
(
	[Cedula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ValoresEstaticos]    Script Date: 25/11/2021 10:06:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ValoresEstaticos](
	[Dato] [nvarchar](50) NOT NULL,
	[Valor] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_dbo.ValoresEstaticos] PRIMARY KEY CLUSTERED 
(
	[Dato] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202111241647382_un', N'Repositorios.ClubContext', 0x1F8B0800000000000400ED5DDB6EE4B8117D0F907F10F4B41B78BB6D0F026C8CEE5D78DA76D2C8F802B73DC89B414B749B882EBD22E5D808F26579C827E51742EACAAB4451ED76CF2098175B228BC5E2A90B4B559EFFFEFB3FB35F5FE3C87B8119466932F78F2687BE0793200D51B29EFB3979FAE967FFD75F7EFFBBD97918BF7A5FEB719FD8383A33C173FF9990CDC9748A836718033C895190A5387D2293208DA7204CA7C787877F9A1E1D4D2125E1535A9E37BBCD13826258FC427F5DA44900372407D1651AC20857CFE99B5541D5BB0231C41B10C0B97F0B37294624CD508A7DEF344280F2B082D193EF812449092094C3937B0C57244B93F56A431F80E8EE6D03E9B827106158717ED20EB7DDC4E131DBC4B49D58930A724CD27820C1A34F9554A6F27427D9FA8DD4A8DCCEA97CC91BDB7521BBB97F1A10F4824210FA9EBCDAC922CAD8C8B97F96C62841E984CDA64321BE82EB34A00F9AD9075E35E6A00103C50CFB77E02DF288E4199C27302719880EBC9BFC3142C15FE1DB5DFA7798CC933C8A7826299BF49DF0803EBAC9D20DCCC8DB2D7CAA584794E7A9386F2A4F6CA67173CA3D2D13F2E9D8F7AEE8E2E031820D06B8FDAF289AE09F610233406078030881193DC2AB3481CACAD23A5769FC98C17A2D0A39AA37BE77095EBFC0644D9EE7FE1FA9A25CA05718D60FAAE5EF1344B58CCE21590E35EC752F7B4E8FE2921E430CFAB6694107BC0EA4339BB6F0EA04DD22DFA44CAA4E98AB278F869CF71960581D10B513934BC8CE0C23E077CA66014A8E1AEC43FC2E425AB1DD3A49A898F9111AB980611E81E15A59CF336ACBD1F1CFEFA12EA5969E6E6014A130ED589FFE68B57EF7721730780657204031820969D63BA3D6E58E7ABDC1EC17086CC87C4ED3088264309582AB6582830C6D82C2C90C62CB1ACF6708FC25CD40E608EA76FA47207BA9F81AED30CAA4D538B693E16AB2EC755EDD275D70B76B1D2BB73A866D66F00799584AE20ABCA075012D9DCE94F1CE2D8C8A11F8196D2A17D082EC811B7891A5F16D1A09186EDF3FACD23C0B98AF4F3B06DD816C0D89A3EA5CE409D34C67DDE1E67F84F29CC70045C3E15E4DDB35606F00C6FF48B370F7C15BC24C3001619796BA78226B9C2D93350D80D271770299C84720AEF06967B062C5CA2407DAD8C570F1E0243414D5326B236380E083422741061FEF94B6EE838C0E04D4DB3E8351C1BBC68DC82AF0A04C6A5D4ADF58C5BDF44ED0B99AAE1DE1F2A261B38F6A6807F7C5887E9ECB61A39C627B5D73B152CDECF1D7C8D3474CDF06A4C2E256A2CB6D0483FD998C65080BA95A5D11EE238262B0C829CDD156EB2B5A431A9280B177973BCA4C7403D6A0BDBD9D417ABF02F4586E32FA5395BEA44664150046D6C140411CE4C27D6DF40A46555C1955B1C1EBC34AD641E995A27CF2FB515A47A323F80515B92D07AD6B66BF63F246DC97B281AF20A2BA80CF31633A60170B877DC8443E22C6A1CAA74436FD66A39CB5E3C8B610D796D4C784D453CC7C4A71804AC281BBCC897C9E27A16773B36B71C667312EE9C9A20D3D4BCACEDCFF8322851EEAB51E72D4B9984A247EE4CB80B84EA8BB87047A6C0E93E102E0806254850465437C4231043366F941B4A04686A2122544051CA2167A03228B2D48732DB3F58CB76615F9CD19DCC084B9278BF3B1595E9BC09936AB4822EB93D06CCAC1AD1B85BDB1A00933F681618B1FF502678F51EBB8D24A1B0E279323653127E0D9F2E58A02FB449E752A6F10B26DCFD94EC98C37D377DBE847E850790FB146B2742979277D11EF34DC2A55C4B66F16BD7B033690D07FEF19877EE1AC6C9830266E76814C392C3781C518A36B23587B109A62FB3EF4A9E6D9B8E932DCA28222544C30AB8F3ECA1FD933F84A3411F43D8655108DB5B7E292E60A12392B4FC3F136BC538322450E229962AB3A12950C7AA6B7DE4C4783F7753D84847CBD424878DB4349560F1D63AA11EB21DA804647CD7091D290516F520A3175884493C39CEE1CF8AF30DCD0AEAF35B215B00CF19BCD493050AC8A6550CFD1E30F4FB6E4E2FE2D64D39F5A54E5342C04750B42B9FD6A30DB2145EBB0D3EE84B621D22ACB6921484D1C322412D99ED0C4D883A35B9BC4D152521250AA783A9DA1953BE418E78D5487244C0E708C08EA1443E3F39A77B3695978583D984D0D158AB34BB0D9A064CD552C564FBC5559AEB8F86935BC9A2F2E694C03AC29EA6BB86D56225447D6507A4B97A69C5EA00C933340C0236009964518ABC3380F6F7004F54A8A1357CFAB760CF514F673398D2FDC9C18ED782BC10BBAA998059045525B6767D5B91EAB180511C834E5808B34CAE3C49CA430CFAE8BFC780AF5337B2A7CCD1E4F897F3E905A55B9A750AB9E6BAE7B5349B84A2CAD9CA0722511316185184EC79D11D3D4120E078CA1E0AF4BBC4B0930FA848269B6B6749027A71DA0A54F353344C54584C65839E46B2A79826788D575C52801846560B77FF23D47B5C4ECE7EBA71F84336B04FFE3B7706AEAD72F9E96FAD69E72FB198CA7D83EB5A7247C08E389092FECE9711FBD0438B58F770E250141ED67A8FD0290A296DCF7B29DEAA5A345AE6225E773D1067E166762986734A455CE47B09D863C90998A5CFEABFAF1F6DD4073C157F92AD6827F694FB7AEF6E5C9D5CF06722754FB2AEC096FF70699FC9DCF199E5C0E673846BB26BF8FE739935D83215B6F9A5FA6EC7902FA24BE9942557B2BE859F9686F80C1A7D39C81D141C402199DB38D917A59DE2A04E9BA42D92E1A6DAD2A4FA67D3AE0DEC0159F0A2C71CFF7E6C8D56489F3C12BC9D3E1A7DF4FA2D31873B5A08A29EE286135530D34CED1F491C44C45F89428DE913BBF317EBC2DFB20502AB96E674CF651B2C0643F09E3390125E8D7141A7551A8AA7D842B4DF968F76725E6F80CD9873AA369380E659CF58582E52925E118F295AA60ACE3DE928EF9532CC7C370F68CDF619DA39D4E86DAEBD312B32AB0A602CC76C3725657058592DC958734906C92BC523277562556FB7BD2954C6B398495BEA5D480B22CEBEA0D13184FD880C9EAB76811B17B413BE01224E8096252960AFAC78747C75273FBFE349A4F310E234D625ADB6D2E9EDA0EFABD1113AB537F684DE10564D425679ACFDDCB2484AF73FF9F14B5F709FA2D8727DE5D9643EF5F4A6DE5E87E6E976DA8DDDCFD541CCAF01D8E745CE17BB18BDED2769776584DAD7B48C9936DD4BA3FA2E127A8A9730FDFBDCE7DEB2B7474CE4B80B469EA915268259DA45152B9896820AFA29391899B2D009B7DE22DFFF6C01338F0AE336ACC4FBC43C924489C8D68DDD3951FEDB0677F6B72D7B7E4D7E47F88C1EB8F43816268BB775668B1EDDE459D4D2DF7962CB9B4DC6FC5386B87EDAAE7BD3011168AB70C457573EF47DC1AA8F9FE4317072E74C06FD1771BF356BBEBEBDE9A8CE5B66D2D6197104CE9CA1E608CDC3BAF1D8EE39B6B7A76B6C081BB5B0E063964D756685B5BC54D7D60B56ECC506CDF7A8D65E46868D4626101C7F274DC2B1C6BDDEBCE95EDAA196F5BF64AE8B51B19C2BF53AF9DA22E3BEC7DD395EF3A37F839B55D747D6A78C7B6B9EFB44B6EF0296A1BD3CC95B523DB8546B65A7E374D6DFFEF5EB3EE5EE33E46ECAC7F6CBFF06F2A22DA4903DAF7D3736609A41E83C8F503B935ABED3F043A0A02350BF67D6FDB3A020C0D784A15BF7C828616BBEE0EBBF20B158D1C1F1974CAC8B0A381C9D85AD6DD59A65BC5DCF0A1EFF333B7F9E9A81B9A40CC2D803D1D80BA35BADA9246B408EA96E206F4AFA59A6D8B1E42DDAABD4D4ADBE911D42DBD579D848A24A5FE13BBAE41434BDBB7D72438784B3D1147576DD55EB7FB097689AB6BDEA7ED6FB58FCF65C38A8B906A68DEA54F4F2DD9A00E99FBCF06684C80D1BA25C12A51121808AEB819B34C9ED23A2E9038AA872865352C814CC06946D013552CFA3A8018177F7DA96A14388F1F61B84CAE73B2C909DD32954724FC6136165974AD5F34238A3CCFAE37C59F11DBC616289B88256CAF93CF398AC286EF0B4DDAC84082852CD5977A7696847DB15FBF3594D4BFAB6F225489AF89B4EE60BC8928317C9DACC00B74E1ED1EC32F700D82B7BAF2C64CA4FF2044B1CFA8215C6720C6158D763EFD9562388C5F7FF91F7BF8B6DA73630000, N'6.4.4')
GO
INSERT [dbo].[Actividads] ([id], [Nombre], [EdadMinima], [EdadMaxima]) VALUES (1, N'Futbol', 10, 70)
INSERT [dbo].[Actividads] ([id], [Nombre], [EdadMinima], [EdadMaxima]) VALUES (2, N'Basketball', 12, 50)
INSERT [dbo].[Actividads] ([id], [Nombre], [EdadMinima], [EdadMaxima]) VALUES (3, N'Funcional', 18, 40)
INSERT [dbo].[Actividads] ([id], [Nombre], [EdadMinima], [EdadMaxima]) VALUES (4, N'Natacion', 5, 70)
INSERT [dbo].[Actividads] ([id], [Nombre], [EdadMinima], [EdadMaxima]) VALUES (5, N'Volleyball', 12, 60)
INSERT [dbo].[Actividads] ([id], [Nombre], [EdadMinima], [EdadMaxima]) VALUES (6, N'Boxeo', 18, 40)
INSERT [dbo].[Actividads] ([id], [Nombre], [EdadMinima], [EdadMaxima]) VALUES (7, N'Salsa', 18, 50)
INSERT [dbo].[Actividads] ([id], [Nombre], [EdadMinima], [EdadMaxima]) VALUES (8, N'Karate ', 18, 55)
INSERT [dbo].[Actividads] ([id], [Nombre], [EdadMinima], [EdadMaxima]) VALUES (9, N'Futbol Sala', 5, 80)
INSERT [dbo].[Actividads] ([id], [Nombre], [EdadMinima], [EdadMaxima]) VALUES (10, N'Yoga', 10, 70)
INSERT [dbo].[Actividads] ([id], [Nombre], [EdadMinima], [EdadMaxima]) VALUES (11, N'Pilates', 14, 65)
GO
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (1, N'Lunes', 10, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (1, N'Lunes', 12, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (1, N'Lunes', 14, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (1, N'Lunes', 16, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (1, N'Lunes', 18, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (1, N'Lunes', 20, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (1, N'Miercoles', 10, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (1, N'Miercoles', 12, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (1, N'Miercoles', 14, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (1, N'Miercoles', 16, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (1, N'Miercoles', 18, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (1, N'Miercoles', 20, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (1, N'Viernes', 10, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (1, N'Viernes', 12, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (1, N'Viernes', 14, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (1, N'Viernes', 16, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (1, N'Viernes', 18, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (1, N'Viernes', 20, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (2, N'Lunes', 10, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (2, N'Lunes', 12, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (2, N'Lunes', 14, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (2, N'Lunes', 16, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (2, N'Lunes', 18, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (2, N'Lunes', 20, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (2, N'Miercoles', 10, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (2, N'Miercoles', 12, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (2, N'Miercoles', 14, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (2, N'Miercoles', 16, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (2, N'Miercoles', 18, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (2, N'Miercoles', 20, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (2, N'Viernes', 10, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (2, N'Viernes', 12, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (2, N'Viernes', 14, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (2, N'Viernes', 16, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (2, N'Viernes', 18, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (2, N'Viernes', 20, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (3, N'Lunes', 10, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (3, N'Lunes', 12, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (3, N'Lunes', 14, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (3, N'Lunes', 16, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (3, N'Lunes', 18, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (3, N'Lunes', 20, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (3, N'Miercoles', 10, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (3, N'Miercoles', 12, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (3, N'Miercoles', 14, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (3, N'Miercoles', 16, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (3, N'Miercoles', 18, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (3, N'Miercoles', 20, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (3, N'Viernes', 10, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (3, N'Viernes', 12, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (3, N'Viernes', 14, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (3, N'Viernes', 16, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (3, N'Viernes', 18, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (3, N'Viernes', 20, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (4, N'Jueves', 10, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (4, N'Jueves', 12, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (4, N'Jueves', 14, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (4, N'Jueves', 16, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (4, N'Jueves', 18, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (4, N'Jueves', 20, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (4, N'Martes', 10, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (4, N'Martes', 12, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (4, N'Martes', 14, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (4, N'Martes', 16, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (4, N'Martes', 18, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (4, N'Martes', 20, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (5, N'Jueves', 10, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (5, N'Jueves', 12, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (5, N'Jueves', 14, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (5, N'Jueves', 16, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (5, N'Jueves', 18, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (5, N'Jueves', 20, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (5, N'Martes', 10, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (5, N'Martes', 12, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (5, N'Martes', 14, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (5, N'Martes', 16, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (5, N'Martes', 18, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (5, N'Martes', 20, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (6, N'Jueves', 10, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (6, N'Jueves', 12, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (6, N'Jueves', 14, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (6, N'Jueves', 16, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (6, N'Jueves', 18, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (6, N'Jueves', 20, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (6, N'Martes', 10, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (6, N'Martes', 12, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (6, N'Martes', 14, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (6, N'Martes', 16, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (6, N'Martes', 18, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (6, N'Martes', 20, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (7, N'Jueves', 10, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (7, N'Jueves', 12, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (7, N'Jueves', 14, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (7, N'Jueves', 16, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (7, N'Jueves', 18, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (7, N'Jueves', 20, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (7, N'Martes', 10, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (7, N'Martes', 12, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (7, N'Martes', 14, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (7, N'Martes', 16, 50)
GO
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (7, N'Martes', 18, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (7, N'Martes', 20, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (7, N'Viernes', 10, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (7, N'Viernes', 12, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (7, N'Viernes', 14, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (7, N'Viernes', 16, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (7, N'Viernes', 18, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (7, N'Viernes', 20, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (8, N'Martes', 10, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (8, N'Martes', 12, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (8, N'Martes', 14, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (8, N'Viernes', 10, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (8, N'Viernes', 12, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (8, N'Viernes', 14, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (9, N'Jueves', 12, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (9, N'Jueves', 14, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (9, N'Jueves', 16, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (9, N'Jueves', 18, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (9, N'Jueves', 20, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (9, N'Martes', 16, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (9, N'Martes', 18, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (9, N'Martes', 20, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (9, N'Viernes', 16, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (9, N'Viernes', 18, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (9, N'Viernes', 20, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (10, N'Miercoles', 14, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (10, N'Miercoles', 16, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (10, N'Miercoles', 18, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (10, N'Miercoles', 20, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (10, N'Viernes', 10, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (10, N'Viernes', 12, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (11, N'Miercoles', 20, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (11, N'Viernes', 14, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (11, N'Viernes', 16, 50)
INSERT [dbo].[DiaHorarios] ([Id], [Dia], [Hora], [Cupos]) VALUES (11, N'Viernes', 18, 50)
GO
INSERT [dbo].[Funcionarios] ([Email], [Password], [Encriptada]) VALUES (N'gonrodca@gmail.com ', N' Hola1234 ', N' 5iABzY7I9XBx0TdNCwFwxw==')
INSERT [dbo].[Funcionarios] ([Email], [Password], [Encriptada]) VALUES (N'nuevo@gmail.com ', N' Holaasdfsdaf34 ', N' 5iABzY7I9XBx0TdNCwFwxw==')
INSERT [dbo].[Funcionarios] ([Email], [Password], [Encriptada]) VALUES (N'otro@bien.com ', N' Holaasdfsdaf34 ', N' 5iABzY7I9XBx0TdNCwFwxw==')
GO
INSERT [dbo].[IngresoActividads] ([FechaDeIngreso], [cedula], [idActividad], [Dia], [Hora]) VALUES (CAST(N'2021-11-01T00:00:00.000' AS DateTime), N'45256646', 1, N'Lunes', 20)
INSERT [dbo].[IngresoActividads] ([FechaDeIngreso], [cedula], [idActividad], [Dia], [Hora]) VALUES (CAST(N'2021-11-01T00:00:00.000' AS DateTime), N'49029978', 1, N'Lunes', 20)
INSERT [dbo].[IngresoActividads] ([FechaDeIngreso], [cedula], [idActividad], [Dia], [Hora]) VALUES (CAST(N'2021-11-08T00:00:00.000' AS DateTime), N'45256646', 1, N'Lunes', 20)
INSERT [dbo].[IngresoActividads] ([FechaDeIngreso], [cedula], [idActividad], [Dia], [Hora]) VALUES (CAST(N'2021-11-08T00:00:00.000' AS DateTime), N'49029978', 1, N'Lunes', 20)
INSERT [dbo].[IngresoActividads] ([FechaDeIngreso], [cedula], [idActividad], [Dia], [Hora]) VALUES (CAST(N'2021-11-15T00:00:00.000' AS DateTime), N'45256646', 1, N'Lunes', 20)
INSERT [dbo].[IngresoActividads] ([FechaDeIngreso], [cedula], [idActividad], [Dia], [Hora]) VALUES (CAST(N'2021-11-15T00:00:00.000' AS DateTime), N'49029978', 1, N'Lunes', 20)
INSERT [dbo].[IngresoActividads] ([FechaDeIngreso], [cedula], [idActividad], [Dia], [Hora]) VALUES (CAST(N'2021-11-22T00:00:00.000' AS DateTime), N'45256646', 1, N'Lunes', 20)
INSERT [dbo].[IngresoActividads] ([FechaDeIngreso], [cedula], [idActividad], [Dia], [Hora]) VALUES (CAST(N'2021-11-22T00:00:00.000' AS DateTime), N'49029978', 1, N'Lunes', 20)
INSERT [dbo].[IngresoActividads] ([FechaDeIngreso], [cedula], [idActividad], [Dia], [Hora]) VALUES (CAST(N'2021-10-02T00:00:00.000' AS DateTime), N'45256646', 2, N'Lunes', 18)
INSERT [dbo].[IngresoActividads] ([FechaDeIngreso], [cedula], [idActividad], [Dia], [Hora]) VALUES (CAST(N'2021-10-02T00:00:00.000' AS DateTime), N'49029978', 2, N'Lunes', 18)
INSERT [dbo].[IngresoActividads] ([FechaDeIngreso], [cedula], [idActividad], [Dia], [Hora]) VALUES (CAST(N'2021-10-09T00:00:00.000' AS DateTime), N'45256646', 2, N'Lunes', 18)
INSERT [dbo].[IngresoActividads] ([FechaDeIngreso], [cedula], [idActividad], [Dia], [Hora]) VALUES (CAST(N'2021-10-09T00:00:00.000' AS DateTime), N'49029978', 2, N'Lunes', 18)
INSERT [dbo].[IngresoActividads] ([FechaDeIngreso], [cedula], [idActividad], [Dia], [Hora]) VALUES (CAST(N'2021-10-15T00:00:00.000' AS DateTime), N'45256646', 2, N'Lunes', 18)
INSERT [dbo].[IngresoActividads] ([FechaDeIngreso], [cedula], [idActividad], [Dia], [Hora]) VALUES (CAST(N'2021-10-15T00:00:00.000' AS DateTime), N'49029978', 2, N'Lunes', 18)
INSERT [dbo].[IngresoActividads] ([FechaDeIngreso], [cedula], [idActividad], [Dia], [Hora]) VALUES (CAST(N'2021-10-23T00:00:00.000' AS DateTime), N'45256646', 2, N'Lunes', 18)
INSERT [dbo].[IngresoActividads] ([FechaDeIngreso], [cedula], [idActividad], [Dia], [Hora]) VALUES (CAST(N'2021-10-23T00:00:00.000' AS DateTime), N'49029978', 2, N'Lunes', 18)
GO
SET IDENTITY_INSERT [dbo].[Membresias] ON 

INSERT [dbo].[Membresias] ([Id], [FechaUltimaCuota], [Vigencia], [TotalPagado], [Descuento], [CantidadActividades], [Discriminator], [Socio_Cedula]) VALUES (1, CAST(N'2021-11-24T14:36:20.000' AS DateTime), 1, CAST(23375.00 AS Decimal(18, 2)), CAST(4125.00 AS Decimal(18, 2)), 55, N'Cuponera', N'49029978')
INSERT [dbo].[Membresias] ([Id], [FechaUltimaCuota], [Vigencia], [TotalPagado], [Descuento], [CantidadActividades], [Discriminator], [Socio_Cedula]) VALUES (3, CAST(N'2021-11-24T14:50:58.000' AS DateTime), 1, CAST(29750.00 AS Decimal(18, 2)), CAST(5250.00 AS Decimal(18, 2)), 70, N'Cuponera', N'12345678')
INSERT [dbo].[Membresias] ([Id], [FechaUltimaCuota], [Vigencia], [TotalPagado], [Descuento], [CantidadActividades], [Discriminator], [Socio_Cedula]) VALUES (4, CAST(N'2021-11-24T14:52:06.000' AS DateTime), 1, CAST(31450.00 AS Decimal(18, 2)), CAST(5550.00 AS Decimal(18, 2)), 74, N'Cuponera', N'87654321')
INSERT [dbo].[Membresias] ([Id], [FechaUltimaCuota], [Vigencia], [TotalPagado], [Descuento], [CantidadActividades], [Discriminator], [Socio_Cedula]) VALUES (5, CAST(N'2021-11-25T10:03:10.000' AS DateTime), 1, CAST(3500.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, N'PaseLibre', N'45256646')
SET IDENTITY_INSERT [dbo].[Membresias] OFF
GO
INSERT [dbo].[Socios] ([Cedula], [NombreApellido], [FechaNacimiento], [Activo], [FechaInscripcion]) VALUES (N'12345678', N'Jose perez', CAST(N'2010-01-01T00:00:00.000' AS DateTime), 1, CAST(N'2021-11-24T00:00:00.000' AS DateTime))
INSERT [dbo].[Socios] ([Cedula], [NombreApellido], [FechaNacimiento], [Activo], [FechaInscripcion]) VALUES (N'15975321', N'Sol perez', CAST(N'1990-01-01T00:00:00.000' AS DateTime), 0, CAST(N'2021-11-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Socios] ([Cedula], [NombreApellido], [FechaNacimiento], [Activo], [FechaInscripcion]) VALUES (N'45256646', N'Gonzalo Rodriguez', CAST(N'1992-01-22T00:00:00.000' AS DateTime), 1, CAST(N'2021-11-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Socios] ([Cedula], [NombreApellido], [FechaNacimiento], [Activo], [FechaInscripcion]) VALUES (N'45612378', N'Juan carlos', CAST(N'1990-01-01T00:00:00.000' AS DateTime), 0, CAST(N'2021-11-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Socios] ([Cedula], [NombreApellido], [FechaNacimiento], [Activo], [FechaInscripcion]) VALUES (N'49029978', N'ignacio lema', CAST(N'1996-05-04T00:00:00.000' AS DateTime), 0, CAST(N'2021-11-24T00:00:00.000' AS DateTime))
INSERT [dbo].[Socios] ([Cedula], [NombreApellido], [FechaNacimiento], [Activo], [FechaInscripcion]) VALUES (N'65452362', N'Ricardo Fort', CAST(N'1969-01-01T00:00:00.000' AS DateTime), 0, CAST(N'2021-11-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Socios] ([Cedula], [NombreApellido], [FechaNacimiento], [Activo], [FechaInscripcion]) VALUES (N'87654321', N'Maria rodriguez', CAST(N'1995-05-05T00:00:00.000' AS DateTime), 1, CAST(N'2021-11-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[ValoresEstaticos] ([Dato], [Valor]) VALUES (N'AntiguedadMin', CAST(5.00 AS Decimal(18, 2)))
INSERT [dbo].[ValoresEstaticos] ([Dato], [Valor]) VALUES (N'CantidadParaDescCup', CAST(15.00 AS Decimal(18, 2)))
INSERT [dbo].[ValoresEstaticos] ([Dato], [Valor]) VALUES (N'CuotaMensualPL', CAST(3500.00 AS Decimal(18, 2)))
INSERT [dbo].[ValoresEstaticos] ([Dato], [Valor]) VALUES (N'DescuentoPL', CAST(0.80 AS Decimal(18, 2)))
INSERT [dbo].[ValoresEstaticos] ([Dato], [Valor]) VALUES (N'MontoUnitarioActividad', CAST(500.00 AS Decimal(18, 2)))
INSERT [dbo].[ValoresEstaticos] ([Dato], [Valor]) VALUES (N'TasaDescCuponera', CAST(0.85 AS Decimal(18, 2)))
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Nombre]    Script Date: 25/11/2021 10:06:05 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Nombre] ON [dbo].[Actividads]
(
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Id]    Script Date: 25/11/2021 10:06:05 ******/
CREATE NONCLUSTERED INDEX [IX_Id] ON [dbo].[DiaHorarios]
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_cedula]    Script Date: 25/11/2021 10:06:05 ******/
CREATE NONCLUSTERED INDEX [IX_cedula] ON [dbo].[IngresoActividads]
(
	[cedula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_idActividad_Dia_Hora]    Script Date: 25/11/2021 10:06:05 ******/
CREATE NONCLUSTERED INDEX [IX_idActividad_Dia_Hora] ON [dbo].[IngresoActividads]
(
	[idActividad] ASC,
	[Dia] ASC,
	[Hora] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Socio_Cedula]    Script Date: 25/11/2021 10:06:05 ******/
CREATE NONCLUSTERED INDEX [IX_Socio_Cedula] ON [dbo].[Membresias]
(
	[Socio_Cedula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DiaHorarios]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DiaHorarios_dbo.Actividads_Id] FOREIGN KEY([Id])
REFERENCES [dbo].[Actividads] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DiaHorarios] CHECK CONSTRAINT [FK_dbo.DiaHorarios_dbo.Actividads_Id]
GO
ALTER TABLE [dbo].[IngresoActividads]  WITH CHECK ADD  CONSTRAINT [FK_dbo.IngresoActividads_dbo.DiaHorarios_idActividad_Dia_Hora] FOREIGN KEY([idActividad], [Dia], [Hora])
REFERENCES [dbo].[DiaHorarios] ([Id], [Dia], [Hora])
GO
ALTER TABLE [dbo].[IngresoActividads] CHECK CONSTRAINT [FK_dbo.IngresoActividads_dbo.DiaHorarios_idActividad_Dia_Hora]
GO
ALTER TABLE [dbo].[IngresoActividads]  WITH CHECK ADD  CONSTRAINT [FK_dbo.IngresoActividads_dbo.Socios_cedula] FOREIGN KEY([cedula])
REFERENCES [dbo].[Socios] ([Cedula])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[IngresoActividads] CHECK CONSTRAINT [FK_dbo.IngresoActividads_dbo.Socios_cedula]
GO
ALTER TABLE [dbo].[Membresias]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Membresias_dbo.Socios_Socio_Cedula] FOREIGN KEY([Socio_Cedula])
REFERENCES [dbo].[Socios] ([Cedula])
GO
ALTER TABLE [dbo].[Membresias] CHECK CONSTRAINT [FK_dbo.Membresias_dbo.Socios_Socio_Cedula]
GO
USE [master]
GO
ALTER DATABASE [ObligatorioRodriguezLemaEntityGonzaPc] SET  READ_WRITE 
GO
