USE Menu;
GO

DECLARE @RecipeName VARCHAR(25)

SELECT
	rec.RecipeName,
	rec.RecipeDescription,
	rec.ServingQuantity,
	recing.IsActive,
	ing.IngredientName
FROM dbo.Recipe rec
	INNER JOIN dbo.RecipeIngredient recing
	ON rec.RecipeID = recing.RecipeID
	INNER JOIN dbo.Ingredient ing
	ON recing.IngredientID = ing.IngredientID
WHERE rec.RecipeName = @RecipeName;