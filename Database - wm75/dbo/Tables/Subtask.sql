CREATE TABLE [dbo].[Subtask] (
    [SubtaskId]        INT              IDENTITY (1, 1) NOT NULL,
    [Name]             NVARCHAR (50)    NULL,
    [StatusId]         INT              NOT NULL,
    [PercentCompleted] TINYINT          NULL,
    [TaskId]           UNIQUEIDENTIFIER NOT NULL,
    [TeamMemberId]     INT              NULL,
    CONSTRAINT [PK_Subtask] PRIMARY KEY CLUSTERED ([SubtaskId] ASC),
    CONSTRAINT [FK_Subtask_Person] FOREIGN KEY ([TeamMemberId]) REFERENCES [dbo].[Person] ([UserId]),
    CONSTRAINT [FK_Subtask_StatusId] FOREIGN KEY ([StatusId]) REFERENCES [dbo].[Status] ([StatusId]),
    CONSTRAINT [FK_Subtask_TaskId] FOREIGN KEY ([TaskId]) REFERENCES [dbo].[Task] ([TaskId])
);

