USE Menu;
GO

WITH cte_meal (MealTypeName, RecipeName, ServingQuantity, IngredientName, RecipeLevel) AS
(
	SELECT meal.MealTypeName, rec.RecipeName, rec.ServingQuantity, ing.IngredientName, 1
	FROM dbo.Ingredient ing
		INNER JOIN dbo.RecipeIngredient recing
		ON ing.IngredientID = recing.IngredientID
		INNER JOIN dbo.Recipe rec
		ON recing.RecipeID = rec.RecipeID
		INNER JOIN dbo.MealType meal
		ON rec.MealTypeID = meal.MealTypeID
		LEFT JOIN dbo.Ingredient baseing
		ON rec.RecipeName = baseing.IngredientName
	WHERE baseing.IngredientName IS NULL
	UNION ALL
	SELECT meal.MealTypeName, rec.RecipeName, meal.ServingQuantity, ing.IngredientName, meal.RecipeLevel + 1
	FROM cte_meal meal
		INNER JOIN dbo.Recipe rec
		ON meal.IngredientName = rec.RecipeName
		INNER JOIN dbo.RecipeIngredient recing
		ON rec.RecipeID = recing.RecipeID
		INNER JOIN dbo.Ingredient ing
		ON recing.IngredientID = ing.IngredientID
)

SELECT MealTypeName,
	RecipeName,
	IngredientName, 
	RecipeLevel
FROM cte_meal meal
