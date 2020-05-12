USE Menu;
GO

SELECT RecipeName, RecipeDescription
FROM dbo.Recipe
WHERE DateCreated > '8/1/19';