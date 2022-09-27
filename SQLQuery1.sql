CREATE TABLE [dbo].[Newuser] (
	[Uid]	INT IDENTITY(1,1) PRIMARY KEY,
    [UserName] NVARCHAR (60)  NOT NULL,
    [Email]    NVARCHAR (200) UNIQUE NOT NULL,
    [Contact]  NCHAR (20)     NOT NULL,
    [Password] NCHAR (50)     NOT NULL,
);