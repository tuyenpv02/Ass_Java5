USE [master]
GO
/****** Object:  Database [FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041]    Script Date: 7/25/2023 12:31:48 AM ******/
CREATE DATABASE [FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041] SET ARITHABORT OFF 
GO
ALTER DATABASE [FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041] SET  ENABLE_BROKER 
GO
ALTER DATABASE [FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041] SET  MULTI_USER 
GO
ALTER DATABASE [FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041] SET QUERY_STORE = OFF
GO
USE [FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041]
GO
/****** Object:  Table [dbo].[ChiTietSP]    Script Date: 7/25/2023 12:31:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietSP](
	[Id] [uniqueidentifier] NOT NULL,
	[IdSP] [uniqueidentifier] NULL,
	[IdNsx] [uniqueidentifier] NULL,
	[IdMauSac] [uniqueidentifier] NULL,
	[IdDongSP] [uniqueidentifier] NULL,
	[NamBH] [int] NULL,
	[MoTa] [nvarchar](50) NULL,
	[SoLuongTon] [int] NULL,
	[GiaNhap] [decimal](20, 0) NULL,
	[GiaBan] [decimal](20, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChucVu]    Script Date: 7/25/2023 12:31:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucVu](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CuaHang]    Script Date: 7/25/2023 12:31:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CuaHang](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[ThanhPho] [nvarchar](50) NULL,
	[QuocGia] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DongSP]    Script Date: 7/25/2023 12:31:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DongSP](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GioHang]    Script Date: 7/25/2023 12:31:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioHang](
	[Id] [uniqueidentifier] NOT NULL,
	[IdKH] [uniqueidentifier] NULL,
	[IdNV] [uniqueidentifier] NULL,
	[Ma] [varchar](20) NULL,
	[NgayTao] [date] NULL,
	[NgayThanhToan] [date] NULL,
	[TenNguoiNhan] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[Sdt] [varchar](30) NULL,
	[TinhTrang] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GioHangChiTiet]    Script Date: 7/25/2023 12:31:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioHangChiTiet](
	[IdGioHang] [uniqueidentifier] NOT NULL,
	[IdChiTietSP] [uniqueidentifier] NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [decimal](20, 0) NULL,
	[DonGiaKhiGiam] [decimal](20, 0) NULL,
 CONSTRAINT [PK_GioHangCT] PRIMARY KEY CLUSTERED 
(
	[IdGioHang] ASC,
	[IdChiTietSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 7/25/2023 12:31:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[Id] [uniqueidentifier] NOT NULL,
	[IdKH] [uniqueidentifier] NULL,
	[IdNV] [uniqueidentifier] NULL,
	[Ma] [varchar](20) NULL,
	[NgayTao] [date] NULL,
	[NgayThanhToan] [date] NULL,
	[NgayShip] [date] NULL,
	[NgayNhan] [date] NULL,
	[TinhTrang] [int] NULL,
	[TenNguoiNhan] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[Sdt] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDonChiTiet]    Script Date: 7/25/2023 12:31:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonChiTiet](
	[IdHoaDon] [uniqueidentifier] NOT NULL,
	[IdChiTietSP] [uniqueidentifier] NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [decimal](20, 0) NULL,
 CONSTRAINT [PK_HoaDonCT] PRIMARY KEY CLUSTERED 
(
	[IdHoaDon] ASC,
	[IdChiTietSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 7/25/2023 12:31:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](30) NULL,
	[TenDem] [nvarchar](30) NULL,
	[Ho] [nvarchar](30) NULL,
	[NgaySinh] [date] NULL,
	[Sdt] [varchar](30) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[ThanhPho] [nvarchar](50) NULL,
	[QuocGia] [nvarchar](50) NULL,
	[MatKhau] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MauSac]    Script Date: 7/25/2023 12:31:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MauSac](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 7/25/2023 12:31:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](30) NULL,
	[TenDem] [nvarchar](30) NULL,
	[Ho] [nvarchar](30) NULL,
	[GioiTinh] [nvarchar](10) NULL,
	[NgaySinh] [date] NULL,
	[DiaChi] [nvarchar](100) NULL,
	[Sdt] [varchar](30) NULL,
	[MatKhau] [varchar](max) NULL,
	[IdCH] [uniqueidentifier] NULL,
	[IdCV] [uniqueidentifier] NULL,
	[IdGuiBC] [uniqueidentifier] NULL,
	[TrangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NSX]    Script Date: 7/25/2023 12:31:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NSX](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 7/25/2023 12:31:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ChiTietSP] ([Id], [IdSP], [IdNsx], [IdMauSac], [IdDongSP], [NamBH], [MoTa], [SoLuongTon], [GiaNhap], [GiaBan]) VALUES (N'd90a4db7-d0cf-4e18-bc17-31c29794df58', N'c3ee4e39-6331-4c80-84cf-2e22722fe777', N'da6783cf-686a-461e-86f3-09c05c5b2f1f', N'232be8c9-1e7e-4bc0-8eaf-1ec403b732a7', N'a9f52fd3-6ae4-4a65-b1f7-074f87f74ee9', 1, N'dêw', 33, CAST(22 AS Decimal(20, 0)), CAST(44 AS Decimal(20, 0)))
INSERT [dbo].[ChiTietSP] ([Id], [IdSP], [IdNsx], [IdMauSac], [IdDongSP], [NamBH], [MoTa], [SoLuongTon], [GiaNhap], [GiaBan]) VALUES (N'2345a988-df8e-4705-bdaf-40c48a11c9d1', N'c3ee4e39-6331-4c80-84cf-2e22722fe777', N'e90180dd-3e30-42f1-ac46-4bc86004a21a', N'e72cf62b-5f43-4138-b45c-3a967b694ab1', N'c69a1ee6-4a8a-4433-91be-55be5413fcf9', 2, N'2', 2, CAST(2 AS Decimal(20, 0)), CAST(55 AS Decimal(20, 0)))
INSERT [dbo].[ChiTietSP] ([Id], [IdSP], [IdNsx], [IdMauSac], [IdDongSP], [NamBH], [MoTa], [SoLuongTon], [GiaNhap], [GiaBan]) VALUES (N'44f856be-4454-4ce1-8ca5-5a8c0d77e1f6', N'97082c3d-9052-4c23-af43-64eec762547c', N'da6783cf-686a-461e-86f3-09c05c5b2f1f', N'232be8c9-1e7e-4bc0-8eaf-1ec403b732a7', N'a9f52fd3-6ae4-4a65-b1f7-074f87f74ee9', 3, N'222', 33, CAST(22 AS Decimal(20, 0)), CAST(43 AS Decimal(20, 0)))
INSERT [dbo].[ChiTietSP] ([Id], [IdSP], [IdNsx], [IdMauSac], [IdDongSP], [NamBH], [MoTa], [SoLuongTon], [GiaNhap], [GiaBan]) VALUES (N'3c781974-55a9-470a-ac7b-7c6288d4fa61', N'b51f0bad-a161-4c58-9f0a-a74d2cb7d7a3', N'ed420e82-76f5-49ed-aa16-20e20b075aee', N'232be8c9-1e7e-4bc0-8eaf-1ec403b732a7', N'a9f52fd3-6ae4-4a65-b1f7-074f87f74ee9', 8, N'dđ', 23, CAST(24 AS Decimal(20, 0)), CAST(56 AS Decimal(20, 0)))
INSERT [dbo].[ChiTietSP] ([Id], [IdSP], [IdNsx], [IdMauSac], [IdDongSP], [NamBH], [MoTa], [SoLuongTon], [GiaNhap], [GiaBan]) VALUES (N'3f48bda4-1fdd-40fc-9019-882025429f3d', N'c3ee4e39-6331-4c80-84cf-2e22722fe777', N'da6783cf-686a-461e-86f3-09c05c5b2f1f', N'232be8c9-1e7e-4bc0-8eaf-1ec403b732a7', N'a9f52fd3-6ae4-4a65-b1f7-074f87f74ee9', 333, N'333333', 333, CAST(333333 AS Decimal(20, 0)), CAST(33333333 AS Decimal(20, 0)))
INSERT [dbo].[ChiTietSP] ([Id], [IdSP], [IdNsx], [IdMauSac], [IdDongSP], [NamBH], [MoTa], [SoLuongTon], [GiaNhap], [GiaBan]) VALUES (N'f77d1f60-99ae-4dc7-a342-96e12ce4b782', N'c3ee4e39-6331-4c80-84cf-2e22722fe777', N'e90180dd-3e30-42f1-ac46-4bc86004a21a', N'e00328ac-3886-425f-b25f-3c61f1734046', N'a9f52fd3-6ae4-4a65-b1f7-074f87f74ee9', 3, N'đ ewe  ', 3, CAST(24 AS Decimal(20, 0)), CAST(4234 AS Decimal(20, 0)))
INSERT [dbo].[ChiTietSP] ([Id], [IdSP], [IdNsx], [IdMauSac], [IdDongSP], [NamBH], [MoTa], [SoLuongTon], [GiaNhap], [GiaBan]) VALUES (N'67b59866-bb9f-4a82-93c8-b13c2a665ca6', N'c3ee4e39-6331-4c80-84cf-2e22722fe777', N'da6783cf-686a-461e-86f3-09c05c5b2f1f', N'232be8c9-1e7e-4bc0-8eaf-1ec403b732a7', N'a9f52fd3-6ae4-4a65-b1f7-074f87f74ee9', 2, N'33', 33, CAST(333 AS Decimal(20, 0)), CAST(333 AS Decimal(20, 0)))
INSERT [dbo].[ChiTietSP] ([Id], [IdSP], [IdNsx], [IdMauSac], [IdDongSP], [NamBH], [MoTa], [SoLuongTon], [GiaNhap], [GiaBan]) VALUES (N'6ddc5695-bcfe-480e-a886-e3565d66a597', N'914d055f-3fe8-4e13-a76b-e300bfad08fd', N'da6783cf-686a-461e-86f3-09c05c5b2f1f', N'232be8c9-1e7e-4bc0-8eaf-1ec403b732a7', N'c69a1ee6-4a8a-4433-91be-55be5413fcf9', 44, N'2', 33, CAST(3 AS Decimal(20, 0)), CAST(4221 AS Decimal(20, 0)))
GO
INSERT [dbo].[ChucVu] ([Id], [Ma], [Ten]) VALUES (N'd892eabc-f222-4b23-a3be-293fc44dad2f', N'GDPC', N'Giám Đốc Pháp Chế')
INSERT [dbo].[ChucVu] ([Id], [Ma], [Ten]) VALUES (N'cf1a1e62-5915-4b6f-993f-38150b844f60', N'GDTC', N'Giám Đốc Tài Chính')
INSERT [dbo].[ChucVu] ([Id], [Ma], [Ten]) VALUES (N'45b211db-08d1-47f6-8f07-3864e78d8998', N'CT', N'Chủ Tịch')
INSERT [dbo].[ChucVu] ([Id], [Ma], [Ten]) VALUES (N'78488d2b-e7ed-4120-be6f-440a4a0b0037', N'GD', N'Giám Đốc')
INSERT [dbo].[ChucVu] ([Id], [Ma], [Ten]) VALUES (N'76696bed-8918-4595-9248-59ab691b8dc4', N'GDMKT', N'Giám Đốc Marketing')
INSERT [dbo].[ChucVu] ([Id], [Ma], [Ten]) VALUES (N'b5ad13bf-406d-4abe-a23e-66506cad6d3f', N'GDCN', N'Giám Đốc Công Nghệ')
INSERT [dbo].[ChucVu] ([Id], [Ma], [Ten]) VALUES (N'bf86d92d-afa2-468a-98d9-6e6cfc4eb454', N'PGD', N'Phó Giám Đốc')
INSERT [dbo].[ChucVu] ([Id], [Ma], [Ten]) VALUES (N'242f6269-55d2-4364-ab60-766feb76bb5b', N'GDDH', N'Giám Đốc Điều Hành')
INSERT [dbo].[ChucVu] ([Id], [Ma], [Ten]) VALUES (N'accaa9aa-a43a-4395-a67e-7d454cbb6d5b', N'GDTM', N'Giám Đốc Thương Mại')
GO
INSERT [dbo].[CuaHang] ([Id], [Ma], [Ten], [DiaChi], [ThanhPho], [QuocGia]) VALUES (N'72bb9be7-50d7-4f2b-b274-08029a29378b', N'CH6', N'Cửa Hàng FPT SHOP', N'Số 190 Xã Đàn', N'Hà Nội', N'Việt Nam')
INSERT [dbo].[CuaHang] ([Id], [Ma], [Ten], [DiaChi], [ThanhPho], [QuocGia]) VALUES (N'579fa644-6a58-4f80-bc70-16cdf37bf644', N'CH1', N'Cửa Hàng FPT SHOP', N'Số 45 Thái Hà', N'Hải Phòng', N'Việt Nam')
INSERT [dbo].[CuaHang] ([Id], [Ma], [Ten], [DiaChi], [ThanhPho], [QuocGia]) VALUES (N'b88a7fa9-bb24-4c3c-8639-3fb27fcfd149', N'CH9', N'Cửa Hàng FPT SHOP', N'Số 182 Lê Duẩn', N'Hà Nội', N'Việt Nam')
INSERT [dbo].[CuaHang] ([Id], [Ma], [Ten], [DiaChi], [ThanhPho], [QuocGia]) VALUES (N'80bfb5f3-7478-4f3b-b1ef-50870c407586', N'1231', N'2313122', N'HNêw', N'3123', N'1231')
INSERT [dbo].[CuaHang] ([Id], [Ma], [Ten], [DiaChi], [ThanhPho], [QuocGia]) VALUES (N'61728b5b-5c8d-4b1f-8fcb-58916ec7a10e', N'CH2', N'Cửa Hàng FPT SHOP', N'Số 92 Hai Bà Trưng', N'Hà Nội', N'Việt Nam')
INSERT [dbo].[CuaHang] ([Id], [Ma], [Ten], [DiaChi], [ThanhPho], [QuocGia]) VALUES (N'71e7aa57-1d6c-41a4-a035-78c6575b25ab', N'CH4', N'Cửa Hàng FPT SHOP', N'Số 3-5 Đại La', N'Hà Nội', N'Việt Nam')
INSERT [dbo].[CuaHang] ([Id], [Ma], [Ten], [DiaChi], [ThanhPho], [QuocGia]) VALUES (N'fc7eebb6-af97-4583-87c6-7ae93682aef4', N'CH8', N'Cửa Hàng FPT SHOP', N'Số 422 Cầu Giấy', N'Hà Nội', N'Việt Nam')
INSERT [dbo].[CuaHang] ([Id], [Ma], [Ten], [DiaChi], [ThanhPho], [QuocGia]) VALUES (N'41480f97-7139-441e-bae3-ae70d386bc06', N'CH3', N'Cửa Hàng FPT SHOP', N'Số 46 Hồ Tùng Mậu', N'Hà Nội', N'Việt Nam')
INSERT [dbo].[CuaHang] ([Id], [Ma], [Ten], [DiaChi], [ThanhPho], [QuocGia]) VALUES (N'b999f408-4e9f-460e-b436-b91df1cc254b', N'CH5', N'Cửa Hàng FPT SHOP', N'Số 325 Phố Huế', N'Bắc Ninh', N'Việt Nam')
INSERT [dbo].[CuaHang] ([Id], [Ma], [Ten], [DiaChi], [ThanhPho], [QuocGia]) VALUES (N'510165fc-92bb-4514-8304-bf14e8c90028', N'CH7', N'Cửa Hàng FPT SHOP', N'Số 216 Thái Hà', N'Hải Phòng', N'Việt Nam')
GO
INSERT [dbo].[DongSP] ([Id], [Ma], [Ten]) VALUES (N'a9f52fd3-6ae4-4a65-b1f7-074f87f74ee9', N'DSP7', N'Swift 1232123')
INSERT [dbo].[DongSP] ([Id], [Ma], [Ten]) VALUES (N'c69a1ee6-4a8a-4433-91be-55be5413fcf9', N'DSP5', N'Precision')
INSERT [dbo].[DongSP] ([Id], [Ma], [Ten]) VALUES (N'99f6cad7-377d-4c9a-8b53-69f15993b19f', N'DSP9', N'Predator')
INSERT [dbo].[DongSP] ([Id], [Ma], [Ten]) VALUES (N'c6645648-b141-474d-88cf-6c423c14b0ee', N'DSP6', N'Aspire')
INSERT [dbo].[DongSP] ([Id], [Ma], [Ten]) VALUES (N'920aa047-99fd-4ba9-858e-93467d25b4b1', N'DSP2', N'Vostro')
INSERT [dbo].[DongSP] ([Id], [Ma], [Ten]) VALUES (N'f987f5ec-4876-4d71-9859-93fdb39f64f7', N'DSP1', N'Inspiron')
INSERT [dbo].[DongSP] ([Id], [Ma], [Ten]) VALUES (N'ee89d7cc-2fcb-45e4-92e3-96b071d5a9ba', N'3123', N'1231')
INSERT [dbo].[DongSP] ([Id], [Ma], [Ten]) VALUES (N'974fb9bf-405e-4e02-bd10-bcc6904881c1', N'DSP4', N'XPS')
INSERT [dbo].[DongSP] ([Id], [Ma], [Ten]) VALUES (N'098437df-dc06-49ba-96fe-e6835f8098fa', N'DSP3', N'Latitude')
INSERT [dbo].[DongSP] ([Id], [Ma], [Ten]) VALUES (N'ab750110-80e8-4630-8e1f-f7dcc7936d90', N'   q', N'  q')
GO
INSERT [dbo].[GioHang] ([Id], [IdKH], [IdNV], [Ma], [NgayTao], [NgayThanhToan], [TenNguoiNhan], [DiaChi], [Sdt], [TinhTrang]) VALUES (N'4eb79cba-6234-44d8-8d31-0a3672cff99c', N'da020882-5d11-4fea-8c02-b95394c5c419', NULL, N'GH0KH3', CAST(N'2023-06-23' AS Date), NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[GioHang] ([Id], [IdKH], [IdNV], [Ma], [NgayTao], [NgayThanhToan], [TenNguoiNhan], [DiaChi], [Sdt], [TinhTrang]) VALUES (N'9c342676-351e-4c18-976c-8d10e3605ee9', N'5ef136d0-6e30-4538-83d7-79d6e1925305', NULL, N'GH0KH1', CAST(N'2023-06-10' AS Date), NULL, NULL, NULL, NULL, 0)
GO
INSERT [dbo].[GioHangChiTiet] ([IdGioHang], [IdChiTietSP], [SoLuong], [DonGia], [DonGiaKhiGiam]) VALUES (N'4eb79cba-6234-44d8-8d31-0a3672cff99c', N'44f856be-4454-4ce1-8ca5-5a8c0d77e1f6', 2, CAST(43 AS Decimal(20, 0)), NULL)
INSERT [dbo].[GioHangChiTiet] ([IdGioHang], [IdChiTietSP], [SoLuong], [DonGia], [DonGiaKhiGiam]) VALUES (N'4eb79cba-6234-44d8-8d31-0a3672cff99c', N'3c781974-55a9-470a-ac7b-7c6288d4fa61', 1, CAST(56 AS Decimal(20, 0)), NULL)
INSERT [dbo].[GioHangChiTiet] ([IdGioHang], [IdChiTietSP], [SoLuong], [DonGia], [DonGiaKhiGiam]) VALUES (N'9c342676-351e-4c18-976c-8d10e3605ee9', N'2345a988-df8e-4705-bdaf-40c48a11c9d1', 1, CAST(55 AS Decimal(20, 0)), NULL)
INSERT [dbo].[GioHangChiTiet] ([IdGioHang], [IdChiTietSP], [SoLuong], [DonGia], [DonGiaKhiGiam]) VALUES (N'9c342676-351e-4c18-976c-8d10e3605ee9', N'44f856be-4454-4ce1-8ca5-5a8c0d77e1f6', 1, CAST(43 AS Decimal(20, 0)), NULL)
GO
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayTao], [NgayThanhToan], [NgayShip], [NgayNhan], [TinhTrang], [TenNguoiNhan], [DiaChi], [Sdt]) VALUES (N'daff3704-1511-46e9-a41a-0e66034cba12', NULL, N'cd57332a-3d19-40a6-9a15-60d38752b7d6', N'HD22', CAST(N'2023-06-10' AS Date), NULL, NULL, NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayTao], [NgayThanhToan], [NgayShip], [NgayNhan], [TinhTrang], [TenNguoiNhan], [DiaChi], [Sdt]) VALUES (N'3eaef5de-81f1-4ac6-ae4c-101f5339ba2b', NULL, N'cd57332a-3d19-40a6-9a15-60d38752b7d6', N'HD25', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayTao], [NgayThanhToan], [NgayShip], [NgayNhan], [TinhTrang], [TenNguoiNhan], [DiaChi], [Sdt]) VALUES (N'9ca534b6-c83e-4f0d-9bf5-11a5102b84b3', N'da020882-5d11-4fea-8c02-b95394c5c419', N'cd57332a-3d19-40a6-9a15-60d38752b7d6', N'HD38', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayTao], [NgayThanhToan], [NgayShip], [NgayNhan], [TinhTrang], [TenNguoiNhan], [DiaChi], [Sdt]) VALUES (N'837f79d3-a6dd-4f24-a304-2324fbe5b0af', NULL, N'cd57332a-3d19-40a6-9a15-60d38752b7d6', N'HD7', CAST(N'2023-06-10' AS Date), NULL, NULL, NULL, 2, NULL, NULL, NULL)
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayTao], [NgayThanhToan], [NgayShip], [NgayNhan], [TinhTrang], [TenNguoiNhan], [DiaChi], [Sdt]) VALUES (N'36ca5485-b8d2-43eb-b02e-2797cdd51d3d', N'5ef136d0-6e30-4538-83d7-79d6e1925305', NULL, N'HD15', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayTao], [NgayThanhToan], [NgayShip], [NgayNhan], [TinhTrang], [TenNguoiNhan], [DiaChi], [Sdt]) VALUES (N'edeeb172-e529-4d88-8ba2-2b80418ed5ac', NULL, NULL, N'HD2', CAST(N'2022-02-22' AS Date), CAST(N'2022-02-22' AS Date), CAST(N'2022-01-25' AS Date), CAST(N'2022-01-22' AS Date), 1, N'Trần Quốc Hoàn', N'103 Phú Diễn Hà Nội', N'0913043020')
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayTao], [NgayThanhToan], [NgayShip], [NgayNhan], [TinhTrang], [TenNguoiNhan], [DiaChi], [Sdt]) VALUES (N'2fce6195-9f18-4d1e-a90f-2d2f4c43c016', NULL, N'cd57332a-3d19-40a6-9a15-60d38752b7d6', N'HD34', CAST(N'2023-06-10' AS Date), NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayTao], [NgayThanhToan], [NgayShip], [NgayNhan], [TinhTrang], [TenNguoiNhan], [DiaChi], [Sdt]) VALUES (N'0a69ef91-bad4-461e-aad2-31233c6acc58', NULL, N'cd57332a-3d19-40a6-9a15-60d38752b7d6', N'HD11', CAST(N'2023-06-10' AS Date), NULL, NULL, NULL, 2, NULL, NULL, NULL)
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayTao], [NgayThanhToan], [NgayShip], [NgayNhan], [TinhTrang], [TenNguoiNhan], [DiaChi], [Sdt]) VALUES (N'6077b0dd-afaa-4da4-8858-3aebed61e49e', NULL, N'cd57332a-3d19-40a6-9a15-60d38752b7d6', N'HD32', CAST(N'2023-06-10' AS Date), NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayTao], [NgayThanhToan], [NgayShip], [NgayNhan], [TinhTrang], [TenNguoiNhan], [DiaChi], [Sdt]) VALUES (N'd670155e-47c3-413a-8d2b-3d5813445976', NULL, N'cd57332a-3d19-40a6-9a15-60d38752b7d6', N'HD30', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayTao], [NgayThanhToan], [NgayShip], [NgayNhan], [TinhTrang], [TenNguoiNhan], [DiaChi], [Sdt]) VALUES (N'1d8f80f5-64d2-4fc7-94e5-45bcf7e32ede', NULL, N'cd57332a-3d19-40a6-9a15-60d38752b7d6', N'HD33', CAST(N'2023-06-10' AS Date), NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayTao], [NgayThanhToan], [NgayShip], [NgayNhan], [TinhTrang], [TenNguoiNhan], [DiaChi], [Sdt]) VALUES (N'5b781858-b75a-4f17-b0c9-6489f5702c37', N'5ef136d0-6e30-4538-83d7-79d6e1925305', NULL, N'HD13', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayTao], [NgayThanhToan], [NgayShip], [NgayNhan], [TinhTrang], [TenNguoiNhan], [DiaChi], [Sdt]) VALUES (N'a601cc43-644d-4d50-9a01-658d7bdb9c76', NULL, N'cd57332a-3d19-40a6-9a15-60d38752b7d6', N'HD12', CAST(N'2023-06-09' AS Date), NULL, NULL, NULL, 2, NULL, NULL, NULL)
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayTao], [NgayThanhToan], [NgayShip], [NgayNhan], [TinhTrang], [TenNguoiNhan], [DiaChi], [Sdt]) VALUES (N'52227a5a-ab4b-4f7b-96c6-770a2f988a27', NULL, NULL, N'HD1', CAST(N'2022-01-01' AS Date), CAST(N'2022-01-01' AS Date), CAST(N'2022-01-01' AS Date), CAST(N'2022-01-01' AS Date), 1, N'Nguyễn Ngọc Anh', N'1 Trịnh Văn Bô Hà Nội', N'0826574700')
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayTao], [NgayThanhToan], [NgayShip], [NgayNhan], [TinhTrang], [TenNguoiNhan], [DiaChi], [Sdt]) VALUES (N'3521db6c-d2e3-4ed8-8cd8-788895f11140', NULL, N'cd57332a-3d19-40a6-9a15-60d38752b7d6', N'HD10', CAST(N'2023-06-10' AS Date), NULL, NULL, NULL, 2, NULL, NULL, NULL)
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayTao], [NgayThanhToan], [NgayShip], [NgayNhan], [TinhTrang], [TenNguoiNhan], [DiaChi], [Sdt]) VALUES (N'fdc58904-ef35-4444-ac84-83b11f3b3206', N'5ef136d0-6e30-4538-83d7-79d6e1925305', N'cd57332a-3d19-40a6-9a15-60d38752b7d6', N'HD27', CAST(N'2023-06-10' AS Date), NULL, NULL, NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayTao], [NgayThanhToan], [NgayShip], [NgayNhan], [TinhTrang], [TenNguoiNhan], [DiaChi], [Sdt]) VALUES (N'0b88951c-1a1c-4ee9-94e4-85eacf74b537', NULL, NULL, N'HD4', CAST(N'2023-06-10' AS Date), NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayTao], [NgayThanhToan], [NgayShip], [NgayNhan], [TinhTrang], [TenNguoiNhan], [DiaChi], [Sdt]) VALUES (N'b7f36823-dd6e-487a-b79f-8edb8e4ec4a8', NULL, N'cd57332a-3d19-40a6-9a15-60d38752b7d6', N'HD39', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayTao], [NgayThanhToan], [NgayShip], [NgayNhan], [TinhTrang], [TenNguoiNhan], [DiaChi], [Sdt]) VALUES (N'9457a137-6526-4195-8751-96e739eeb7bb', N'5ef136d0-6e30-4538-83d7-79d6e1925305', N'cd57332a-3d19-40a6-9a15-60d38752b7d6', N'HD29', CAST(N'2023-06-10' AS Date), NULL, NULL, NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayTao], [NgayThanhToan], [NgayShip], [NgayNhan], [TinhTrang], [TenNguoiNhan], [DiaChi], [Sdt]) VALUES (N'a3df49bd-1184-4111-b2fe-9eb129ec02a8', N'5ef136d0-6e30-4538-83d7-79d6e1925305', NULL, N'HD26', CAST(N'2023-06-10' AS Date), NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayTao], [NgayThanhToan], [NgayShip], [NgayNhan], [TinhTrang], [TenNguoiNhan], [DiaChi], [Sdt]) VALUES (N'852efdbc-6996-476b-bf9b-9f535c2b452d', NULL, NULL, N'HD9', CAST(N'2023-06-10' AS Date), NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayTao], [NgayThanhToan], [NgayShip], [NgayNhan], [TinhTrang], [TenNguoiNhan], [DiaChi], [Sdt]) VALUES (N'f0fa459d-94f9-48c5-a83f-a6a6dea0c5f2', NULL, N'cd57332a-3d19-40a6-9a15-60d38752b7d6', N'HD20', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayTao], [NgayThanhToan], [NgayShip], [NgayNhan], [TinhTrang], [TenNguoiNhan], [DiaChi], [Sdt]) VALUES (N'93310dee-f694-40fa-b8cc-ab1d11375bcc', NULL, N'cd57332a-3d19-40a6-9a15-60d38752b7d6', N'HD28', CAST(N'2023-06-10' AS Date), NULL, NULL, NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayTao], [NgayThanhToan], [NgayShip], [NgayNhan], [TinhTrang], [TenNguoiNhan], [DiaChi], [Sdt]) VALUES (N'a991769c-33a4-45cd-97dd-af8667b7aecb', NULL, N'cd57332a-3d19-40a6-9a15-60d38752b7d6', N'HD24', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayTao], [NgayThanhToan], [NgayShip], [NgayNhan], [TinhTrang], [TenNguoiNhan], [DiaChi], [Sdt]) VALUES (N'a7dbdb57-bcd4-4ed1-914d-b81cc7f6ae07', NULL, N'cd57332a-3d19-40a6-9a15-60d38752b7d6', N'HD31', CAST(N'2023-06-10' AS Date), NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayTao], [NgayThanhToan], [NgayShip], [NgayNhan], [TinhTrang], [TenNguoiNhan], [DiaChi], [Sdt]) VALUES (N'0bb1fbfa-7d80-4c2f-9bf7-bc3735f211da', NULL, NULL, N'HD8', CAST(N'2023-06-10' AS Date), NULL, NULL, NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayTao], [NgayThanhToan], [NgayShip], [NgayNhan], [TinhTrang], [TenNguoiNhan], [DiaChi], [Sdt]) VALUES (N'0321852c-69bb-4609-a5fb-c4367d863c78', NULL, NULL, N'HD6', CAST(N'2023-06-10' AS Date), NULL, NULL, NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayTao], [NgayThanhToan], [NgayShip], [NgayNhan], [TinhTrang], [TenNguoiNhan], [DiaChi], [Sdt]) VALUES (N'7c88f60b-b54e-42c8-8413-c753cccbae51', N'5ef136d0-6e30-4538-83d7-79d6e1925305', NULL, N'HD36', CAST(N'2023-06-10' AS Date), NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayTao], [NgayThanhToan], [NgayShip], [NgayNhan], [TinhTrang], [TenNguoiNhan], [DiaChi], [Sdt]) VALUES (N'85abbf71-138b-4159-afd3-c82bfabe5265', N'5ef136d0-6e30-4538-83d7-79d6e1925305', NULL, N'HD19', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayTao], [NgayThanhToan], [NgayShip], [NgayNhan], [TinhTrang], [TenNguoiNhan], [DiaChi], [Sdt]) VALUES (N'000a6bca-b7cd-40b3-8214-c84353fe98a5', N'da020882-5d11-4fea-8c02-b95394c5c419', NULL, N'HD37', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayTao], [NgayThanhToan], [NgayShip], [NgayNhan], [TinhTrang], [TenNguoiNhan], [DiaChi], [Sdt]) VALUES (N'6fa4aac9-8ae4-41cb-8650-d0448b287ca0', NULL, NULL, N'HD3', CAST(N'2022-03-23' AS Date), CAST(N'2022-02-22' AS Date), CAST(N'2022-02-28' AS Date), CAST(N'2022-02-27' AS Date), 1, N'Lê Ngọc Sáng', N'104 Hoàng Tôn Hà Nội', N'0923043021')
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayTao], [NgayThanhToan], [NgayShip], [NgayNhan], [TinhTrang], [TenNguoiNhan], [DiaChi], [Sdt]) VALUES (N'1bc83bf0-5487-4b0f-8b72-e33b02a3c2d5', N'5ef136d0-6e30-4538-83d7-79d6e1925305', NULL, N'HD16', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayTao], [NgayThanhToan], [NgayShip], [NgayNhan], [TinhTrang], [TenNguoiNhan], [DiaChi], [Sdt]) VALUES (N'd7ffa847-190a-4a6c-aed7-ec4f336642de', N'5ef136d0-6e30-4538-83d7-79d6e1925305', NULL, N'HD35', CAST(N'2023-06-10' AS Date), NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayTao], [NgayThanhToan], [NgayShip], [NgayNhan], [TinhTrang], [TenNguoiNhan], [DiaChi], [Sdt]) VALUES (N'0b323b33-2b96-4db8-8c62-fda11cad350b', NULL, N'cd57332a-3d19-40a6-9a15-60d38752b7d6', N'HD5', CAST(N'2023-06-10' AS Date), NULL, NULL, NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayTao], [NgayThanhToan], [NgayShip], [NgayNhan], [TinhTrang], [TenNguoiNhan], [DiaChi], [Sdt]) VALUES (N'6e08221b-b1ba-477f-91d3-fe005461e00c', N'5ef136d0-6e30-4538-83d7-79d6e1925305', NULL, N'HD14', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL)
GO
INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (N'daff3704-1511-46e9-a41a-0e66034cba12', N'2345a988-df8e-4705-bdaf-40c48a11c9d1', 1, CAST(55 AS Decimal(20, 0)))
INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (N'3eaef5de-81f1-4ac6-ae4c-101f5339ba2b', N'f77d1f60-99ae-4dc7-a342-96e12ce4b782', 1, CAST(4234 AS Decimal(20, 0)))
INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (N'9ca534b6-c83e-4f0d-9bf5-11a5102b84b3', N'd90a4db7-d0cf-4e18-bc17-31c29794df58', 1, CAST(44 AS Decimal(20, 0)))
INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (N'9ca534b6-c83e-4f0d-9bf5-11a5102b84b3', N'2345a988-df8e-4705-bdaf-40c48a11c9d1', 1, CAST(55 AS Decimal(20, 0)))
INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (N'9ca534b6-c83e-4f0d-9bf5-11a5102b84b3', N'44f856be-4454-4ce1-8ca5-5a8c0d77e1f6', 2, CAST(43 AS Decimal(20, 0)))
INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (N'9ca534b6-c83e-4f0d-9bf5-11a5102b84b3', N'f77d1f60-99ae-4dc7-a342-96e12ce4b782', 1, CAST(4234 AS Decimal(20, 0)))
INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (N'9ca534b6-c83e-4f0d-9bf5-11a5102b84b3', N'67b59866-bb9f-4a82-93c8-b13c2a665ca6', 1, CAST(333 AS Decimal(20, 0)))
INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (N'837f79d3-a6dd-4f24-a304-2324fbe5b0af', N'2345a988-df8e-4705-bdaf-40c48a11c9d1', 1, CAST(55 AS Decimal(20, 0)))
INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (N'837f79d3-a6dd-4f24-a304-2324fbe5b0af', N'f77d1f60-99ae-4dc7-a342-96e12ce4b782', 3, CAST(4234 AS Decimal(20, 0)))
INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (N'837f79d3-a6dd-4f24-a304-2324fbe5b0af', N'67b59866-bb9f-4a82-93c8-b13c2a665ca6', 1, CAST(333 AS Decimal(20, 0)))
INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (N'36ca5485-b8d2-43eb-b02e-2797cdd51d3d', N'44f856be-4454-4ce1-8ca5-5a8c0d77e1f6', 1, CAST(43 AS Decimal(20, 0)))
INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (N'36ca5485-b8d2-43eb-b02e-2797cdd51d3d', N'67b59866-bb9f-4a82-93c8-b13c2a665ca6', 1, CAST(333 AS Decimal(20, 0)))
INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (N'edeeb172-e529-4d88-8ba2-2b80418ed5ac', N'd90a4db7-d0cf-4e18-bc17-31c29794df58', 1, CAST(44 AS Decimal(20, 0)))
INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (N'edeeb172-e529-4d88-8ba2-2b80418ed5ac', N'2345a988-df8e-4705-bdaf-40c48a11c9d1', 1, CAST(55 AS Decimal(20, 0)))
INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (N'edeeb172-e529-4d88-8ba2-2b80418ed5ac', N'f77d1f60-99ae-4dc7-a342-96e12ce4b782', 1, CAST(4234 AS Decimal(20, 0)))
INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (N'0a69ef91-bad4-461e-aad2-31233c6acc58', N'f77d1f60-99ae-4dc7-a342-96e12ce4b782', 2, CAST(4234 AS Decimal(20, 0)))
INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (N'5b781858-b75a-4f17-b0c9-6489f5702c37', N'2345a988-df8e-4705-bdaf-40c48a11c9d1', 1, CAST(55 AS Decimal(20, 0)))
INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (N'5b781858-b75a-4f17-b0c9-6489f5702c37', N'44f856be-4454-4ce1-8ca5-5a8c0d77e1f6', 2, CAST(43 AS Decimal(20, 0)))
INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (N'5b781858-b75a-4f17-b0c9-6489f5702c37', N'3f48bda4-1fdd-40fc-9019-882025429f3d', 1, CAST(33333333 AS Decimal(20, 0)))
INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (N'5b781858-b75a-4f17-b0c9-6489f5702c37', N'67b59866-bb9f-4a82-93c8-b13c2a665ca6', 2, CAST(333 AS Decimal(20, 0)))
INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (N'a601cc43-644d-4d50-9a01-658d7bdb9c76', N'2345a988-df8e-4705-bdaf-40c48a11c9d1', 1, CAST(55 AS Decimal(20, 0)))
INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (N'3521db6c-d2e3-4ed8-8cd8-788895f11140', N'6ddc5695-bcfe-480e-a886-e3565d66a597', 3, CAST(4221 AS Decimal(20, 0)))
INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (N'fdc58904-ef35-4444-ac84-83b11f3b3206', N'd90a4db7-d0cf-4e18-bc17-31c29794df58', 1, CAST(44 AS Decimal(20, 0)))
INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (N'fdc58904-ef35-4444-ac84-83b11f3b3206', N'2345a988-df8e-4705-bdaf-40c48a11c9d1', 1, CAST(55 AS Decimal(20, 0)))
INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (N'fdc58904-ef35-4444-ac84-83b11f3b3206', N'44f856be-4454-4ce1-8ca5-5a8c0d77e1f6', 1, CAST(43 AS Decimal(20, 0)))
INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (N'fdc58904-ef35-4444-ac84-83b11f3b3206', N'67b59866-bb9f-4a82-93c8-b13c2a665ca6', 1, CAST(333 AS Decimal(20, 0)))
INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (N'0b88951c-1a1c-4ee9-94e4-85eacf74b537', N'2345a988-df8e-4705-bdaf-40c48a11c9d1', 3, CAST(2 AS Decimal(20, 0)))
INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (N'b7f36823-dd6e-487a-b79f-8edb8e4ec4a8', N'44f856be-4454-4ce1-8ca5-5a8c0d77e1f6', 1, CAST(43 AS Decimal(20, 0)))
INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (N'9457a137-6526-4195-8751-96e739eeb7bb', N'44f856be-4454-4ce1-8ca5-5a8c0d77e1f6', 1, CAST(43 AS Decimal(20, 0)))
INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (N'9457a137-6526-4195-8751-96e739eeb7bb', N'3c781974-55a9-470a-ac7b-7c6288d4fa61', 1, CAST(56 AS Decimal(20, 0)))
INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (N'9457a137-6526-4195-8751-96e739eeb7bb', N'67b59866-bb9f-4a82-93c8-b13c2a665ca6', 1, CAST(333 AS Decimal(20, 0)))
INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (N'a3df49bd-1184-4111-b2fe-9eb129ec02a8', N'2345a988-df8e-4705-bdaf-40c48a11c9d1', 1, CAST(55 AS Decimal(20, 0)))
INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (N'a3df49bd-1184-4111-b2fe-9eb129ec02a8', N'67b59866-bb9f-4a82-93c8-b13c2a665ca6', 1, CAST(333 AS Decimal(20, 0)))
INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (N'852efdbc-6996-476b-bf9b-9f535c2b452d', N'f77d1f60-99ae-4dc7-a342-96e12ce4b782', 3, CAST(4234 AS Decimal(20, 0)))
INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (N'f0fa459d-94f9-48c5-a83f-a6a6dea0c5f2', N'2345a988-df8e-4705-bdaf-40c48a11c9d1', 2, CAST(55 AS Decimal(20, 0)))
INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (N'93310dee-f694-40fa-b8cc-ab1d11375bcc', N'67b59866-bb9f-4a82-93c8-b13c2a665ca6', 2, CAST(333 AS Decimal(20, 0)))
INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (N'0bb1fbfa-7d80-4c2f-9bf7-bc3735f211da', N'2345a988-df8e-4705-bdaf-40c48a11c9d1', 1, CAST(55 AS Decimal(20, 0)))
INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (N'0bb1fbfa-7d80-4c2f-9bf7-bc3735f211da', N'f77d1f60-99ae-4dc7-a342-96e12ce4b782', 1, CAST(44 AS Decimal(20, 0)))
INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (N'0321852c-69bb-4609-a5fb-c4367d863c78', N'2345a988-df8e-4705-bdaf-40c48a11c9d1', 3, CAST(2 AS Decimal(20, 0)))
INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (N'7c88f60b-b54e-42c8-8413-c753cccbae51', N'2345a988-df8e-4705-bdaf-40c48a11c9d1', 5, CAST(55 AS Decimal(20, 0)))
INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (N'7c88f60b-b54e-42c8-8413-c753cccbae51', N'44f856be-4454-4ce1-8ca5-5a8c0d77e1f6', 3, CAST(43 AS Decimal(20, 0)))
INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (N'85abbf71-138b-4159-afd3-c82bfabe5265', N'd90a4db7-d0cf-4e18-bc17-31c29794df58', 1, CAST(44 AS Decimal(20, 0)))
INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (N'85abbf71-138b-4159-afd3-c82bfabe5265', N'2345a988-df8e-4705-bdaf-40c48a11c9d1', 1, CAST(55 AS Decimal(20, 0)))
INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (N'000a6bca-b7cd-40b3-8214-c84353fe98a5', N'67b59866-bb9f-4a82-93c8-b13c2a665ca6', 1, CAST(333 AS Decimal(20, 0)))
INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (N'6fa4aac9-8ae4-41cb-8650-d0448b287ca0', N'2345a988-df8e-4705-bdaf-40c48a11c9d1', 2, CAST(55 AS Decimal(20, 0)))
INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (N'1bc83bf0-5487-4b0f-8b72-e33b02a3c2d5', N'44f856be-4454-4ce1-8ca5-5a8c0d77e1f6', 1, CAST(43 AS Decimal(20, 0)))
INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (N'1bc83bf0-5487-4b0f-8b72-e33b02a3c2d5', N'6ddc5695-bcfe-480e-a886-e3565d66a597', 1, CAST(4221 AS Decimal(20, 0)))
INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (N'd7ffa847-190a-4a6c-aed7-ec4f336642de', N'44f856be-4454-4ce1-8ca5-5a8c0d77e1f6', 1, CAST(43 AS Decimal(20, 0)))
INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (N'0b323b33-2b96-4db8-8c62-fda11cad350b', N'2345a988-df8e-4705-bdaf-40c48a11c9d1', 2, CAST(2 AS Decimal(20, 0)))
INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (N'0b323b33-2b96-4db8-8c62-fda11cad350b', N'6ddc5695-bcfe-480e-a886-e3565d66a597', 2, CAST(4221 AS Decimal(20, 0)))
INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (N'6e08221b-b1ba-477f-91d3-fe005461e00c', N'2345a988-df8e-4705-bdaf-40c48a11c9d1', 1, CAST(55 AS Decimal(20, 0)))
INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (N'6e08221b-b1ba-477f-91d3-fe005461e00c', N'3f48bda4-1fdd-40fc-9019-882025429f3d', 1, CAST(33333333 AS Decimal(20, 0)))
GO
INSERT [dbo].[KhachHang] ([Id], [Ma], [Ten], [TenDem], [Ho], [NgaySinh], [Sdt], [DiaChi], [ThanhPho], [QuocGia], [MatKhau]) VALUES (N'6c0e2400-efca-4c5e-a096-15db054c0cbd', N'KH2', N'Thi', N'Xuân', N'Phạm', CAST(N'1992-02-07' AS Date), N'0926574701', N'2 Trịnh Văn Bô', N'Hải Phòng', N'Việt Nam', N'1234')
INSERT [dbo].[KhachHang] ([Id], [Ma], [Ten], [TenDem], [Ho], [NgaySinh], [Sdt], [DiaChi], [ThanhPho], [QuocGia], [MatKhau]) VALUES (N'1a7701f6-eb4a-442d-8548-41c47814671f', N'KH19', N'Ninh', N'Mạnh', N'Phạm', CAST(N'1993-08-08' AS Date), N'0916574718', N'19 Hàng Gà', N'Hà Nội', N'Việt Nam', N'33333')
INSERT [dbo].[KhachHang] ([Id], [Ma], [Ten], [TenDem], [Ho], [NgaySinh], [Sdt], [DiaChi], [ThanhPho], [QuocGia], [MatKhau]) VALUES (N'a63c91d7-ca41-4c44-912a-5ac315be6cf7', N'KH4', N'Tồn', N'Bá', N'Trần', CAST(N'1994-04-09' AS Date), N'0946574703', N'4 Trịnh Văn Bô', N'Hải Phòng', N'Việt Nam', N'5555')
INSERT [dbo].[KhachHang] ([Id], [Ma], [Ten], [TenDem], [Ho], [NgaySinh], [Sdt], [DiaChi], [ThanhPho], [QuocGia], [MatKhau]) VALUES (N'5ef136d0-6e30-4538-83d7-79d6e1925305', N'KH1', N'Anh', N'Ngọc', N'Nguyễn', CAST(N'2003-01-01' AS Date), N'0916574700', N'1 Hàng Gà', N'Hà Nội', N'Việt Nam', N'123')
INSERT [dbo].[KhachHang] ([Id], [Ma], [Ten], [TenDem], [Ho], [NgaySinh], [Sdt], [DiaChi], [ThanhPho], [QuocGia], [MatKhau]) VALUES (N'b5e25190-1de4-439e-b5b1-829cb099fc3a', N'KH20', N'My', N'Trà', N'Nguyễn', CAST(N'1994-09-09' AS Date), N'0916574719', N'20 Trịnh Văn Bô', N'Hà Nội', N'Việt Nam', N'12345678')
INSERT [dbo].[KhachHang] ([Id], [Ma], [Ten], [TenDem], [Ho], [NgaySinh], [Sdt], [DiaChi], [ThanhPho], [QuocGia], [MatKhau]) VALUES (N'da020882-5d11-4fea-8c02-b95394c5c419', N'KH3', N'Bá', N'Xuân', N'Nguyễn', CAST(N'1993-03-08' AS Date), N'0936574702', N'3 Hoàng Hoa Thám', N'Hà Nội', N'Việt Nam', N'1111')
GO
INSERT [dbo].[MauSac] ([Id], [Ma], [Ten]) VALUES (N'232be8c9-1e7e-4bc0-8eaf-1ec403b732a7', N'MS2', N'Xám')
INSERT [dbo].[MauSac] ([Id], [Ma], [Ten]) VALUES (N'e72cf62b-5f43-4138-b45c-3a967b694ab1', N'MS4', N'Đỏ')
INSERT [dbo].[MauSac] ([Id], [Ma], [Ten]) VALUES (N'e00328ac-3886-425f-b25f-3c61f1734046', N'MS5', N'Xanh')
INSERT [dbo].[MauSac] ([Id], [Ma], [Ten]) VALUES (N'85840638-8ff1-4743-a97b-ac085dd522ee', N'MS6', N'Vàng')
INSERT [dbo].[MauSac] ([Id], [Ma], [Ten]) VALUES (N'e52db9d5-1e86-4bff-b2c0-d31891c7d070', N'MS3', N'Trắng')
INSERT [dbo].[MauSac] ([Id], [Ma], [Ten]) VALUES (N'7c14140e-7e57-4189-8ab9-fdb8af36f932', N'MS1', N'Đen')
INSERT [dbo].[MauSac] ([Id], [Ma], [Ten]) VALUES (N'3ade0d65-a75a-412a-8511-ff12deccb3c1', N'mau1231', N'đen tím đỏ')
GO
INSERT [dbo].[NhanVien] ([Id], [Ma], [Ten], [TenDem], [Ho], [GioiTinh], [NgaySinh], [DiaChi], [Sdt], [MatKhau], [IdCH], [IdCV], [IdGuiBC], [TrangThai]) VALUES (N'cd57332a-3d19-40a6-9a15-60d38752b7d6', N'admin', N'tôi la', N'là', N'phạm', N'nam', CAST(N'2000-02-03' AS Date), N'HN', N'09999', N'123', N'72bb9be7-50d7-4f2b-b274-08029a29378b', N'd892eabc-f222-4b23-a3be-293fc44dad2f', NULL, 1)
INSERT [dbo].[NhanVien] ([Id], [Ma], [Ten], [TenDem], [Ho], [GioiTinh], [NgaySinh], [DiaChi], [Sdt], [MatKhau], [IdCH], [IdCV], [IdGuiBC], [TrangThai]) VALUES (N'4ec46e85-b995-4915-97aa-69509a6d5641', N'admin2', N'tww', N'văn', N'111111111112', N'Nam', CAST(N'2002-02-01' AS Date), N'1', N'12312311', N'123', N'72bb9be7-50d7-4f2b-b274-08029a29378b', N'd892eabc-f222-4b23-a3be-293fc44dad2f', NULL, 0)
GO
INSERT [dbo].[NSX] ([Id], [Ma], [Ten]) VALUES (N'da6783cf-686a-461e-86f3-09c05c5b2f1f', N'MSI', N'MSI')
INSERT [dbo].[NSX] ([Id], [Ma], [Ten]) VALUES (N'ed420e82-76f5-49ed-aa16-20e20b075aee', N'DL', N'Dell')
INSERT [dbo].[NSX] ([Id], [Ma], [Ten]) VALUES (N'e90180dd-3e30-42f1-ac46-4bc86004a21a', N'AS', N'Asus')
INSERT [dbo].[NSX] ([Id], [Ma], [Ten]) VALUES (N'6cdd2ee0-a8c0-4202-825d-80d3733fa891', N'nsx123', N'bimbim')
INSERT [dbo].[NSX] ([Id], [Ma], [Ten]) VALUES (N'64fb5d53-1b9d-44f6-93f3-926ed0222311', N'LO', N'Lenovo')
INSERT [dbo].[NSX] ([Id], [Ma], [Ten]) VALUES (N'00960b67-db00-465d-b642-9a5810cabac2', N'HP', N'HP')
INSERT [dbo].[NSX] ([Id], [Ma], [Ten]) VALUES (N'08fa96f4-6cb4-4693-a96f-a16896c4bfce', N'AE', N'Apple')
INSERT [dbo].[NSX] ([Id], [Ma], [Ten]) VALUES (N'5733d2f6-acd5-4d7f-b3cd-ee303c094915', N'AR', N'Acer')
GO
INSERT [dbo].[SanPham] ([Id], [Ma], [Ten]) VALUES (N'c3ee4e39-6331-4c80-84cf-2e22722fe777', N'SP6', N'PC Render')
INSERT [dbo].[SanPham] ([Id], [Ma], [Ten]) VALUES (N'24cba67c-d523-46bc-9801-476fc5df12ce', N'SP1', N'Laptop')
INSERT [dbo].[SanPham] ([Id], [Ma], [Ten]) VALUES (N'97082c3d-9052-4c23-af43-64eec762547c', N'SP4', N'PC Streaming')
INSERT [dbo].[SanPham] ([Id], [Ma], [Ten]) VALUES (N'ca336716-f6a8-4aad-a707-68c1d1fdb57f', N'SP5', N'PC Design')
INSERT [dbo].[SanPham] ([Id], [Ma], [Ten]) VALUES (N'c5fe8215-ef80-498c-b86c-84d1bb796df6', N'SP7231', N'PC MMO')
INSERT [dbo].[SanPham] ([Id], [Ma], [Ten]) VALUES (N'c77e2c08-1103-4163-9b57-a5521141069e', N'SP3', N'PC Gaming')
INSERT [dbo].[SanPham] ([Id], [Ma], [Ten]) VALUES (N'b51f0bad-a161-4c58-9f0a-a74d2cb7d7a3', N'SP2', N'Ipad')
INSERT [dbo].[SanPham] ([Id], [Ma], [Ten]) VALUES (N'914d055f-3fe8-4e13-a76b-e300bfad08fd', N'SP7', N'PC MMO')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__ChucVu__3214CC9E726F2E68]    Script Date: 7/25/2023 12:31:48 AM ******/
ALTER TABLE [dbo].[ChucVu] ADD UNIQUE NONCLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__CuaHang__3214CC9EE2FC1059]    Script Date: 7/25/2023 12:31:48 AM ******/
ALTER TABLE [dbo].[CuaHang] ADD UNIQUE NONCLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__DongSP__3214CC9E5F9DB6C9]    Script Date: 7/25/2023 12:31:48 AM ******/
ALTER TABLE [dbo].[DongSP] ADD UNIQUE NONCLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__GioHang__3214CC9E109F4105]    Script Date: 7/25/2023 12:31:48 AM ******/
ALTER TABLE [dbo].[GioHang] ADD UNIQUE NONCLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__HoaDon__3214CC9E1CB44B69]    Script Date: 7/25/2023 12:31:48 AM ******/
ALTER TABLE [dbo].[HoaDon] ADD UNIQUE NONCLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__KhachHan__3214CC9E61EFBF46]    Script Date: 7/25/2023 12:31:48 AM ******/
ALTER TABLE [dbo].[KhachHang] ADD UNIQUE NONCLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__MauSac__3214CC9E6DBE4B32]    Script Date: 7/25/2023 12:31:48 AM ******/
ALTER TABLE [dbo].[MauSac] ADD UNIQUE NONCLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__NhanVien__3214CC9EFCC51AA7]    Script Date: 7/25/2023 12:31:48 AM ******/
ALTER TABLE [dbo].[NhanVien] ADD UNIQUE NONCLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__NSX__3214CC9E5F4F8133]    Script Date: 7/25/2023 12:31:48 AM ******/
ALTER TABLE [dbo].[NSX] ADD UNIQUE NONCLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__SanPham__3214CC9E172083AE]    Script Date: 7/25/2023 12:31:48 AM ******/
ALTER TABLE [dbo].[SanPham] ADD UNIQUE NONCLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ChiTietSP] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[ChiTietSP] ADD  DEFAULT (NULL) FOR [NamBH]
GO
ALTER TABLE [dbo].[ChiTietSP] ADD  DEFAULT (NULL) FOR [MoTa]
GO
ALTER TABLE [dbo].[ChiTietSP] ADD  DEFAULT ((0)) FOR [GiaNhap]
GO
ALTER TABLE [dbo].[ChiTietSP] ADD  DEFAULT ((0)) FOR [GiaBan]
GO
ALTER TABLE [dbo].[ChucVu] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[ChucVu] ADD  DEFAULT (NULL) FOR [Ten]
GO
ALTER TABLE [dbo].[CuaHang] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[CuaHang] ADD  DEFAULT (NULL) FOR [Ten]
GO
ALTER TABLE [dbo].[CuaHang] ADD  DEFAULT (NULL) FOR [DiaChi]
GO
ALTER TABLE [dbo].[CuaHang] ADD  DEFAULT (NULL) FOR [ThanhPho]
GO
ALTER TABLE [dbo].[CuaHang] ADD  DEFAULT (NULL) FOR [QuocGia]
GO
ALTER TABLE [dbo].[DongSP] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[GioHang] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[GioHang] ADD  DEFAULT (NULL) FOR [NgayTao]
GO
ALTER TABLE [dbo].[GioHang] ADD  DEFAULT (NULL) FOR [NgayThanhToan]
GO
ALTER TABLE [dbo].[GioHang] ADD  DEFAULT (NULL) FOR [TenNguoiNhan]
GO
ALTER TABLE [dbo].[GioHang] ADD  DEFAULT (NULL) FOR [DiaChi]
GO
ALTER TABLE [dbo].[GioHang] ADD  DEFAULT (NULL) FOR [Sdt]
GO
ALTER TABLE [dbo].[GioHang] ADD  DEFAULT ((0)) FOR [TinhTrang]
GO
ALTER TABLE [dbo].[GioHangChiTiet] ADD  DEFAULT ((0)) FOR [DonGia]
GO
ALTER TABLE [dbo].[GioHangChiTiet] ADD  DEFAULT ((0)) FOR [DonGiaKhiGiam]
GO
ALTER TABLE [dbo].[HoaDon] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[HoaDon] ADD  DEFAULT (NULL) FOR [NgayTao]
GO
ALTER TABLE [dbo].[HoaDon] ADD  DEFAULT (NULL) FOR [NgayThanhToan]
GO
ALTER TABLE [dbo].[HoaDon] ADD  DEFAULT (NULL) FOR [NgayShip]
GO
ALTER TABLE [dbo].[HoaDon] ADD  DEFAULT (NULL) FOR [NgayNhan]
GO
ALTER TABLE [dbo].[HoaDon] ADD  DEFAULT ((0)) FOR [TinhTrang]
GO
ALTER TABLE [dbo].[HoaDon] ADD  DEFAULT (NULL) FOR [TenNguoiNhan]
GO
ALTER TABLE [dbo].[HoaDon] ADD  DEFAULT (NULL) FOR [DiaChi]
GO
ALTER TABLE [dbo].[HoaDon] ADD  DEFAULT (NULL) FOR [Sdt]
GO
ALTER TABLE [dbo].[HoaDonChiTiet] ADD  DEFAULT ((0)) FOR [DonGia]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT (NULL) FOR [TenDem]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT (NULL) FOR [Ho]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT (NULL) FOR [NgaySinh]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT (NULL) FOR [Sdt]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT (NULL) FOR [DiaChi]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT (NULL) FOR [ThanhPho]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT (NULL) FOR [QuocGia]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT (NULL) FOR [MatKhau]
GO
ALTER TABLE [dbo].[MauSac] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT (NULL) FOR [Ten]
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT (NULL) FOR [TenDem]
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT (NULL) FOR [Ho]
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT (NULL) FOR [GioiTinh]
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT (NULL) FOR [NgaySinh]
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT (NULL) FOR [DiaChi]
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT (NULL) FOR [Sdt]
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT (NULL) FOR [MatKhau]
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT ((0)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[NSX] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[SanPham] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[ChiTietSP]  WITH CHECK ADD FOREIGN KEY([IdDongSP])
REFERENCES [dbo].[DongSP] ([Id])
GO
ALTER TABLE [dbo].[ChiTietSP]  WITH CHECK ADD FOREIGN KEY([IdMauSac])
REFERENCES [dbo].[MauSac] ([Id])
GO
ALTER TABLE [dbo].[ChiTietSP]  WITH CHECK ADD FOREIGN KEY([IdNsx])
REFERENCES [dbo].[NSX] ([Id])
GO
ALTER TABLE [dbo].[ChiTietSP]  WITH CHECK ADD FOREIGN KEY([IdSP])
REFERENCES [dbo].[SanPham] ([Id])
GO
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD FOREIGN KEY([IdKH])
REFERENCES [dbo].[KhachHang] ([Id])
GO
ALTER TABLE [dbo].[GioHangChiTiet]  WITH CHECK ADD  CONSTRAINT [FK1_IdGioHang] FOREIGN KEY([IdGioHang])
REFERENCES [dbo].[GioHang] ([Id])
GO
ALTER TABLE [dbo].[GioHangChiTiet] CHECK CONSTRAINT [FK1_IdGioHang]
GO
ALTER TABLE [dbo].[GioHangChiTiet]  WITH CHECK ADD  CONSTRAINT [FK2_IdChiTietSP] FOREIGN KEY([IdChiTietSP])
REFERENCES [dbo].[ChiTietSP] ([Id])
GO
ALTER TABLE [dbo].[GioHangChiTiet] CHECK CONSTRAINT [FK2_IdChiTietSP]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([IdKH])
REFERENCES [dbo].[KhachHang] ([Id])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([IdNV])
REFERENCES [dbo].[NhanVien] ([Id])
GO
ALTER TABLE [dbo].[HoaDonChiTiet]  WITH CHECK ADD  CONSTRAINT [FK1] FOREIGN KEY([IdHoaDon])
REFERENCES [dbo].[HoaDon] ([Id])
GO
ALTER TABLE [dbo].[HoaDonChiTiet] CHECK CONSTRAINT [FK1]
GO
ALTER TABLE [dbo].[HoaDonChiTiet]  WITH CHECK ADD  CONSTRAINT [FK2] FOREIGN KEY([IdChiTietSP])
REFERENCES [dbo].[ChiTietSP] ([Id])
GO
ALTER TABLE [dbo].[HoaDonChiTiet] CHECK CONSTRAINT [FK2]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD FOREIGN KEY([IdCH])
REFERENCES [dbo].[CuaHang] ([Id])
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD FOREIGN KEY([IdCV])
REFERENCES [dbo].[ChucVu] ([Id])
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD FOREIGN KEY([IdGuiBC])
REFERENCES [dbo].[NhanVien] ([Id])
GO
USE [master]
GO
ALTER DATABASE [FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041] SET  READ_WRITE 
GO
