CREATE TABLE [dbo].[Person] (
    [UserId]          INT           IDENTITY (1, 1) NOT NULL,
    [Name]            NVARCHAR (50) NOT NULL,
    [Username]        NVARCHAR (50) NOT NULL,
    [Password]        NVARCHAR (50) NOT NULL,
    [Email]           NVARCHAR (50) NULL,
    [TelephoneNo]     NVARCHAR (50) NULL,
    [IsAdministrator] BIT           NULL,
    CONSTRAINT [PK_Person] PRIMARY KEY CLUSTERED ([UserId] ASC)
);

