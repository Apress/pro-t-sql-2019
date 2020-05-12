USE Menu;
GO

SELECT rec.RecipeName, inglis.IngredientName, inglis.IngredientCost
FROM dbo.Recipe rec
	INNER JOIN dbo.RecipeIngredient recing
	ON rec.RecipeID = recing.RecipeID
	INNER JOIN dbo.Ingredient ing
	ON recing.IngredientID = ing.IngredientID
	CROSS APPLY dbo.IngredientCostByIngredientID(ing.IngredientID) inglis
WHERE ing.IngredientName = 'Italian Sausage';