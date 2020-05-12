USE Menu;
GO

SELECT RecipeName, RecipeDescription
FROM dbo.Recipe WITH(NOLOCK)
WHERE DateCreated > '8/1/19';