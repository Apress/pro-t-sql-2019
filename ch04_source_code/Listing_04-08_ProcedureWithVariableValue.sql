USE Menu;
GO

DECLARE @RecipeID INT;

SET @RecipeID = 1

EXECUTE dbo.GetRecipeByRecipeID @RecipeID;