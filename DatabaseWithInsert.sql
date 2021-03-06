USE [master]
GO
/****** Object:  Database [HamsterWars]    Script Date: 2022-05-04 14:53:06 ******/
CREATE DATABASE [HamsterWars]

GO
USE [HamsterWars]
GO
CREATE TABLE [dbo].[Games](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[WinnerID] [int] NULL,
	[LooserID] [int] NULL,
	[Date] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hamsters](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Age] [int] NULL,
	[FavFood] [nvarchar](50) NULL,
	[Loves] [nvarchar](50) NULL,
	[ImgName] [nvarchar](500) NULL,
	[Wins] [int] NULL,
	[Losses] [int] NULL,
	[Games] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Games] ON 

INSERT [dbo].[Games] ([ID], [WinnerID], [LooserID], [Date]) VALUES (4005, 1066, 1069, CAST(N'2022-04-26T20:41:28.5566667' AS DateTime2))
INSERT [dbo].[Games] ([ID], [WinnerID], [LooserID], [Date]) VALUES (4006, 1079, 1041, CAST(N'2022-04-26T20:41:29.0266667' AS DateTime2))
INSERT [dbo].[Games] ([ID], [WinnerID], [LooserID], [Date]) VALUES (4007, 1065, 1045, CAST(N'2022-04-26T20:41:29.4100000' AS DateTime2))
INSERT [dbo].[Games] ([ID], [WinnerID], [LooserID], [Date]) VALUES (4008, 1042, 1067, CAST(N'2022-04-26T20:41:29.9266667' AS DateTime2))
INSERT [dbo].[Games] ([ID], [WinnerID], [LooserID], [Date]) VALUES (4009, 1060, 1075, CAST(N'2022-04-26T20:41:30.2933333' AS DateTime2))
INSERT [dbo].[Games] ([ID], [WinnerID], [LooserID], [Date]) VALUES (4010, 1066, 1075, CAST(N'2022-04-26T20:41:30.6600000' AS DateTime2))
INSERT [dbo].[Games] ([ID], [WinnerID], [LooserID], [Date]) VALUES (4011, 1051, 1076, CAST(N'2022-04-26T20:41:31.0100000' AS DateTime2))
INSERT [dbo].[Games] ([ID], [WinnerID], [LooserID], [Date]) VALUES (4012, 1057, 1044, CAST(N'2022-04-26T20:41:31.3800000' AS DateTime2))
INSERT [dbo].[Games] ([ID], [WinnerID], [LooserID], [Date]) VALUES (4013, 1053, 1056, CAST(N'2022-04-26T20:41:31.8800000' AS DateTime2))
INSERT [dbo].[Games] ([ID], [WinnerID], [LooserID], [Date]) VALUES (4014, 1065, 1058, CAST(N'2022-04-26T20:41:32.2666667' AS DateTime2))
INSERT [dbo].[Games] ([ID], [WinnerID], [LooserID], [Date]) VALUES (4015, 1059, 1070, CAST(N'2022-04-26T20:41:32.7800000' AS DateTime2))
INSERT [dbo].[Games] ([ID], [WinnerID], [LooserID], [Date]) VALUES (4017, 1068, 1054, CAST(N'2022-04-26T20:41:33.4766667' AS DateTime2))
INSERT [dbo].[Games] ([ID], [WinnerID], [LooserID], [Date]) VALUES (4018, 1075, 1064, CAST(N'2022-04-26T20:41:33.8633333' AS DateTime2))
INSERT [dbo].[Games] ([ID], [WinnerID], [LooserID], [Date]) VALUES (4020, 1076, 1046, CAST(N'2022-04-26T20:41:34.6966667' AS DateTime2))
INSERT [dbo].[Games] ([ID], [WinnerID], [LooserID], [Date]) VALUES (4021, 1072, 1050, CAST(N'2022-04-26T20:41:35.1633333' AS DateTime2))
INSERT [dbo].[Games] ([ID], [WinnerID], [LooserID], [Date]) VALUES (4022, 1047, 1060, CAST(N'2022-04-26T20:41:35.5666667' AS DateTime2))
INSERT [dbo].[Games] ([ID], [WinnerID], [LooserID], [Date]) VALUES (4023, 1062, 1059, CAST(N'2022-04-26T20:41:36.0700000' AS DateTime2))
INSERT [dbo].[Games] ([ID], [WinnerID], [LooserID], [Date]) VALUES (4024, 1041, 1074, CAST(N'2022-04-26T20:41:36.4300000' AS DateTime2))
INSERT [dbo].[Games] ([ID], [WinnerID], [LooserID], [Date]) VALUES (4025, 1080, 1055, CAST(N'2022-04-26T20:41:36.8366667' AS DateTime2))
INSERT [dbo].[Games] ([ID], [WinnerID], [LooserID], [Date]) VALUES (4026, 1078, 1066, CAST(N'2022-04-26T20:41:37.2133333' AS DateTime2))
INSERT [dbo].[Games] ([ID], [WinnerID], [LooserID], [Date]) VALUES (4027, 1065, 1049, CAST(N'2022-04-26T20:41:37.5966667' AS DateTime2))
INSERT [dbo].[Games] ([ID], [WinnerID], [LooserID], [Date]) VALUES (4028, 1058, 1077, CAST(N'2022-04-26T20:41:38.1833333' AS DateTime2))
INSERT [dbo].[Games] ([ID], [WinnerID], [LooserID], [Date]) VALUES (4029, 1045, 1064, CAST(N'2022-04-26T20:41:38.6166667' AS DateTime2))
INSERT [dbo].[Games] ([ID], [WinnerID], [LooserID], [Date]) VALUES (4030, 1075, 1062, CAST(N'2022-04-26T20:41:38.9700000' AS DateTime2))
INSERT [dbo].[Games] ([ID], [WinnerID], [LooserID], [Date]) VALUES (4031, 1042, 1075, CAST(N'2022-04-26T20:41:39.3266667' AS DateTime2))
INSERT [dbo].[Games] ([ID], [WinnerID], [LooserID], [Date]) VALUES (4032, 1044, 1069, CAST(N'2022-04-26T20:41:39.7000000' AS DateTime2))
INSERT [dbo].[Games] ([ID], [WinnerID], [LooserID], [Date]) VALUES (4033, 1066, 1060, CAST(N'2022-04-26T20:41:40.0500000' AS DateTime2))
INSERT [dbo].[Games] ([ID], [WinnerID], [LooserID], [Date]) VALUES (4034, 1072, 1045, CAST(N'2022-04-26T20:41:40.4700000' AS DateTime2))
INSERT [dbo].[Games] ([ID], [WinnerID], [LooserID], [Date]) VALUES (5002, 1065, 1062, CAST(N'2022-04-28T11:00:19.3433333' AS DateTime2))
INSERT [dbo].[Games] ([ID], [WinnerID], [LooserID], [Date]) VALUES (5003, 1066, 1062, CAST(N'2022-04-28T11:06:15.3433333' AS DateTime2))
INSERT [dbo].[Games] ([ID], [WinnerID], [LooserID], [Date]) VALUES (5004, 1045, 1078, CAST(N'2022-04-28T11:06:18.7433333' AS DateTime2))
INSERT [dbo].[Games] ([ID], [WinnerID], [LooserID], [Date]) VALUES (5005, 1059, 1046, CAST(N'2022-04-28T11:06:20.9533333' AS DateTime2))
INSERT [dbo].[Games] ([ID], [WinnerID], [LooserID], [Date]) VALUES (5006, 1053, 1067, CAST(N'2022-04-28T11:06:22.3833333' AS DateTime2))
INSERT [dbo].[Games] ([ID], [WinnerID], [LooserID], [Date]) VALUES (5007, 1062, 1065, CAST(N'2022-04-28T11:06:23.8600000' AS DateTime2))
INSERT [dbo].[Games] ([ID], [WinnerID], [LooserID], [Date]) VALUES (5008, 1061, 1057, CAST(N'2022-04-28T11:06:29.6466667' AS DateTime2))
INSERT [dbo].[Games] ([ID], [WinnerID], [LooserID], [Date]) VALUES (6002, 1057, 1056, CAST(N'2022-04-28T12:44:26.1500000' AS DateTime2))
INSERT [dbo].[Games] ([ID], [WinnerID], [LooserID], [Date]) VALUES (7002, 1063, 1055, CAST(N'2022-04-28T15:15:35.6033333' AS DateTime2))
INSERT [dbo].[Games] ([ID], [WinnerID], [LooserID], [Date]) VALUES (7003, 1072, 1079, CAST(N'2022-04-28T15:37:36.2200000' AS DateTime2))
INSERT [dbo].[Games] ([ID], [WinnerID], [LooserID], [Date]) VALUES (7004, 1076, 1060, CAST(N'2022-04-28T15:37:37.9933333' AS DateTime2))
INSERT [dbo].[Games] ([ID], [WinnerID], [LooserID], [Date]) VALUES (7005, 1074, 1069, CAST(N'2022-04-28T15:37:45.7833333' AS DateTime2))
INSERT [dbo].[Games] ([ID], [WinnerID], [LooserID], [Date]) VALUES (7006, 1064, 1055, CAST(N'2022-04-28T15:37:47.4033333' AS DateTime2))
INSERT [dbo].[Games] ([ID], [WinnerID], [LooserID], [Date]) VALUES (7007, 1062, 1060, CAST(N'2022-04-28T15:37:48.3433333' AS DateTime2))
INSERT [dbo].[Games] ([ID], [WinnerID], [LooserID], [Date]) VALUES (7008, 1072, 1062, CAST(N'2022-04-28T15:37:49.7333333' AS DateTime2))
INSERT [dbo].[Games] ([ID], [WinnerID], [LooserID], [Date]) VALUES (7009, 1077, 1080, CAST(N'2022-04-28T15:37:51.7933333' AS DateTime2))
INSERT [dbo].[Games] ([ID], [WinnerID], [LooserID], [Date]) VALUES (7010, 2041, 1049, CAST(N'2022-04-28T15:38:04.4666667' AS DateTime2))
INSERT [dbo].[Games] ([ID], [WinnerID], [LooserID], [Date]) VALUES (7011, 1066, 1065, CAST(N'2022-04-28T15:38:06.1833333' AS DateTime2))
INSERT [dbo].[Games] ([ID], [WinnerID], [LooserID], [Date]) VALUES (7012, 1065, 1077, CAST(N'2022-04-28T15:38:07.7066667' AS DateTime2))
INSERT [dbo].[Games] ([ID], [WinnerID], [LooserID], [Date]) VALUES (7013, 1070, 1076, CAST(N'2022-04-28T15:38:08.7400000' AS DateTime2))
INSERT [dbo].[Games] ([ID], [WinnerID], [LooserID], [Date]) VALUES (8002, 1070, 1053, CAST(N'2022-05-04T14:48:09.4633333' AS DateTime2))
INSERT [dbo].[Games] ([ID], [WinnerID], [LooserID], [Date]) VALUES (8003, 1071, 1072, CAST(N'2022-05-04T14:48:09.9300000' AS DateTime2))
INSERT [dbo].[Games] ([ID], [WinnerID], [LooserID], [Date]) VALUES (8004, 1064, 1068, CAST(N'2022-05-04T14:48:10.2333333' AS DateTime2))
INSERT [dbo].[Games] ([ID], [WinnerID], [LooserID], [Date]) VALUES (8005, 1066, 1075, CAST(N'2022-05-04T14:48:10.6600000' AS DateTime2))
INSERT [dbo].[Games] ([ID], [WinnerID], [LooserID], [Date]) VALUES (8006, 1069, 1074, CAST(N'2022-05-04T14:48:10.9566667' AS DateTime2))
INSERT [dbo].[Games] ([ID], [WinnerID], [LooserID], [Date]) VALUES (8007, 1078, 1056, CAST(N'2022-05-04T14:48:11.3666667' AS DateTime2))
INSERT [dbo].[Games] ([ID], [WinnerID], [LooserID], [Date]) VALUES (8008, 1078, 1056, CAST(N'2022-05-04T14:48:11.5233333' AS DateTime2))
INSERT [dbo].[Games] ([ID], [WinnerID], [LooserID], [Date]) VALUES (8009, 1078, 1056, CAST(N'2022-05-04T14:48:11.6900000' AS DateTime2))
INSERT [dbo].[Games] ([ID], [WinnerID], [LooserID], [Date]) VALUES (8010, 1078, 1056, CAST(N'2022-05-04T14:48:11.8166667' AS DateTime2))
INSERT [dbo].[Games] ([ID], [WinnerID], [LooserID], [Date]) VALUES (8011, 1050, 1054, CAST(N'2022-05-04T14:48:12.2900000' AS DateTime2))
INSERT [dbo].[Games] ([ID], [WinnerID], [LooserID], [Date]) VALUES (8012, 1070, 1057, CAST(N'2022-05-04T14:48:12.5833333' AS DateTime2))
INSERT [dbo].[Games] ([ID], [WinnerID], [LooserID], [Date]) VALUES (8013, 1075, 5041, CAST(N'2022-05-04T14:48:12.8600000' AS DateTime2))
INSERT [dbo].[Games] ([ID], [WinnerID], [LooserID], [Date]) VALUES (8014, 1060, 1079, CAST(N'2022-05-04T14:48:13.1800000' AS DateTime2))
INSERT [dbo].[Games] ([ID], [WinnerID], [LooserID], [Date]) VALUES (8015, 1064, 1062, CAST(N'2022-05-04T14:48:13.4666667' AS DateTime2))
INSERT [dbo].[Games] ([ID], [WinnerID], [LooserID], [Date]) VALUES (8016, 1053, 1058, CAST(N'2022-05-04T14:48:13.7600000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Games] OFF
GO
SET IDENTITY_INSERT [dbo].[Hamsters] ON 

INSERT [dbo].[Hamsters] ([ID], [Name], [Age], [FavFood], [Loves], [ImgName], [Wins], [Losses], [Games]) VALUES (1050, N'Tyson', 2, N'Rice', N'Sleeping', N'hamster-10.jpg', 1, 1, 2)
INSERT [dbo].[Hamsters] ([ID], [Name], [Age], [FavFood], [Loves], [ImgName], [Wins], [Losses], [Games]) VALUES (1052, N'Fury', 1, N'Hay', N'Sleeping', N'hamster-12.jpg', 1, NULL, 1)
INSERT [dbo].[Hamsters] ([ID], [Name], [Age], [FavFood], [Loves], [ImgName], [Wins], [Losses], [Games]) VALUES (1053, N'Duke', 2, N'Beef', N'Eating food', N'hamster-13.jpg', 3, 1, 4)
INSERT [dbo].[Hamsters] ([ID], [Name], [Age], [FavFood], [Loves], [ImgName], [Wins], [Losses], [Games]) VALUES (1054, N'Marvin', 2, N'Cheese', N'Running', N'hamster-14.jpg', NULL, 2, 2)
INSERT [dbo].[Hamsters] ([ID], [Name], [Age], [FavFood], [Loves], [ImgName], [Wins], [Losses], [Games]) VALUES (1055, N'Nexus', 2, N'Potato', N'Sleeping', N'hamster-15.jpg', NULL, 3, 3)
INSERT [dbo].[Hamsters] ([ID], [Name], [Age], [FavFood], [Loves], [ImgName], [Wins], [Losses], [Games]) VALUES (1056, N'Cherry', 2, N'Vegetables', N'Running', N'hamster-16.jpg', NULL, 3, 3)
INSERT [dbo].[Hamsters] ([ID], [Name], [Age], [FavFood], [Loves], [ImgName], [Wins], [Losses], [Games]) VALUES (1057, N'Lollipop', 1, N'Candy', N'Eating food', N'hamster-17.jpg', 2, 2, 4)
INSERT [dbo].[Hamsters] ([ID], [Name], [Age], [FavFood], [Loves], [ImgName], [Wins], [Losses], [Games]) VALUES (1058, N'Olive', 1, N'Chips', N'Hamster wheel', N'hamster-18.jpg', 1, 2, 3)
INSERT [dbo].[Hamsters] ([ID], [Name], [Age], [FavFood], [Loves], [ImgName], [Wins], [Losses], [Games]) VALUES (1059, N'Spiral', 1, N'Magot', N'Running', N'hamster-19.jpg', 2, 1, 3)
INSERT [dbo].[Hamsters] ([ID], [Name], [Age], [FavFood], [Loves], [ImgName], [Wins], [Losses], [Games]) VALUES (1060, N'Pulsar', 3, N'Insects', N'Sleeping', N'hamster-20.jpg', 2, 4, 6)
INSERT [dbo].[Hamsters] ([ID], [Name], [Age], [FavFood], [Loves], [ImgName], [Wins], [Losses], [Games]) VALUES (1061, N'Cartman', 3, N'Vegan', N'Running', N'hamster-21.jpg', 2, NULL, 2)
INSERT [dbo].[Hamsters] ([ID], [Name], [Age], [FavFood], [Loves], [ImgName], [Wins], [Losses], [Games]) VALUES (1062, N'Keroppi', 3, N'Carrot', N'Sleeping', N'hamster-22.jpg', 3, 5, 8)
INSERT [dbo].[Hamsters] ([ID], [Name], [Age], [FavFood], [Loves], [ImgName], [Wins], [Losses], [Games]) VALUES (1063, N'Froggo', 1, N'Carrot', N'Hamster wheel', N'hamster-23.jpg', 1, 1, 2)
INSERT [dbo].[Hamsters] ([ID], [Name], [Age], [FavFood], [Loves], [ImgName], [Wins], [Losses], [Games]) VALUES (1064, N'Big Daddy', 2, N'Cheese', N'Sleeping', N'hamster-24.jpg', 3, 2, 5)
INSERT [dbo].[Hamsters] ([ID], [Name], [Age], [FavFood], [Loves], [ImgName], [Wins], [Losses], [Games]) VALUES (1065, N'Bubbles', 2, N'Pellets', N'Eating food', N'hamster-25.jpg', 5, 2, 7)
INSERT [dbo].[Hamsters] ([ID], [Name], [Age], [FavFood], [Loves], [ImgName], [Wins], [Losses], [Games]) VALUES (1066, N'Captain Hook', 2, N'Grass', N'Running', N'hamster-26.jpg', 6, 1, 7)
INSERT [dbo].[Hamsters] ([ID], [Name], [Age], [FavFood], [Loves], [ImgName], [Wins], [Losses], [Games]) VALUES (1067, N'Harry', 2, N'Greens', N'Sleeping', N'hamster-27.jpg', NULL, 2, 2)
INSERT [dbo].[Hamsters] ([ID], [Name], [Age], [FavFood], [Loves], [ImgName], [Wins], [Losses], [Games]) VALUES (1068, N'Shelldon', 3, N'Hay', N'Running', N'hamster-28.jpg', 1, 1, 2)
INSERT [dbo].[Hamsters] ([ID], [Name], [Age], [FavFood], [Loves], [ImgName], [Wins], [Losses], [Games]) VALUES (1069, N'Bob', 2, N'Carrot', N'Running', N'hamster-29.jpg', 1, 3, 4)
INSERT [dbo].[Hamsters] ([ID], [Name], [Age], [FavFood], [Loves], [ImgName], [Wins], [Losses], [Games]) VALUES (1070, N'Molly', 2, N'Beef', N'Sleeping', N'hamster-30.jpg', 4, 1, 5)
INSERT [dbo].[Hamsters] ([ID], [Name], [Age], [FavFood], [Loves], [ImgName], [Wins], [Losses], [Games]) VALUES (1071, N'Shelly', 2, N'Cheese', N'Running', N'hamster-31.jpg', 1, NULL, 1)
INSERT [dbo].[Hamsters] ([ID], [Name], [Age], [FavFood], [Loves], [ImgName], [Wins], [Losses], [Games]) VALUES (1072, N'Claude', 1, N'Vegetables', N'Hamster wheel', N'hamster-32.jpg', 4, 2, 6)
INSERT [dbo].[Hamsters] ([ID], [Name], [Age], [FavFood], [Loves], [ImgName], [Wins], [Losses], [Games]) VALUES (1073, N'Backspace', 3, N'Rice', N'Sleeping', N'hamster-33.jpg', NULL, NULL, NULL)
INSERT [dbo].[Hamsters] ([ID], [Name], [Age], [FavFood], [Loves], [ImgName], [Wins], [Losses], [Games]) VALUES (1074, N'Big Mac', 3, N'Pellets', N'Running', N'hamster-34.jpg', 1, 2, 3)
INSERT [dbo].[Hamsters] ([ID], [Name], [Age], [FavFood], [Loves], [ImgName], [Wins], [Losses], [Games]) VALUES (1075, N'Goody', 3, N'Carrot', N'Sleeping', N'hamster-35.jpg', 3, 4, 7)
INSERT [dbo].[Hamsters] ([ID], [Name], [Age], [FavFood], [Loves], [ImgName], [Wins], [Losses], [Games]) VALUES (1076, N'Alie', 1, N'Carrot', N'Running', N'hamster-36.jpg', 2, 2, 4)
INSERT [dbo].[Hamsters] ([ID], [Name], [Age], [FavFood], [Loves], [ImgName], [Wins], [Losses], [Games]) VALUES (1078, N'Lucifer', 1, N'Beef', N'Eating food', N'hamster-38.jpg', 2, 2, 4)
INSERT [dbo].[Hamsters] ([ID], [Name], [Age], [FavFood], [Loves], [ImgName], [Wins], [Losses], [Games]) VALUES (1079, N'God', 2, N'Carrot', N'Running', N'hamster-39.jpg', 2, 2, 4)
INSERT [dbo].[Hamsters] ([ID], [Name], [Age], [FavFood], [Loves], [ImgName], [Wins], [Losses], [Games]) VALUES (1080, N'Casper', 1, N'Chips', N'Hamster wheel', N'hamster-40.jpg', 1, 1, 2)
INSERT [dbo].[Hamsters] ([ID], [Name], [Age], [FavFood], [Loves], [ImgName], [Wins], [Losses], [Games]) VALUES (2041, N'test', 1, N'1245', N'515', NULL, 1, NULL, 1)
INSERT [dbo].[Hamsters] ([ID], [Name], [Age], [FavFood], [Loves], [ImgName], [Wins], [Losses], [Games]) VALUES (4041, N'">alert(topWins)', 1, N'233', N'233', NULL, NULL, NULL, NULL)
INSERT [dbo].[Hamsters] ([ID], [Name], [Age], [FavFood], [Loves], [ImgName], [Wins], [Losses], [Games]) VALUES (5041, N'tetet', 2, N'tete', N'tete', NULL, NULL, 1, 1)
SET IDENTITY_INSERT [dbo].[Hamsters] OFF
GO
USE [master]
GO
ALTER DATABASE [HamsterWars] SET  READ_WRITE 
GO
