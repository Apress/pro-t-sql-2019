USE Menu;
GO

ALTER TABLE dbo.RecipeHistory SWITCH
 PARTITION 1

TO dbo.RecipeHistoryArchive
 PARTITION 1;