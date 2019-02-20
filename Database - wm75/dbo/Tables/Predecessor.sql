CREATE TABLE [dbo].[Predecessor] (
    [TaskId]        UNIQUEIDENTIFIER NOT NULL,
    [PredecessorId] UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [PK_Predecessor_1] PRIMARY KEY CLUSTERED ([TaskId] ASC, [PredecessorId] ASC),
    CONSTRAINT [FK_Predecessor_Predecessor1] FOREIGN KEY ([PredecessorId]) REFERENCES [dbo].[Task] ([TaskId]),
    CONSTRAINT [FK_Predecessor_Task] FOREIGN KEY ([TaskId]) REFERENCES [dbo].[Task] ([TaskId])
);

