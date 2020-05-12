USE Menu;
GO

SELECT RecipeHistoryID,
	RecipeID,
	RecipeHistoryStatusID,
	DateCreated
FROM dbo.vwRecipeHistory
WHERE RecipeID = 4
	AND RecipeHistoryStatusID = 2;