USE Menu;
GO

SELECT rec.RecipeName,
	rec.RecipeDescription,
	rec.IsActive AS 'RecipeIsActive',
	ingr.IngredientName,
	ingr.IsActive AS 'IngredientIsActive'
FROM dbo.Recipe rec
	INNER JOIN dbo.RecipeIngredient recingr
	ON rec.RecipeID = recingr.IngredientID
	LEFT OUTER JOIN dbo.Ingredient ingr
	ON recingr.IngredientID = ingr.IngredientID
		AND ingr.IngredientName <> 'Italian Sausage'