CREATE DATABASE WebApp;
USE [WebApp]
GO
/****** Object:  Table [dbo].[account]    Script Date: 6/27/2022 12:22:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[account](
	[userID] [int] IDENTITY(0,1) NOT NULL,
	[userName] [nvarchar](30) NOT NULL,
	[userPhone] [nvarchar](15) NULL,
	[password] [nvarchar](30) NOT NULL,
	[isAdmin] [int] NULL,
	[isSeller] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[category]    Script Date: 6/27/2022 12:22:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[cateID] [int] NOT NULL,
	[cateName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_category] PRIMARY KEY CLUSTERED 
(
	[cateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order]    Script Date: 6/27/2022 12:22:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order](
	[oID] [int] IDENTITY(1,1) NOT NULL,
	[uID] [int] NOT NULL,
	[pID] [int] NOT NULL,
	[oQuantity] [int] NOT NULL,
	[oDate] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[oID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 6/27/2022 12:22:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[image] [nvarchar](200) NOT NULL,
	[price] [int] NOT NULL,
	[title] [nvarchar](50) NOT NULL,
	[quantity] [int] NOT NULL,
	[cateID] [int] NOT NULL,
	[sellerID] [int] NOT NULL,
 CONSTRAINT [PK__product__3213E83FEB5C3C3B] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[account] ON 

INSERT [dbo].[account] ([userID], [userName], [userPhone], [password], [isAdmin], [isSeller]) VALUES (1, N'huynhnguyen', N'0763002783', N'nhilinhfa373', 0, 0)
INSERT [dbo].[account] ([userID], [userName], [userPhone], [password], [isAdmin], [isSeller]) VALUES (2, N'huynhphuoc', N'0902410757', N'2002', 0, 0)
INSERT [dbo].[account] ([userID], [userName], [userPhone], [password], [isAdmin], [isSeller]) VALUES (3, N'hoadnt', N'0123456789', N'1', 0, 0)
INSERT [dbo].[account] ([userID], [userName], [userPhone], [password], [isAdmin], [isSeller]) VALUES (4, N'seller1', N'0000000000', N'seller1', 0, 1)
INSERT [dbo].[account] ([userID], [userName], [userPhone], [password], [isAdmin], [isSeller]) VALUES (5, N'seller2', N'0111111111', N'seller2', 0, 1)
INSERT [dbo].[account] ([userID], [userName], [userPhone], [password], [isAdmin], [isSeller]) VALUES (6, N'admin1', N'0987654321', N'admin1', 1, 0)
INSERT [dbo].[account] ([userID], [userName], [userPhone], [password], [isAdmin], [isSeller]) VALUES (7, N'admin2', N'0978654321', N'admin2', 1, 0)
SET IDENTITY_INSERT [dbo].[account] OFF
GO
INSERT [dbo].[category] ([cateID], [cateName]) VALUES (1, N'Áo thời trang')
INSERT [dbo].[category] ([cateID], [cateName]) VALUES (2, N'Quần thời trang')
INSERT [dbo].[category] ([cateID], [cateName]) VALUES (3, N'Balo thời trang')
INSERT [dbo].[category] ([cateID], [cateName]) VALUES (4, N'Mắt kính thời trang')
INSERT [dbo].[category] ([cateID], [cateName]) VALUES (5, N'Mũ thời trang')
GO
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([id], [name], [image], [price], [title], [quantity], [cateID], [sellerID]) VALUES (2, N'Áo POLO Teelab', N'https://bizweb.dktcdn.net/thumb/1024x1024/100/415/697/products/1-70ab4990-1c0c-4e56-b7b5-f73fb52ef2ab.jpg', 120000, N'Áo Thun', 4, 1, 3)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [quantity], [cateID], [sellerID]) VALUES (3, N'Áo Sweet Heart', N'https://bizweb.dktcdn.net/thumb/1024x1024/100/415/697/products/e495f3c9-b502-4bbc-bc1a-741b2a85adbc.jpg', 150000, N'Áo Thun', 4, 1, 4)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [quantity], [cateID], [sellerID]) VALUES (4, N'Áo Hoodie Teelab', N'https://bizweb.dktcdn.net/thumb/1024x1024/100/415/697/products/1a-9ccbd6b7-0c0e-4272-af81-dee8a88b163b.jpg', 200000, N'Áo Hoodie', 5, 1, 3)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [quantity], [cateID], [sellerID]) VALUES (5, N'Áo Tay Dài Teetab', N'https://bizweb.dktcdn.net/thumb/1024x1024/100/415/697/products/z2867630527720-909206172f0bbdff96c883ac70266bf8.jpg?v=1647413352957', 160000, N'Áo Tay Dài', 3, 1, 4)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [quantity], [cateID], [sellerID]) VALUES (6, N'Áo Khoác Bomber Teelab', N'https://bizweb.dktcdn.net/thumb/1024x1024/100/415/697/products/mc2-9b31dbee-8289-4a9c-842c-8f14b60ff03f.jpg', 180000, N'Áo Khoác', 2, 1, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [quantity], [cateID], [sellerID]) VALUES (7, N'Quần Khaki Nữ', N'https://canifa.com/img/486/733/resize/6/b/6bk22c001-se065-27-1-u.jpg', 200000, N'Quần Dài', 4, 2, 3)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [quantity], [cateID], [sellerID]) VALUES (8, N'Quần Short Bé Trai', N'https://canifa.com/img/486/733/resize/2/b/2bs22s009-sj719-110-1-u.jpg', 120000, N'Quần Short', 3, 2, 4)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [quantity], [cateID], [sellerID]) VALUES (9, N'Quần Giả Váy Bé Gái', N'https://canifa.com/img/486/733/resize/1/b/1bs22c001-sj651-130-1-u.jpg', 150000, N'Quần Giả Váy', 6, 2, 4)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [quantity], [cateID], [sellerID]) VALUES (10, N'Quần Dài Nữ', N'https://canifa.com/img/486/733/resize/6/b/6bp22s001-cm050-m-1-u.jpg', 240000, N'Quần Dài', 2, 2, 3)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [quantity], [cateID], [sellerID]) VALUES (11, N'Quần Short Nhung', N'https://bizweb.dktcdn.net/thumb/1024x1024/100/415/697/products/4-4-c4e2fa3e-b305-4f93-b518-98589514d489.jpg', 220000, N'Quần Short', 3, 2, 4)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [quantity], [cateID], [sellerID]) VALUES (12, N'Quần Short Nữ', N'https://canifa.com/img/1000/1500/resize/2/l/2la22s004-cb286-110-2.jpg', 140000, N'Quần Short', 5, 2, 3)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [quantity], [cateID], [sellerID]) VALUES (13, N'Balo Comfort', N'https://product.hstatic.net/1000003969/product/kem_bl133_1_c5558f5f9b62429a87682acba431f357_master.jpg', 550000, N'Balo Mini', 5, 3, 4)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [quantity], [cateID], [sellerID]) VALUES (14, N'Balo Chần Bông', N'https://product.hstatic.net/1000003969/product/xanh_bl128_1_6a50087e5af848489d5c33afcbdbdb6d_master.jpg', 680000, N'Balo Mini', 5, 3, 3)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [quantity], [cateID], [sellerID]) VALUES (15, N'Balo Cut Out', N'https://product.hstatic.net/1000003969/product/vang_bl126_1_281921104a074bc790a21f9d2aacd699_master.jpg', 500000, N'Balo Mini', 3, 3, 4)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [quantity], [cateID], [sellerID]) VALUES (16, N'Balo TOMTOC', N'https://bizweb.dktcdn.net/100/044/266/products/sc-p3-grm-2-12a6171ae474471e820df1d74912d739-1024x1024.jpg?v=1571236661090', 650000, N'Balo Du Lịch', 5, 3, 3)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [quantity], [cateID], [sellerID]) VALUES (17, N'Balo CARRY TWB - Navy', N'https://bizweb.dktcdn.net/100/044/266/products/balo-chong-soc-laptop-15-tomtoc-usa-a82-f01d-black-10.jpg?v=1649317286433', 600000, N'Balo Du Lịch', 5, 3, 4)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [quantity], [cateID], [sellerID]) VALUES (18, N'Balo Briefcase - Dark Navy', N'https://bizweb.dktcdn.net/100/044/266/products/cap-xach-da-nang-mikkor-the-gibson-briefcase-dark-navy-10.jpg?v=1639473170210', 580000, N'Balo Du Lịch', 4, 3, 3)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [quantity], [cateID], [sellerID]) VALUES (19, N'Mắt Kính Nữ Dora', N'https://cdn.tgdd.vn/Products/Images/7678/254295/mat-kinh-thoi-trang-nu-dora-6198-c4-trang-den-1.jpg', 440000, N'Mắt Kính', 2, 4, 4)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [quantity], [cateID], [sellerID]) VALUES (20, N'Mắt Kính Nam Jubilant', N'https://cdn.tgdd.vn/Products/Images/7678/267937/mat-kinh-thoi-trang-nam-jubilant-j4503459gold-1.jpg', 500000, N'Mắt Kính', 5, 4, 3)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [quantity], [cateID], [sellerID]) VALUES (21, N'Mắt Kính Nam Polaroid', N'https://cdn.tgdd.vn/Products/Images/7678/267950/mat-kinh-thoi-trang-nam-polaroid-a4402a61kih-y2-1.jpg', 380000, N'Mắt Kính', 11, 4, 4)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [quantity], [cateID], [sellerID]) VALUES (22, N'Mắt Kính Unisex', N'https://cdn.tgdd.vn/Products/Images/7678/267939/mat-kinh-thoi-trang-unisex-jubilant-js174057c2-1.jpg', 350000, N'Mắt Kính', 12, 4, 3)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [quantity], [cateID], [sellerID]) VALUES (23, N'Mắt Kính Nam Skechers', N'https://cdn.tgdd.vn/Products/Images/7678/267956/mat-kinh-thoi-trang-nam-skechers-se6087d6290c-1.jpg', 480000, N'Mắt Kính', 10, 4, 4)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [quantity], [cateID], [sellerID]) VALUES (24, N'Mắt Kính Nữ Calvin', N'https://cdn.tgdd.vn/Products/Images/7678/253843/mat-kinh-thoi-trang-nu-calvin-klein-ck18535s5500-den-1-2.jpg', 480000, N'Mắt Kính', 2, 4, 3)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [quantity], [cateID], [sellerID]) VALUES (25, N'Mũ Unisex', N'https://media.coolmate.me/cdn-cgi/image/quality=80/uploads/January2022/yolo12_(1).jpg', 150000, N'Mũ Lưỡi Trai', 6, 5, 4)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [quantity], [cateID], [sellerID]) VALUES (26, N'Mũ Baseball', N'https://media.coolmate.me/cdn-cgi/image/quality=80/uploads/January2022/unavail.jpg', 160000, N'Mũ Lưỡi Trai', 5, 5, 3)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [quantity], [cateID], [sellerID]) VALUES (28, N'Mũ Bucket', N'https://media.coolmate.me/cdn-cgi/image/quality=80/uploads/April2022/d7.jpg', 200000, N'Mũ Vành', 6, 5, 4)
SET IDENTITY_INSERT [dbo].[product] OFF
GO
ALTER TABLE [dbo].[order]  WITH CHECK ADD  CONSTRAINT [FK_order_account] FOREIGN KEY([uID])
REFERENCES [dbo].[account] ([userID])
GO
ALTER TABLE [dbo].[order] CHECK CONSTRAINT [FK_order_account]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK_product_account] FOREIGN KEY([sellerID])
REFERENCES [dbo].[account] ([userID])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK_product_account]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK_product_category1] FOREIGN KEY([cateID])
REFERENCES [dbo].[category] ([cateID])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK_product_category1]
GO
