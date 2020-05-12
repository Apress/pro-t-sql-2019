USE Menu;
GO

SELECT
	(
		SELECT rec.RecipeName
		FROM dbo.Recipe rec
			INNER JOIN dbo.RecipeIngredient recingr
			ON rec.RecipeID = recingr.RecipeID
		WHERE recingr.IngredientID = ingr.IngredientID
	) AS 'RecipeName',
	ingr.IngredientName,
	ingr.IsActive,
	ingr.DateCreated,
	ingr.DateModified
FROM dbo.Ingredient ingr
WHERE IngredientName LIKE '%Tomato%'
ORDER BY RecipeName, ingr.IngredientName