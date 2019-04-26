CREATE TABLE [dbo].[Language]
(
	[Id] INT NOT NULL IDENTITY,
	[Name] VARCHAR(30) NOT NULL,
	[Culture] VARCHAR(5) NOT NULL,
    
	CONSTRAINT [PK_Language] PRIMARY KEY ([Id]),
	CONSTRAINT [UK_Language_Name] UNIQUE ([Name])
)
