CREATE TABLE [dbo].[Task] (
    [TaskId]                UNIQUEIDENTIFIER NOT NULL,
    [Name]                  NVARCHAR (50)    NOT NULL,
    [ExpectedDateStarted]   DATETIME         NOT NULL,
    [ExpectedDateCompleted] DATETIME         NOT NULL,
    [ActualDateStarted]     DATETIME         NULL,
    [ActualDateCompleted]   DATETIME         NULL,
    [ProjectId]             UNIQUEIDENTIFIER NOT NULL,
    [TeamId]                INT              NOT NULL,
    [StatusId]              INT              NOT NULL,
    [PercentCompleted]      TINYINT          NULL,
    CONSTRAINT [PK_Task] PRIMARY KEY CLUSTERED ([TaskId] ASC),
    CONSTRAINT [FK_Task_Project] FOREIGN KEY ([ProjectId]) REFERENCES [dbo].[Project] ([ProjectId]),
    CONSTRAINT [FK_Task_Status] FOREIGN KEY ([StatusId]) REFERENCES [dbo].[Status] ([StatusId]),
    CONSTRAINT [FK_Task_Team] FOREIGN KEY ([TeamId]) REFERENCES [dbo].[Team] ([TeamId])
);

