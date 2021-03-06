USE [master]
GO
/****** Object:  Database [Agencia_Viagens]    Script Date: 15/12/2021 01:35:25 ******/
CREATE DATABASE [Agencia_Viagens]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Agencia_Viagens', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Agencia_Viagens.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Agencia_Viagens_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Agencia_Viagens_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Agencia_Viagens] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Agencia_Viagens].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Agencia_Viagens] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Agencia_Viagens] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Agencia_Viagens] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Agencia_Viagens] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Agencia_Viagens] SET ARITHABORT OFF 
GO
ALTER DATABASE [Agencia_Viagens] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Agencia_Viagens] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Agencia_Viagens] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Agencia_Viagens] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Agencia_Viagens] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Agencia_Viagens] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Agencia_Viagens] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Agencia_Viagens] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Agencia_Viagens] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Agencia_Viagens] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Agencia_Viagens] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Agencia_Viagens] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Agencia_Viagens] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Agencia_Viagens] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Agencia_Viagens] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Agencia_Viagens] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Agencia_Viagens] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Agencia_Viagens] SET RECOVERY FULL 
GO
ALTER DATABASE [Agencia_Viagens] SET  MULTI_USER 
GO
ALTER DATABASE [Agencia_Viagens] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Agencia_Viagens] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Agencia_Viagens] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Agencia_Viagens] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Agencia_Viagens] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Agencia_Viagens] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Agencia_Viagens', N'ON'
GO
ALTER DATABASE [Agencia_Viagens] SET QUERY_STORE = OFF
GO
USE [Agencia_Viagens]
GO
/****** Object:  Table [dbo].[Agencia]    Script Date: 15/12/2021 01:35:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agencia](
	[CNPJ] [int] NOT NULL,
	[Nome] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[CNPJ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cadastra]    Script Date: 15/12/2021 01:35:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cadastra](
	[fk_Agencia_CNPJ] [int] NULL,
	[fk_Cliente_Id_Clientes] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 15/12/2021 01:35:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[Id_Clientes] [int] NOT NULL,
	[Nome] [varchar](1) NULL,
	[CPF] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Clientes] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Destino]    Script Date: 15/12/2021 01:35:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Destino](
	[Localizacao] [varchar](1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Localizacao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[E__Assoc__1_Vende]    Script Date: 15/12/2021 01:35:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[E__Assoc__1_Vende](
	[fk_Agencia_CNPJ] [int] NULL,
	[fk_Passagem_Id_Passagem] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[E__Assoc__3_Compra]    Script Date: 15/12/2021 01:35:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[E__Assoc__3_Compra](
	[fk_Passagem_Id_Passagem] [int] NULL,
	[fk_Cliente_Id_Clientes] [int] NULL,
	[Formas_Pagamento] [varchar](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[E__Assoc__4_Viaja]    Script Date: 15/12/2021 01:35:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[E__Assoc__4_Viaja](
	[fk_Destino_Localizacao] [varchar](1) NULL,
	[fk_Cliente_Id_Clientes] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Para]    Script Date: 15/12/2021 01:35:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Para](
	[fk_Passagem_Id_Passagem] [int] NULL,
	[fk_Destino_Localizacao] [varchar](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Passagem]    Script Date: 15/12/2021 01:35:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Passagem](
	[Quantidade] [smallint] NOT NULL,
	[Id_Passagem] [int] NOT NULL,
	[Valor] [smallint] NOT NULL,
	[fk_Promocao_Desconto] [smallint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Passagem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Promocao]    Script Date: 15/12/2021 01:35:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Promocao](
	[Desconto] [smallint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Desconto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Cadastra]  WITH CHECK ADD  CONSTRAINT [FK_Cadastra_1] FOREIGN KEY([fk_Agencia_CNPJ])
REFERENCES [dbo].[Agencia] ([CNPJ])
GO
ALTER TABLE [dbo].[Cadastra] CHECK CONSTRAINT [FK_Cadastra_1]
GO
ALTER TABLE [dbo].[Cadastra]  WITH CHECK ADD  CONSTRAINT [FK_Cadastra_2] FOREIGN KEY([fk_Cliente_Id_Clientes])
REFERENCES [dbo].[Cliente] ([Id_Clientes])
GO
ALTER TABLE [dbo].[Cadastra] CHECK CONSTRAINT [FK_Cadastra_2]
GO
ALTER TABLE [dbo].[E__Assoc__1_Vende]  WITH CHECK ADD  CONSTRAINT [FK_E__Assoc__1_Vende_1] FOREIGN KEY([fk_Agencia_CNPJ])
REFERENCES [dbo].[Agencia] ([CNPJ])
GO
ALTER TABLE [dbo].[E__Assoc__1_Vende] CHECK CONSTRAINT [FK_E__Assoc__1_Vende_1]
GO
ALTER TABLE [dbo].[E__Assoc__1_Vende]  WITH CHECK ADD  CONSTRAINT [FK_E__Assoc__1_Vende_2] FOREIGN KEY([fk_Passagem_Id_Passagem])
REFERENCES [dbo].[Passagem] ([Id_Passagem])
GO
ALTER TABLE [dbo].[E__Assoc__1_Vende] CHECK CONSTRAINT [FK_E__Assoc__1_Vende_2]
GO
ALTER TABLE [dbo].[E__Assoc__3_Compra]  WITH CHECK ADD  CONSTRAINT [FK_E__Assoc__3_Compra_1] FOREIGN KEY([fk_Passagem_Id_Passagem])
REFERENCES [dbo].[Passagem] ([Id_Passagem])
GO
ALTER TABLE [dbo].[E__Assoc__3_Compra] CHECK CONSTRAINT [FK_E__Assoc__3_Compra_1]
GO
ALTER TABLE [dbo].[E__Assoc__3_Compra]  WITH CHECK ADD  CONSTRAINT [FK_E__Assoc__3_Compra_2] FOREIGN KEY([fk_Cliente_Id_Clientes])
REFERENCES [dbo].[Cliente] ([Id_Clientes])
GO
ALTER TABLE [dbo].[E__Assoc__3_Compra] CHECK CONSTRAINT [FK_E__Assoc__3_Compra_2]
GO
ALTER TABLE [dbo].[E__Assoc__4_Viaja]  WITH CHECK ADD  CONSTRAINT [FK_E__Assoc__4_Viaja_1] FOREIGN KEY([fk_Destino_Localizacao])
REFERENCES [dbo].[Destino] ([Localizacao])
GO
ALTER TABLE [dbo].[E__Assoc__4_Viaja] CHECK CONSTRAINT [FK_E__Assoc__4_Viaja_1]
GO
ALTER TABLE [dbo].[E__Assoc__4_Viaja]  WITH CHECK ADD  CONSTRAINT [FK_E__Assoc__4_Viaja_2] FOREIGN KEY([fk_Cliente_Id_Clientes])
REFERENCES [dbo].[Cliente] ([Id_Clientes])
GO
ALTER TABLE [dbo].[E__Assoc__4_Viaja] CHECK CONSTRAINT [FK_E__Assoc__4_Viaja_2]
GO
ALTER TABLE [dbo].[Para]  WITH CHECK ADD  CONSTRAINT [FK_Para_1] FOREIGN KEY([fk_Passagem_Id_Passagem])
REFERENCES [dbo].[Passagem] ([Id_Passagem])
GO
ALTER TABLE [dbo].[Para] CHECK CONSTRAINT [FK_Para_1]
GO
ALTER TABLE [dbo].[Para]  WITH CHECK ADD  CONSTRAINT [FK_Para_2] FOREIGN KEY([fk_Destino_Localizacao])
REFERENCES [dbo].[Destino] ([Localizacao])
GO
ALTER TABLE [dbo].[Para] CHECK CONSTRAINT [FK_Para_2]
GO
ALTER TABLE [dbo].[Passagem]  WITH CHECK ADD  CONSTRAINT [FK_Passagem_2] FOREIGN KEY([fk_Promocao_Desconto])
REFERENCES [dbo].[Promocao] ([Desconto])
GO
ALTER TABLE [dbo].[Passagem] CHECK CONSTRAINT [FK_Passagem_2]
GO
USE [master]
GO
ALTER DATABASE [Agencia_Viagens] SET  READ_WRITE 
GO
