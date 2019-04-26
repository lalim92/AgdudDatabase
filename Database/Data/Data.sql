/*
Modèle de script de post-déploiement							
--------------------------------------------------------------------------------------
 Ce fichier contient des instructions SQL qui seront ajoutées au script de compilation.		
 Utilisez la syntaxe SQLCMD pour inclure un fichier dans le script de post-déploiement.			
 Exemple :      :r .\monfichier.sql								
 Utilisez la syntaxe SQLCMD pour référencer une variable dans le script de post-déploiement.		
 Exemple :      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/


--------------------------------------------------------------------
--------------------------------------------------------------------
------------
------------	LANGUAGES
------------
--------------------------------------------------------------------
--------------------------------------------------------------------
IF NOT EXISTS (SELECT * FROM [dbo].[Language] WHERE [Culture] = 'ar-DZ')
INSERT INTO [dbo].[Language] ([Name], [Culture]) VALUES ('Arabe dialéctal algérien', 'ar-DZ');


--------------------------------------------------------------------
--------------------------------------------------------------------
------------
------------	COUNTRIES
------------
--------------------------------------------------------------------
--------------------------------------------------------------------

IF NOT EXISTS (SELECT * FROM [dbo].[Country] WHERE [Code] = 'DZA')
INSERT INTO [dbo].[Country] ([Name], [Code]) VALUES ('Algérie', 'DZA');
