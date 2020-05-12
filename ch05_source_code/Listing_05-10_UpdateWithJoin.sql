USE Menu;
GO

UPDATE ing
SET ing.DateModified = GETDATE()
FROM dbo.Ingredient ing
	INNER JOIN dbo.RecipeIngredient recing
	ON ing.IngredientID = recing.IngredientID
	INNER JOIN dbo.Recipe rec
	ON recing.RecipeID = rec.RecipeID
WHERE rec.RecipeName = 'Spaghetti'