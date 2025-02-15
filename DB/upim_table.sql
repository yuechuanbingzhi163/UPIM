USE [TQ3]
GO
/****** Object:  Table [dbo].[usergroup]    Script Date: 05/04/2016 09:12:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usergroup]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[usergroup](
	[icqid] [char](12) NOT NULL,
	[groupid] [int] NOT NULL,
	[moduser] [char](20) NULL,
	[modtime] [datetime] NULL,
 CONSTRAINT [PK_usergroup] PRIMARY KEY CLUSTERED 
(
	[icqid] ASC,
	[groupid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[userchatroom]    Script Date: 05/04/2016 09:12:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[userchatroom]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[userchatroom](
	[icqid] [char](12) NOT NULL,
	[roomid] [int] NOT NULL,
	[modtime] [datetime] NULL,
 CONSTRAINT [PK_userchatroom] PRIMARY KEY CLUSTERED 
(
	[icqid] ASC,
	[roomid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[user_file]    Script Date: 05/04/2016 09:12:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[user_file]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[user_file](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [char](12) NULL,
	[flag] [tinyint] NULL,
	[filename_inner] [varchar](128) NULL,
	[filename] [varchar](255) NULL,
	[totallen] [int] NULL,
	[modtime] [datetime] NULL,
 CONSTRAINT [PK_user_file] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[user_detailedinfo]    Script Date: 05/04/2016 09:12:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[user_detailedinfo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[user_detailedinfo](
	[icqid] [char](12) NOT NULL,
	[nickname] [char](40) NULL,
	[truename] [char](40) NULL,
	[iconindex] [smallint] NULL,
	[sex] [tinyint] NULL,
	[birthday] [int] NULL,
	[province] [char](40) NULL,
	[city] [char](40) NULL,
	[address] [char](100) NULL,
	[postalcode] [char](6) NULL,
	[telenum] [char](40) NULL,
	[mobilenum] [char](40) NULL,
	[email] [char](40) NULL,
	[msn] [char](40) NULL,
	[college] [char](40) NULL,
	[profession] [char](40) NULL,
	[department] [char](100) NULL,
	[homepage] [char](100) NULL,
	[sign] [char](100) NULL,
	[describe] [char](200) NULL,
 CONSTRAINT [PK_user_detailedinfo] PRIMARY KEY CLUSTERED 
(
	[icqid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[topgroupuser]    Script Date: 05/04/2016 09:12:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[topgroupuser]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[topgroupuser](
	[topgroupid] [int] NOT NULL,
	[icqid] [char](12) NOT NULL,
	[modtime] [datetime] NULL,
 CONSTRAINT [PK_topgroupuser] PRIMARY KEY CLUSTERED 
(
	[topgroupid] ASC,
	[icqid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[topgroup]    Script Date: 05/04/2016 09:12:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[topgroup]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[topgroup](
	[yybinfo] [char](4) NOT NULL,
	[topgroupid] [int] IDENTITY(1,1) NOT NULL,
	[groupname] [char](20) NOT NULL,
	[limit] [int] NULL,
 CONSTRAINT [PK_topgroup] PRIMARY KEY CLUSTERED 
(
	[yybinfo] ASC,
	[topgroupid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[st_const$]    Script Date: 05/04/2016 09:12:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[st_const$]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[st_const$](
	[id] [float] NULL,
	[type] [float] NULL,
	[name] [nvarchar](255) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[st_const]    Script Date: 05/04/2016 09:12:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[st_const]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[st_const](
	[id] [int] NOT NULL,
	[type] [int] NULL,
	[name] [char](64) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sms]    Script Date: 05/04/2016 09:12:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sms]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sms](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[recv_id] [char](12) NULL,
	[recv_tel] [varchar](20) NULL,
	[send_timing] [varchar](20) NULL,
	[send_flag] [int] NULL,
	[send_time] [varchar](20) NULL,
	[send_id] [char](12) NULL,
	[send_name] [varchar](20) NULL,
	[cnt] [varchar](512) NULL,
 CONSTRAINT [PK_MobileMsg] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[roomfile]    Script Date: 05/04/2016 09:12:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[roomfile]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[roomfile](
	[fileid] [int] IDENTITY(1,1) NOT NULL,
	[roomid] [int] NULL,
	[roomtype] [char](1) NULL,
	[filename_inner] [varchar](128) NULL,
	[filename] [varchar](256) NULL,
	[totallen] [int] NULL,
	[filelen] [int] NULL,
	[flag] [int] NULL,
	[src_id] [char](20) NULL,
	[modtime] [datetime] NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[relation$]    Script Date: 05/04/2016 09:12:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[relation$]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[relation$](
	[id1] [nvarchar](255) NULL,
	[id2] [nvarchar](255) NULL,
	[relation] [float] NULL,
	[modtime] [datetime] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[relation]    Script Date: 05/04/2016 09:12:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[relation]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[relation](
	[id1] [char](12) NOT NULL,
	[id2] [char](12) NOT NULL,
	[relation] [int] NULL,
	[modtime] [datetime] NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[publicinfo]    Script Date: 05/04/2016 09:12:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[publicinfo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[publicinfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[createtime] [datetime] NOT NULL,
	[deletetime] [datetime] NULL,
	[modifytime] [datetime] NULL,
	[delflag] [smallint] NOT NULL,
	[usertype] [int] NULL,
	[createuserid] [varchar](32) NULL,
	[comment] [varchar](127) NULL,
	[wellcomcontent] [varchar](127) NULL,
 CONSTRAINT [PK_public_info] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'publicinfo', N'COLUMN',N'usertype'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'可见范围 1:所用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'publicinfo', @level2type=N'COLUMN',@level2name=N'usertype'
GO
/****** Object:  Table [dbo].[public_tprule]    Script Date: 05/04/2016 09:12:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[public_tprule]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[public_tprule](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tptype] [int] NOT NULL,
	[tpname] [varchar](50) NOT NULL,
	[starttime] [int] NULL,
	[timeincreament] [int] NULL,
	[problemtype] [smallint] NULL,
	[interfacename] [varchar](50) NULL,
	[customerservice] [varchar](32) NULL,
	[delflag] [smallint] NOT NULL,
	[ruleex] [varchar](127) NULL,
 CONSTRAINT [PK_public_tpRule] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'public_tprule', N'COLUMN',N'id'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N' 规则类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'public_tprule', @level2type=N'COLUMN',@level2name=N'id'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'public_tprule', N'COLUMN',N'tptype'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N' 规则类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'public_tprule', @level2type=N'COLUMN',@level2name=N'tptype'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'public_tprule', N'COLUMN',N'tpname'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'规则名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'public_tprule', @level2type=N'COLUMN',@level2name=N'tpname'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'public_tprule', N'COLUMN',N'starttime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'时间规则起始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'public_tprule', @level2type=N'COLUMN',@level2name=N'starttime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'public_tprule', N'COLUMN',N'timeincreament'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'时间规则结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'public_tprule', @level2type=N'COLUMN',@level2name=N'timeincreament'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'public_tprule', N'COLUMN',N'problemtype'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'路由问题类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'public_tprule', @level2type=N'COLUMN',@level2name=N'problemtype'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'public_tprule', N'COLUMN',N'interfacename'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接口名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'public_tprule', @level2type=N'COLUMN',@level2name=N'interfacename'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'public_tprule', N'COLUMN',N'customerservice'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'直接工号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'public_tprule', @level2type=N'COLUMN',@level2name=N'customerservice'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'public_tprule', N'COLUMN',N'ruleex'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'规则扩展字段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'public_tprule', @level2type=N'COLUMN',@level2name=N'ruleex'
GO
/****** Object:  Table [dbo].[public_tprelation]    Script Date: 05/04/2016 09:12:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[public_tprelation]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[public_tprelation](
	[publicid] [int] NOT NULL,
	[tpid] [int] NOT NULL,
 CONSTRAINT [PK_public_tprelation] PRIMARY KEY CLUSTERED 
(
	[publicid] ASC,
	[tpid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'public_tprelation', N'COLUMN',N'publicid'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公众号ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'public_tprelation', @level2type=N'COLUMN',@level2name=N'publicid'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'public_tprelation', N'COLUMN',N'tpid'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'路由ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'public_tprelation', @level2type=N'COLUMN',@level2name=N'tpid'
GO
/****** Object:  Table [dbo].[public_tpincoderelation]    Script Date: 05/04/2016 09:12:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[public_tpincoderelation]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[public_tpincoderelation](
	[tpid] [int] NOT NULL,
	[incodeid] [bigint] NOT NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[public_incode]    Script Date: 05/04/2016 09:12:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[public_incode]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[public_incode](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](32) NOT NULL,
	[delflag] [smallint] NOT NULL,
	[dispatchrule] [smallint] NOT NULL,
 CONSTRAINT [PK_public_incode] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[public_dispatchrelation]    Script Date: 05/04/2016 09:12:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[public_dispatchrelation]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[public_dispatchrelation](
	[incodeid] [int] NOT NULL,
	[customerserviceid] [bigint] NOT NULL,
	[customerservice] [varchar](32) NOT NULL,
	[priority] [int] NOT NULL,
	[delflag] [smallint] NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[product]    Script Date: 05/04/2016 09:12:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[product]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[product](
	[cp_id] [int] NOT NULL,
	[cp_name] [varchar](50) NULL,
	[cp_type] [tinyint] NULL,
	[cp_mgr] [varchar](20) NULL,
	[cp_tzmb] [varchar](400) NULL,
	[cp_tzln] [varchar](400) NULL,
	[cp_tzfw] [varchar](400) NULL,
	[cp_yjbjjz] [varchar](50) NULL,
	[cp_fxsytz] [varchar](100) NULL,
	[cp_lssy] [varchar](50) NULL,
	[cp_syqt] [varchar](100) NULL,
	[cp_fljg] [varchar](100) NULL,
 CONSTRAINT [PK_product] PRIMARY KEY CLUSTERED 
(
	[cp_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[prdt_user]    Script Date: 05/04/2016 09:12:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prdt_user]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[prdt_user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[cp_id] [int] NOT NULL,
	[user_id] [char](12) NOT NULL,
	[type] [tinyint] NOT NULL,
	[user_name] [varchar](30) NULL,
 CONSTRAINT [PK_prdt_user] PRIMARY KEY CLUSTERED 
(
	[cp_id] ASC,
	[user_id] ASC,
	[type] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[msg_toperson]    Script Date: 05/04/2016 09:12:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[msg_toperson]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[msg_toperson](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[userno] [char](12) NULL,
	[yyb] [char](4) NULL,
	[attr] [char](1) NULL,
	[flag] [char](1) NULL,
	[endtime] [datetime] NULL,
	[src_id] [char](12) NULL,
	[modtime] [datetime] NULL,
	[cnt] [varchar](2048) NULL,
 CONSTRAINT [PK_msg_toperson] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[msg_togroup]    Script Date: 05/04/2016 09:12:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[msg_togroup]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[msg_togroup](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[grouptype] [char](1) NULL,
	[groupid] [char](20) NULL,
	[attr] [char](1) NULL,
	[flag] [char](1) NULL,
	[endtime] [datetime] NULL,
	[src_id] [char](12) NULL,
	[modtime] [datetime] NULL,
	[cnt] [varchar](2048) NULL,
 CONSTRAINT [PK_Info_ToGroup] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[msg_group]    Script Date: 05/04/2016 09:12:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[msg_group]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[msg_group](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[groupid] [char](20) NOT NULL,
	[khh] [char](12) NULL,
	[flag] [char](1) NULL,
	[moduser] [char](12) NULL,
	[modtime] [datetime] NULL,
 CONSTRAINT [PK_msg_group_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[logininfo]    Script Date: 05/04/2016 09:12:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[logininfo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[logininfo](
	[LoginName] [char](20) NOT NULL,
	[Password] [char](32) NULL,
	[Type] [tinyint] NULL,
	[zjzh] [char](20) NULL,
	[deleteflag] [int] NULL,
	[beginday] [int] NULL,
	[endday] [int] NULL,
	[modtime] [datetime] NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[introfriend]    Script Date: 05/04/2016 09:12:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[introfriend]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[introfriend](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[yyb] [char](4) NULL,
	[khh] [char](20) NULL,
	[friend] [varchar](30) NULL,
	[tel] [varchar](30) NULL,
	[khrq] [varchar](50) NULL,
	[cnt] [varchar](2000) NULL,
	[modtime] [datetime] NULL,
	[handleflag] [int] NULL,
	[handleuser] [varchar](30) NULL,
	[handletime] [datetime] NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[INF_EXTINFO]    Script Date: 05/04/2016 09:12:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[INF_EXTINFO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[INF_EXTINFO](
	[MID] [numeric](16, 0) IDENTITY(1,1) NOT NULL,
	[UIDK] [numeric](16, 0) NULL,
	[MSouce] [int] NOT NULL,
	[MType] [int] NOT NULL,
	[MContent] [varchar](1024) NOT NULL,
	[MFrom] [varchar](128) NULL,
	[MDate] [datetime] NOT NULL,
	[MCyl] [bit] NOT NULL,
	[MSendDate] [datetime] NULL,
	[Mobile] [varchar](15) NOT NULL,
	[MState] [int] NULL,
	[Yybid] [varchar](8) NULL,
	[MSendFlag] [int] NULL,
	[MMsgStoreDate] [datetime] NULL,
	[MMsgID] [bigint] NULL,
 CONSTRAINT [PK_INF_EXTINFO] PRIMARY KEY CLUSTERED 
(
	[MID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[icq_tempmsg_g]    Script Date: 05/04/2016 09:12:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_tempmsg_g]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[icq_tempmsg_g](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[roomid] [int] NULL,
	[roomtype] [char](1) NULL,
	[src_id] [char](12) NULL,
	[date] [int] NULL,
	[time] [int] NULL,
	[type] [int] NULL,
	[flag] [int] NULL,
	[message] [varchar](4000) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[icq_tempmsg]    Script Date: 05/04/2016 09:12:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_tempmsg]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[icq_tempmsg](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[dst_id] [char](12) NULL,
	[src_id] [char](12) NULL,
	[date] [int] NULL,
	[time] [int] NULL,
	[type] [int] NULL,
	[flag] [int] NULL,
	[mark] [int] NULL,
	[message] [varchar](4000) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[icq_offmsg]    Script Date: 05/04/2016 09:12:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_offmsg]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[icq_offmsg](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[dst_id] [char](12) NOT NULL,
	[src_id] [char](12) NULL,
	[time] [int] NULL,
	[type] [int] NULL,
	[src_name] [char](32) NULL,
	[roomid] [int] NULL,
	[roomtype] [int] NULL,
	[flag] [int] NULL,
	[modtime] [datetime] NULL,
	[message] [varchar](4000) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[icq_hismsg_g]    Script Date: 05/04/2016 09:12:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_hismsg_g]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[icq_hismsg_g](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[roomid] [int] NULL,
	[roomtype] [char](1) NULL,
	[src_id] [char](12) NULL,
	[date] [int] NULL,
	[time] [int] NULL,
	[type] [int] NULL,
	[flag] [int] NULL,
	[message] [varchar](4000) NULL,
 CONSTRAINT [PK_icq_hismsg_g] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[icq_hismsg]    Script Date: 05/04/2016 09:12:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_hismsg]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[icq_hismsg](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[dst_id] [char](12) NULL,
	[src_id] [char](12) NULL,
	[date] [int] NULL,
	[time] [int] NULL,
	[type] [int] NULL,
	[flag] [int] NULL,
	[mark] [int] NULL,
	[message] [varchar](4000) NULL,
 CONSTRAINT [PK_icq_hismsg] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[icq_broadcast]    Script Date: 05/04/2016 09:12:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[icq_broadcast]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[icq_broadcast](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[src_id] [char](12) NULL,
	[type] [char](1) NULL,
	[time] [int] NULL,
	[dst_id] [varchar](128) NULL,
	[url] [varchar](256) NULL,
	[cnt] [varchar](2048) NULL,
	[modtime] [datetime] NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[groupuser]    Script Date: 05/04/2016 09:12:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[groupuser]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[groupuser](
	[usergroupid] [int] NOT NULL,
	[icqid] [char](12) NOT NULL,
	[moduser] [varchar](20) NULL,
	[modtime] [datetime] NULL,
 CONSTRAINT [PK_groupuser] PRIMARY KEY CLUSTERED 
(
	[usergroupid] ASC,
	[icqid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[groupinfo]    Script Date: 05/04/2016 09:12:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[groupinfo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[groupinfo](
	[groupid] [int] IDENTITY(1,1) NOT NULL,
	[groupname] [char](20) NULL,
	[parent] [int] NULL,
	[type] [int] NULL,
	[moduser] [varchar](20) NULL,
	[modtime] [datetime] NULL,
 CONSTRAINT [PK_groupinfo] PRIMARY KEY CLUSTERED 
(
	[groupid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[func_url]    Script Date: 05/04/2016 09:12:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[func_url]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[func_url](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idx] [int] NULL,
	[type] [int] NULL,
	[name] [varchar](30) NULL,
	[url] [varchar](255) NULL,
	[image] [varchar](30) NULL,
	[token] [int] NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[filter_words]    Script Date: 05/04/2016 09:12:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[filter_words]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[filter_words](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[words] [varchar](50) NULL,
 CONSTRAINT [PK_filter_words] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[emp_role]    Script Date: 05/04/2016 09:12:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[emp_role]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[emp_role](
	[roleid] [int] NOT NULL,
	[rolename] [char](30) NULL,
	[modtime] [datetime] NULL,
 CONSTRAINT [PK_emp_role] PRIMARY KEY CLUSTERED 
(
	[roleid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[emp_logininfo$]    Script Date: 05/04/2016 09:12:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[emp_logininfo$]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[emp_logininfo$](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[loginname] [char](12) NOT NULL,
	[pwd] [char](32) NULL,
	[truename] [char](20) NULL,
	[userid] [varchar](32) NULL,
	[yyb] [int] NULL,
	[yybname] [varchar](50) NULL,
	[deptid] [int] NULL,
	[role] [int] NULL,
	[sex] [char](1) NULL,
	[birthday] [int] NULL,
	[zsbh] [varchar](30) NULL,
	[tel] [varchar](20) NULL,
	[mobile] [varchar](20) NULL,
	[email] [varchar](30) NULL,
	[sign] [varchar](100) NULL,
	[description] [varchar](200) NULL,
	[modtime] [datetime] NULL,
 CONSTRAINT [PK_emp_logininfo$] PRIMARY KEY CLUSTERED 
(
	[loginname] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[emp_logininfo]    Script Date: 05/04/2016 09:12:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[emp_logininfo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[emp_logininfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[loginname] [char](12) NOT NULL,
	[pwd] [char](32) NULL,
	[truename] [char](20) NULL,
	[userid] [varchar](32) NULL,
	[yyb] [int] NULL,
	[yybname] [varchar](50) NULL,
	[deptid] [int] NULL,
	[role] [int] NULL,
	[sex] [char](1) NULL,
	[birthday] [int] NULL,
	[zsbh] [varchar](30) NULL,
	[tel] [varchar](20) NULL,
	[mobile] [varchar](20) NULL,
	[email] [varchar](30) NULL,
	[sign] [varchar](100) NULL,
	[description] [varchar](200) NULL,
	[modtime] [datetime] NULL,
 CONSTRAINT [PK_emp_logininfo] PRIMARY KEY CLUSTERED 
(
	[loginname] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[emp_dept$]    Script Date: 05/04/2016 09:12:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[emp_dept$]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[emp_dept$](
	[id] [float] NULL,
	[deptid] [float] NULL,
	[parentid] [float] NULL,
	[deptname] [nvarchar](255) NULL,
	[showtype] [float] NULL,
	[moduser] [nvarchar](max) NULL,
	[modtime] [datetime] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[emp_dept]    Script Date: 05/04/2016 09:12:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[emp_dept]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[emp_dept](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[deptid] [int] NOT NULL,
	[parentid] [int] NULL,
	[deptname] [char](50) NULL,
	[showtype] [int] NULL,
	[moduser] [varchar](20) NULL,
	[modtime] [datetime] NULL,
 CONSTRAINT [PK_emp_dept] PRIMARY KEY CLUSTERED 
(
	[deptid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[detailedgroupinfo]    Script Date: 05/04/2016 09:12:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[detailedgroupinfo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[detailedgroupinfo](
	[icqid] [char](12) NOT NULL,
	[group0] [char](20) NULL,
	[group1] [char](20) NULL,
	[group2] [char](20) NULL,
	[group3] [char](20) NULL,
	[group4] [char](20) NULL,
 CONSTRAINT [PK_detailedgroupinfo] PRIMARY KEY CLUSTERED 
(
	[icqid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[dbadmin_logininfo]    Script Date: 05/04/2016 09:12:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbadmin_logininfo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[dbadmin_logininfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[loginname] [char](12) NOT NULL,
	[pwd] [char](32) NULL,
	[truename] [char](12) NULL,
	[role] [int] NULL,
	[modtime] [datetime] NULL,
 CONSTRAINT [PK_dbadmin_logininfo] PRIMARY KEY CLUSTERED 
(
	[loginname] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[complaint]    Script Date: 05/04/2016 09:12:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[complaint]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[complaint](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[yyb] [char](4) NULL,
	[khh] [char](20) NULL,
	[type] [int] NULL,
	[tsdx] [varchar](30) NULL,
	[tsbm] [varchar](10) NULL,
	[tslx] [varchar](10) NULL,
	[tszt] [varchar](255) NULL,
	[tsnr] [varchar](2000) NULL,
	[modtime] [datetime] NULL,
	[handleflag] [int] NULL,
	[handleuser] [varchar](30) NULL,
	[handletime] [datetime] NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[client_logininfo$]    Script Date: 05/04/2016 09:12:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[client_logininfo$]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[client_logininfo$](
	[id] [int] IDENTITY(1000000,1) NOT NULL,
	[khh] [char](12) NOT NULL,
	[name] [char](20) NULL,
	[yyb] [char](4) NULL,
	[yybname] [varchar](50) NULL,
	[sex] [char](1) NULL,
	[level] [int] NULL,
	[birthday] [int] NULL,
	[tel] [varchar](20) NULL,
	[mobile] [varchar](20) NULL,
	[email] [varchar](50) NULL,
	[jf] [varchar](16) NULL,
	[modtime] [datetime] NULL,
 CONSTRAINT [PK_client_logininfo$] PRIMARY KEY CLUSTERED 
(
	[khh] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[client_logininfo]    Script Date: 05/04/2016 09:12:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[client_logininfo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[client_logininfo](
	[id] [int] IDENTITY(1000000,1) NOT NULL,
	[khh] [char](12) NOT NULL,
	[name] [char](20) NULL,
	[yyb] [char](4) NULL,
	[yybname] [varchar](50) NULL,
	[sex] [char](1) NULL,
	[level] [int] NULL,
	[birthday] [int] NULL,
	[tel] [varchar](20) NULL,
	[mobile] [varchar](20) NULL,
	[email] [varchar](50) NULL,
	[jf] [varchar](16) NULL,
	[modtime] [datetime] NULL,
 CONSTRAINT [PK_client_logininfo] PRIMARY KEY CLUSTERED 
(
	[khh] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[chatroominfo]    Script Date: 05/04/2016 09:12:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[chatroominfo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[chatroominfo](
	[roomid] [int] IDENTITY(10000,1) NOT NULL,
	[roomtype] [char](1) NULL,
	[chatroomname] [char](30) NULL,
	[masterid] [char](12) NULL,
	[delflag] [char](1) NULL,
	[noteaudit] [char](1) NULL,
	[note] [varchar](100) NULL,
	[moduser] [varchar](20) NULL,
	[modtime] [datetime] NULL,
 CONSTRAINT [PK_chatroominfo] PRIMARY KEY CLUSTERED 
(
	[roomid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[chatroom_member]    Script Date: 05/04/2016 09:12:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[chatroom_member]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[chatroom_member](
	[roomid] [int] NOT NULL,
	[userid] [char](12) NOT NULL,
	[memtype] [int] NULL,
	[username] [char](20) NULL,
	[sex] [char](1) NULL,
	[modtime] [datetime] NULL,
 CONSTRAINT [PK_chatroom_member] PRIMARY KEY CLUSTERED 
(
	[roomid] ASC,
	[userid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[bcrelation]    Script Date: 05/04/2016 09:12:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[bcrelation]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[bcrelation](
	[icqid] [char](12) NULL,
	[khh] [char](12) NULL,
	[relation] [int] NULL,
	[modtime] [datetime] NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[analys_group_user]    Script Date: 05/04/2016 09:12:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[analys_group_user]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[analys_group_user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[groupid] [int] NULL,
	[clientid] [char](20) NULL,
	[analysid] [char](20) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[analys_group]    Script Date: 05/04/2016 09:12:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[analys_group]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[analys_group](
	[groupid] [int] IDENTITY(1,1) NOT NULL,
	[analysid] [char](20) NULL,
	[groupname] [char](20) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Admin_Login]    Script Date: 05/04/2016 09:12:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Admin_Login]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Admin_Login](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LoginName] [nvarchar](30) NULL,
	[UserName] [nvarchar](50) NULL,
	[PassWord] [varchar](20) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Default [DF_chatroominfo_delflag]    Script Date: 05/04/2016 09:12:50 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_chatroominfo_delflag]') AND parent_object_id = OBJECT_ID(N'[dbo].[chatroominfo]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_chatroominfo_delflag]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[chatroominfo] ADD  CONSTRAINT [DF_chatroominfo_delflag]  DEFAULT ((0)) FOR [delflag]
END


End
GO
/****** Object:  Default [DF_public_dispatchrelation_delflag]    Script Date: 05/04/2016 09:12:50 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_public_dispatchrelation_delflag]') AND parent_object_id = OBJECT_ID(N'[dbo].[public_dispatchrelation]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_public_dispatchrelation_delflag]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[public_dispatchrelation] ADD  CONSTRAINT [DF_public_dispatchrelation_delflag]  DEFAULT ((0)) FOR [delflag]
END


End
GO
/****** Object:  Default [DF_publicNum_InCode_DeleteFlag]    Script Date: 05/04/2016 09:12:50 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_publicNum_InCode_DeleteFlag]') AND parent_object_id = OBJECT_ID(N'[dbo].[public_incode]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_publicNum_InCode_DeleteFlag]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[public_incode] ADD  CONSTRAINT [DF_publicNum_InCode_DeleteFlag]  DEFAULT ((0)) FOR [delflag]
END


End
GO
/****** Object:  Default [DF_public_tpRule_delflag]    Script Date: 05/04/2016 09:12:50 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_public_tpRule_delflag]') AND parent_object_id = OBJECT_ID(N'[dbo].[public_tprule]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_public_tpRule_delflag]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[public_tprule] ADD  CONSTRAINT [DF_public_tpRule_delflag]  DEFAULT ((0)) FOR [delflag]
END


End
GO
/****** Object:  Default [DF_public_info_CreateTime]    Script Date: 05/04/2016 09:12:50 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_public_info_CreateTime]') AND parent_object_id = OBJECT_ID(N'[dbo].[publicinfo]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_public_info_CreateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[publicinfo] ADD  CONSTRAINT [DF_public_info_CreateTime]  DEFAULT (getdate()) FOR [createtime]
END


End
GO
/****** Object:  Default [DF_publicNum_info_UserType]    Script Date: 05/04/2016 09:12:50 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_publicNum_info_UserType]') AND parent_object_id = OBJECT_ID(N'[dbo].[publicinfo]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_publicNum_info_UserType]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[publicinfo] ADD  CONSTRAINT [DF_publicNum_info_UserType]  DEFAULT ((1)) FOR [usertype]
END


End
GO
