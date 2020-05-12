USE Menu;
GO

SELECT RecipeHistoryID,
	RecipeID,
	RecipeHistoryStatusID,
	DateCreated
FROM dbo.RecipeHistory
WHERE RecipeID = 4
	AND RecipeHistoryStatusID = 2;