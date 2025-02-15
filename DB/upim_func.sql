USE [TQ3]
GO
/****** Object:  UserDefinedFunction [dbo].[f_gettime_t]    Script Date: 05/04/2016 09:20:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_gettime_t]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[f_gettime_t]
GO
/****** Object:  UserDefinedFunction [dbo].[f_gettimefromtime_t]    Script Date: 05/04/2016 09:20:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_gettimefromtime_t]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[f_gettimefromtime_t]
GO
/****** Object:  UserDefinedFunction [dbo].[f_gettimefromtime_t]    Script Date: 05/04/2016 09:20:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_gettimefromtime_t]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'--将c++的time_t的整形转化成datetime类型
--time_t存储的是格林尼治标准时间，有8个时区时间差
CREATE function [dbo].[f_gettimefromtime_t](@daytime int)
returns datetime
as
begin 
declare @ret datetime
select @ret=dateadd(second,@daytime+8*3600,convert(datetime,''1970-1-1''))
return @Ret
end
' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[f_gettime_t]    Script Date: 05/04/2016 09:20:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_gettime_t]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'--将datetime类型转化成c++的time_t的整形
CREATE function [dbo].[f_gettime_t](@daytime datetime)
returns int
as
begin 
declare @ret int
select @ret=datediff(second,convert(datetime,''1970-1-1''),@daytime)-8*3600
return @Ret
end
' 
END
GO
