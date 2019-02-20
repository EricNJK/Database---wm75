CREATE TABLE [dbo].[TeamMember] (
    [UserId] INT NOT NULL,
    [TeamId] INT NOT NULL,
    CONSTRAINT [PK_TeamMember] PRIMARY KEY CLUSTERED ([UserId] ASC, [TeamId] ASC),
    CONSTRAINT [FK_TeamMember_Person] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Person] ([UserId]),
    CONSTRAINT [FK_TeamMember_Team] FOREIGN KEY ([TeamId]) REFERENCES [dbo].[Team] ([TeamId])
);

