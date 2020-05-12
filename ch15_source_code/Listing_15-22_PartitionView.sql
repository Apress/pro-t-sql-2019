USE Menu;
GO

CREATE VIEW dbo.vwRecipeHistory
AS

-- Select data from current read/write table
SELECT RecipeHistoryID,
	RecipeID,
	RecipeHistoryStatusID,
	DateCreated,
	DateModified
FROM dbo.RecipeHistory

UNION ALL

-- Select data from partitioned table
SELECT RecipeHistoryID,
	RecipeID,
	RecipeHistoryStatusID,
	DateCreated,
	DateModified
FROM dbo.RecipeHistoryPartition;