﻿CREATE TABLE [dbo].[Country]
(
	[Id] INT NOT NULL IDENTITY,
	[Name] VARCHAR(50) NOT NULL,
	[Code] VARCHAR(3) NOT NULL,

    CONSTRAINT [PK_Country] PRIMARY KEY ([Id]),
	CONSTRAINT [UK_Country_Code] UNIQUE ([Code])
)
