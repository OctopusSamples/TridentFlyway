CREATE TABLE [dbo].[Space]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[OctopusId] [nvarchar] (256) NOT NULL,
[InstanceId] [int] NOT NULL,
[Name] [nvarchar] (256) NOT NULL,
[UrlSlug] [nvarchar] (256) NULL
)
GO
ALTER TABLE [dbo].[Space] ADD CONSTRAINT [PK_Space] PRIMARY KEY CLUSTERED ([Id])
GO
ALTER TABLE [dbo].[Space] ADD CONSTRAINT [FK_Space_Instance] FOREIGN KEY ([InstanceId]) REFERENCES [dbo].[Instance] ([Id])
GO
