USE [TuThien]
GO
/****** Object:  Table [dbo].[accounts]    Script Date: 4/4/2023 11:30:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[accounts](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[fullname] [nvarchar](50) NOT NULL,
	[address] [nvarchar](255) NOT NULL,
	[phone] [int] NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[photo] [nvarchar](2000) NOT NULL,
	[activated] [bit] NOT NULL,
	[admin] [bit] NOT NULL,
 CONSTRAINT [PK_accounts] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[categories]    Script Date: 4/4/2023 11:30:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categories](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[status] [bit] NOT NULL,
 CONSTRAINT [PK_categories] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contribute]    Script Date: 4/4/2023 11:30:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contribute](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[fullname] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[sdt] [int] NOT NULL,
	[amount] [bigint] NOT NULL,
	[mess] [nvarchar](3000) NOT NULL,
	[Product_id] [bigint] NOT NULL,
	[hinhthuc] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Contribute] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[products]    Script Date: 4/4/2023 11:30:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[about] [varchar](4000) NULL,
	[available] [bit] NOT NULL,
	[createdate] [date] NULL,
	[image] [varchar](255) NULL,
	[name] [varchar](255) NULL,
	[categoryid] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[accounts] ON 

INSERT [dbo].[accounts] ([id], [username], [password], [fullname], [address], [phone], [email], [photo], [activated], [admin]) VALUES (1, N'admin', N'123456', N'admin', N'admin', 123456789, N'admin@gmail.com', N'goku.jpg', 1, 1)
INSERT [dbo].[accounts] ([id], [username], [password], [fullname], [address], [phone], [email], [photo], [activated], [admin]) VALUES (2, N'hien', N'123', N'huynhhien', N'hien', 1234567899, N'hien@gmail.com', N'https://symbols.vn/wp-content/uploads/2022/01/Hinh-Anime-Goku-ngau-nhat.jpg', 1, 0)
SET IDENTITY_INSERT [dbo].[accounts] OFF
GO
SET IDENTITY_INSERT [dbo].[categories] ON 

INSERT [dbo].[categories] ([id], [name], [status]) VALUES (1, N'TinTuc', 1)
SET IDENTITY_INSERT [dbo].[categories] OFF
GO
SET IDENTITY_INSERT [dbo].[products] ON 

INSERT [dbo].[products] ([id], [about], [available], [createdate], [image], [name], [categoryid]) VALUES (19, N'Ngày 20/03/2023, Quán Yên vui Mai Linh – Qu?ng Tr? dã d?i di?n Qu? T? thi?n Bông Sen bàn giao d?n B?nh vi?n Ða khoa khu v?c Tri?u H?i 3 chi?c xe d?y b?nh nhân ph?c v? trong vi?c v?n chuy?n b?nh nhân t?i b?nh vi?n. <br> V?i s? h? tr? này, chúng tôi mong r?ng s? góp ph?n giúp b?nh vi?n thu?n l?i hon trong quá trình h? tr? b?nh nhân.<br> Ngoài ra, Quán Yên vui Mai Linh – Qu?ng Tr? v?n d?u d?n h? tr? su?t an cho b?nh nhân t?i BV ÐK KV Tri?u H?i nh?m mang l?i su?t an ch?t lu?ng cho b?nh nhân.<br>', 1, CAST(N'2023-03-21' AS Date), N'336735507_793223785560525_8310939866051012916_n.jpg', N'BÀN GIAO 3 XE Ð?Y CÁNG 3A Ð?N B?NH VI?N ÐKKV TRI?U H?I, QU?NG TR?', 1)
INSERT [dbo].[products] ([id], [about], [available], [createdate], [image], [name], [categoryid]) VALUES (20, N'Ngày 24/02/2023, t?i Huy?n u? huy?n Hóc Môn, Qu? Bông Sen dã bàn giao 5 chi?c xe ba bánh di?n d?n 5 hoàn c?nh t?i Hóc Môn và C? Chi v?i s? tài tr? t? Deutsche Bank h? tr? cho ngu?i lao d?ng b? khuy?t t?t chân có hoàn c?nh khó khan và c?n m?t phuong ti?n thu?n l?i d? muu sinh. V?i s? k?t n?i t? H?i B?o tr? ngu?i khuy?t t?t và tr? m? côi huy?n Hóc Môn, chúng tôi dã bàn giao xe d?n 5 cô chú anh ch?, tuy m?i ngu?i có m?t công vi?c khác nhau nhung có m?t di?m chung h? d?u r?t c?n m?t phuong ti?n thu?n l?i d? ch? d?ng hon trong vi?c di chuy?n muu sinh. <br> V? ch?ng anh Quý – ch? Ng?c m?ng r? vì chi?c xe quá d?p, t? nay anh ch? có xe d? dua con gái di h?c và buôn bán muu sinh; anh Quý luôn mi?ng c?m on m?i ngu?i vì dã quan tâm và giúp d? cho gia dình anh. Ch? Y?n và ch?ng d?n s?m hon gi? h?n 1 ti?ng d?ng h?, vì quá mong ngóng nên sáng nay ch? và ch?ng xin ngh? làm d? lên nh?n xe, t? nay ch? có du?c phuong ti?n d? di làm tranh son mài, có th? linh d?ng dua dón 2 con di h?c và bán thêm vé s? bu?i t?i. Anh Son ch?y t?.', 1, CAST(N'2023-03-21' AS Date), N'z4134523438764_1c51172c8ac33facd90f387a8d2f807b.jpg', N'BÀN GIAO 5 CHI?C XE BA BÁNH ÐI?N T?I HÓC MÔN', 1)
SET IDENTITY_INSERT [dbo].[products] OFF
GO
ALTER TABLE [dbo].[Contribute]  WITH CHECK ADD  CONSTRAINT [FK_Contribute_products] FOREIGN KEY([Product_id])
REFERENCES [dbo].[products] ([id])
GO
ALTER TABLE [dbo].[Contribute] CHECK CONSTRAINT [FK_Contribute_products]
GO
ALTER TABLE [dbo].[Contribute]  WITH CHECK ADD  CONSTRAINT [FK19eg4rnmy6xq2q6b0t0ri9jbx] FOREIGN KEY([Product_id])
REFERENCES [dbo].[products] ([id])
GO
ALTER TABLE [dbo].[Contribute] CHECK CONSTRAINT [FK19eg4rnmy6xq2q6b0t0ri9jbx]
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD  CONSTRAINT [FK1krrsjgcawsfg8k8u4hm5gi8q] FOREIGN KEY([categoryid])
REFERENCES [dbo].[categories] ([id])
GO
ALTER TABLE [dbo].[products] CHECK CONSTRAINT [FK1krrsjgcawsfg8k8u4hm5gi8q]
GO
