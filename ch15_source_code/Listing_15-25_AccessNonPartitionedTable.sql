USE Menu;
GO

SELECT RecipeHistoryID,
	RecipeID,
	RecipeHistoryStatusID,
	DateCreated
FROM dbo.vwRecipeHistory
WHERE DateCreated BETWEEN '5/7/19' AND '5/9/19';