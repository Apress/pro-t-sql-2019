USE Menu;
GO

SELECT
	-- This subquery pulls back the recipe name based on
	-- the ingredients in the recipe
	---- The logic uses a correlated subquery between the
	---- where clause in the subquery
	---- and the table in the outer query
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