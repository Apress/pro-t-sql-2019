USE Menu;
GO

SELECT
	RecipeID,
	RecipeName,
	IsActive
FROM dbo.Recipe
WHERE IsActive = 0;