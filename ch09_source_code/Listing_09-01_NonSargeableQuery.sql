USE Menu;
GO

SELECT RecipeName, RecipeDescription
FROM dbo.Recipe
WHERE DATEPART(MM, DateCreated) = 8
	AND DATEPART(YY, DateCreated) = 2019