USE Menu;
GO

SELECT ing.IngredientID,
	ing.IngredientName,
	ing.IsActive,
	ing.DateCreated,
	ing.DateModified
FROM dbo.Ingredient ing
	INNER JOIN dbo.RecipeIngredient recing
	ON ing.IngredientID = recing.IngredientID
	INNER JOIN dbo.Recipe rec
	ON recing.RecipeID = rec.RecipeID
WHERE rec.RecipeName = 'Spaghetti'