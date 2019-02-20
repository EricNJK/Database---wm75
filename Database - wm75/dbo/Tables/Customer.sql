CREATE TABLE [dbo].[Customer] (
    [CustomerId]  INT            IDENTITY (1, 1) NOT NULL,
    [Name]        NVARCHAR (50)  NULL,
    [Username]    NVARCHAR (50)  NULL,
    [Password]    NVARCHAR (50)  NULL,
    [Email]       NVARCHAR (50)  NULL,
    [TelephoneNo] NVARCHAR (50)  NULL,
    [Company]     NVARCHAR (50)  NULL,
    [Address]     NVARCHAR (200) NULL,
    [Country]     NVARCHAR (50)  NULL,
    CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED ([CustomerId] ASC)
);

