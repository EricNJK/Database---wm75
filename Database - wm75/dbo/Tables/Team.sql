CREATE TABLE [dbo].[Team] (
    [TeamId]       INT           IDENTITY (1, 1) NOT NULL,
    [Name]         NVARCHAR (50) NOT NULL,
    [Location]     NVARCHAR (50) NOT NULL,
    [TeamLeaderId] INT           NULL,
    [IsExternal]   BIT           NULL,
    CONSTRAINT [PK_Team] PRIMARY KEY CLUSTERED ([TeamId] ASC),
    CONSTRAINT [FK_Team_Person] FOREIGN KEY ([TeamLeaderId]) REFERENCES [dbo].[Person] ([UserId])
);

