USE Menu;
GO

SELECT RecipeHistoryID,
	RecipeID,
	RecipeHistoryStatusID,
	DateCreated
FROM dbo.RecipeHistory
WHERE DateCreated BETWEEN '10/7/18' AND '10/9/18';