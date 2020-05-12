USE Menu;
GO

CREATE VIEW dbo.vwRecipeHistory

AS

-- Select data from current read/write table
SELECT RecipeHistoryID,
	RecipeID,
	RecipeHistoryStatusID,
	IsActive,
	DateCreated,
	DateModified
FROM dbo.RecipeHistory2019

UNION ALL

-- Select data from partitioned table
SELECT RecipeHistoryID,
	RecipeID,
	RecipeHistoryStatusID,
	IsActive,
	DateCreated,
	DateModified
FROM dbo.RecipeHistoryPartition2018;