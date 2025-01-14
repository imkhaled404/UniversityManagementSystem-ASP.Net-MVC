USE [master]
GO
/****** Object:  Database [UniversityManagementSystemDB_TeamDanpithe]    Script Date: 9/16/2018 1:00:48 PM ******/
CREATE DATABASE [UniversityManagementSystemDB_TeamDanpithe]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'UniversityManagementSystemDB_TeamDanpithe', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\UniversityManagementSystemDB_TeamDanpithe.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'UniversityManagementSystemDB_TeamDanpithe_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\UniversityManagementSystemDB_TeamDanpithe_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [UniversityManagementSystemDB_TeamDanpithe] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [UniversityManagementSystemDB_TeamDanpithe].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [UniversityManagementSystemDB_TeamDanpithe] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [UniversityManagementSystemDB_TeamDanpithe] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [UniversityManagementSystemDB_TeamDanpithe] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [UniversityManagementSystemDB_TeamDanpithe] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [UniversityManagementSystemDB_TeamDanpithe] SET ARITHABORT OFF 
GO
ALTER DATABASE [UniversityManagementSystemDB_TeamDanpithe] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [UniversityManagementSystemDB_TeamDanpithe] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [UniversityManagementSystemDB_TeamDanpithe] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [UniversityManagementSystemDB_TeamDanpithe] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [UniversityManagementSystemDB_TeamDanpithe] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [UniversityManagementSystemDB_TeamDanpithe] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [UniversityManagementSystemDB_TeamDanpithe] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [UniversityManagementSystemDB_TeamDanpithe] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [UniversityManagementSystemDB_TeamDanpithe] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [UniversityManagementSystemDB_TeamDanpithe] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [UniversityManagementSystemDB_TeamDanpithe] SET  DISABLE_BROKER 
GO
ALTER DATABASE [UniversityManagementSystemDB_TeamDanpithe] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [UniversityManagementSystemDB_TeamDanpithe] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [UniversityManagementSystemDB_TeamDanpithe] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [UniversityManagementSystemDB_TeamDanpithe] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [UniversityManagementSystemDB_TeamDanpithe] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [UniversityManagementSystemDB_TeamDanpithe] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [UniversityManagementSystemDB_TeamDanpithe] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [UniversityManagementSystemDB_TeamDanpithe] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [UniversityManagementSystemDB_TeamDanpithe] SET  MULTI_USER 
GO
ALTER DATABASE [UniversityManagementSystemDB_TeamDanpithe] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [UniversityManagementSystemDB_TeamDanpithe] SET DB_CHAINING OFF 
GO
ALTER DATABASE [UniversityManagementSystemDB_TeamDanpithe] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [UniversityManagementSystemDB_TeamDanpithe] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [UniversityManagementSystemDB_TeamDanpithe]
GO
/****** Object:  Table [dbo].[AllocateClassroom]    Script Date: 9/16/2018 1:00:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AllocateClassroom](
	[ClassId] [int] IDENTITY(1,1) NOT NULL,
	[CourseId] [int] NOT NULL,
	[RoomId] [int] NOT NULL,
	[DayId] [int] NOT NULL,
	[FromTime] [time](7) NOT NULL,
	[ToTime] [time](7) NOT NULL,
	[Action] [varchar](50) NOT NULL,
 CONSTRAINT [PK_AllocateClassroom] PRIMARY KEY CLUSTERED 
(
	[ClassId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Course]    Script Date: 9/16/2018 1:00:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Course](
	[CourseId] [int] IDENTITY(1,1) NOT NULL,
	[CourseName] [varchar](50) NOT NULL,
	[CourseCode] [varchar](50) NOT NULL,
	[Credit] [float] NOT NULL,
	[Description] [varchar](200) NOT NULL,
	[DeptId] [int] NOT NULL,
	[SemesterId] [int] NOT NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[CourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_Course] UNIQUE NONCLUSTERED 
(
	[CourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_Course_1] UNIQUE NONCLUSTERED 
(
	[CourseName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CourseAssignToTeacher]    Script Date: 9/16/2018 1:00:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CourseAssignToTeacher](
	[CourseAsgnId] [int] IDENTITY(1,1) NOT NULL,
	[TeacherId] [int] NOT NULL,
	[CourseId] [int] NOT NULL,
	[Action] [varchar](50) NOT NULL,
 CONSTRAINT [PK_CourseAssignToTeacher] PRIMARY KEY CLUSTERED 
(
	[CourseAsgnId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 9/16/2018 1:00:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Departments](
	[DeptId] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](50) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Departments] PRIMARY KEY CLUSTERED 
(
	[DeptId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_Departments] UNIQUE NONCLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_Departments_1] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Designations]    Script Date: 9/16/2018 1:00:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Designations](
	[DesignationsId] [int] IDENTITY(1,1) NOT NULL,
	[DesignationsName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Designations] PRIMARY KEY CLUSTERED 
(
	[DesignationsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Enroll]    Script Date: 9/16/2018 1:00:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Enroll](
	[EnrollId] [int] NOT NULL,
	[StudentId] [int] NOT NULL,
	[CourseId] [int] NOT NULL,
	[Date] [date] NOT NULL,
	[GradeId] [int] NULL,
	[Action] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Enroll] PRIMARY KEY CLUSTERED 
(
	[EnrollId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Grade]    Script Date: 9/16/2018 1:00:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Grade](
	[GradeId] [int] IDENTITY(1,1) NOT NULL,
	[GradeName] [varchar](50) NULL,
 CONSTRAINT [PK_Grade] PRIMARY KEY CLUSTERED 
(
	[GradeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rooms]    Script Date: 9/16/2018 1:00:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rooms](
	[RoomID] [int] IDENTITY(1,1) NOT NULL,
	[RoomName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Rooms] PRIMARY KEY CLUSTERED 
(
	[RoomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Semester]    Script Date: 9/16/2018 1:00:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Semester](
	[SemesterId] [int] IDENTITY(1,1) NOT NULL,
	[SemesterName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Semester] PRIMARY KEY CLUSTERED 
(
	[SemesterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Student]    Script Date: 9/16/2018 1:00:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Student](
	[StudentId] [int] IDENTITY(1,1) NOT NULL,
	[StudentName] [varchar](50) NOT NULL,
	[ContactNo] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Date] [date] NOT NULL,
	[Address] [varchar](50) NULL,
	[DepartmentId] [int] NOT NULL,
	[RegistrationNo] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 9/16/2018 1:00:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Teacher](
	[TeacherId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Address] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[ContactNo] [varchar](50) NOT NULL,
	[DesignationId] [int] NOT NULL,
	[DepartmentId] [int] NOT NULL,
	[Credit] [float] NOT NULL,
 CONSTRAINT [PK_Teacher] PRIMARY KEY CLUSTERED 
(
	[TeacherId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WeekDays]    Script Date: 9/16/2018 1:00:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WeekDays](
	[DayId] [int] NOT NULL,
	[DayName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_WeekDays] PRIMARY KEY CLUSTERED 
(
	[DayId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[AllocateClassroom]  WITH CHECK ADD  CONSTRAINT [FK_AllocateClassroom_Course] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Course] ([CourseId])
GO
ALTER TABLE [dbo].[AllocateClassroom] CHECK CONSTRAINT [FK_AllocateClassroom_Course]
GO
ALTER TABLE [dbo].[AllocateClassroom]  WITH CHECK ADD  CONSTRAINT [FK_AllocateClassroom_Rooms] FOREIGN KEY([RoomId])
REFERENCES [dbo].[Rooms] ([RoomID])
GO
ALTER TABLE [dbo].[AllocateClassroom] CHECK CONSTRAINT [FK_AllocateClassroom_Rooms]
GO
ALTER TABLE [dbo].[AllocateClassroom]  WITH CHECK ADD  CONSTRAINT [FK_AllocateClassroom_WeekDays] FOREIGN KEY([DayId])
REFERENCES [dbo].[WeekDays] ([DayId])
GO
ALTER TABLE [dbo].[AllocateClassroom] CHECK CONSTRAINT [FK_AllocateClassroom_WeekDays]
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_Departments] FOREIGN KEY([DeptId])
REFERENCES [dbo].[Departments] ([DeptId])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_Departments]
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_Semester] FOREIGN KEY([SemesterId])
REFERENCES [dbo].[Semester] ([SemesterId])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_Semester]
GO
ALTER TABLE [dbo].[CourseAssignToTeacher]  WITH CHECK ADD  CONSTRAINT [FK_CourseAssignToTeacher_Course] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Course] ([CourseId])
GO
ALTER TABLE [dbo].[CourseAssignToTeacher] CHECK CONSTRAINT [FK_CourseAssignToTeacher_Course]
GO
ALTER TABLE [dbo].[CourseAssignToTeacher]  WITH CHECK ADD  CONSTRAINT [FK_CourseAssignToTeacher_Teacher] FOREIGN KEY([TeacherId])
REFERENCES [dbo].[Teacher] ([TeacherId])
GO
ALTER TABLE [dbo].[CourseAssignToTeacher] CHECK CONSTRAINT [FK_CourseAssignToTeacher_Teacher]
GO
ALTER TABLE [dbo].[Enroll]  WITH CHECK ADD  CONSTRAINT [FK_Enroll_Course] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Course] ([CourseId])
GO
ALTER TABLE [dbo].[Enroll] CHECK CONSTRAINT [FK_Enroll_Course]
GO
ALTER TABLE [dbo].[Enroll]  WITH CHECK ADD  CONSTRAINT [FK_Enroll_Grade] FOREIGN KEY([GradeId])
REFERENCES [dbo].[Grade] ([GradeId])
GO
ALTER TABLE [dbo].[Enroll] CHECK CONSTRAINT [FK_Enroll_Grade]
GO
ALTER TABLE [dbo].[Enroll]  WITH CHECK ADD  CONSTRAINT [FK_Enroll_Student] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Student] ([StudentId])
GO
ALTER TABLE [dbo].[Enroll] CHECK CONSTRAINT [FK_Enroll_Student]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Departments] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Departments] ([DeptId])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Departments]
GO
ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD  CONSTRAINT [FK_Teacher_Departments] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Departments] ([DeptId])
GO
ALTER TABLE [dbo].[Teacher] CHECK CONSTRAINT [FK_Teacher_Departments]
GO
ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD  CONSTRAINT [FK_Teacher_Designations] FOREIGN KEY([DesignationId])
REFERENCES [dbo].[Designations] ([DesignationsId])
GO
ALTER TABLE [dbo].[Teacher] CHECK CONSTRAINT [FK_Teacher_Designations]
GO
USE [master]
GO
ALTER DATABASE [UniversityManagementSystemDB_TeamDanpithe] SET  READ_WRITE 
GO
