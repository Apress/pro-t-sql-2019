USE Menu;
GO

-- The data for this chapter has been provided in a backup file

SELECT rec.RecipeName,
	rec.RecipeDescription,
	rec.ServingQuantity,
	ing.IngredientName,
	ml.MealTypeName,
	ml.MealTypeDescription,
	prp.PreparationTypeName,
	prp.PreparationTypeDescription
FROM dbo.Recipe rec
	INNER JOIN dbo.RecipeIngredient recing
	ON rec.RecipeID = recing.RecipeID
	INNER JOIN dbo.Ingredient ing
	ON recing.IngredientID = ing.IngredientID
	INNER JOIN dbo.MealType ml
	ON rec.MealTypeID = ml.MealTypeID
	INNER JOIN dbo.PreparationType prp
	ON rec.PreparationTypeID = prp.PreparationTypeID
WHERE ing.IngredientName LIKE 'Tom%'
-- Try replacing the line above with the following for less records
-- WHERE ing.IngredientName LIKE 'Tomato'
	AND ing.IsActive = 1