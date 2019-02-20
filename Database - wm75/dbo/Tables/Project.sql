CREATE TABLE [dbo].[Project] (
    [ProjectId]         UNIQUEIDENTIFIER NOT NULL,
    [Name]              NVARCHAR (50)    NOT NULL,
    [ExpectedStartDate] DATETIME         NULL,
    [ExpectedEndDate]   DATETIME         NULL,
    [ActualStartDate]   DATETIME         NULL,
    [ActualEndDate]     NCHAR (10)       NULL,
    [Completed]         BIT              NULL,
    [CustomerId]        INT              NOT NULL,
    [AdministratorId]   INT              NOT NULL,
    CONSTRAINT [PK_Project] PRIMARY KEY CLUSTERED ([ProjectId] ASC),
    CONSTRAINT [FK_Project_Customer] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[Customer] ([CustomerId]),
    CONSTRAINT [FK_Project_Person] FOREIGN KEY ([AdministratorId]) REFERENCES [dbo].[Person] ([UserId])
);

