USE Menu;
GO

ALTER TABLE dbo.RecipeHistory
WITH CHECK ADD CONSTRAINT ck_RecipeHistory_MinDateCreated
CHECK
(
 DateCreated IS NOT NULL
 AND DateCreated >= '08/01/2018'
);

ALTER TABLE dbo.RecipeHistory
WITH CHECK ADD CONSTRAINT ck_RecipeHistory_MaxDateCreated
CHECK
(
 DateCreated IS NOT NULL
 AND DateCreated < '10/01/2019'
);

ALTER TABLE dbo.RecipeHistory
SWITCH TO dbo.RecipeHistoryArchive
PARTITION RecipeHistory2018Q4;