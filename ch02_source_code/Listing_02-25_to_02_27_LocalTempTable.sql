USE Menu;
GO

-- Listing 2-25
CREATE TABLE #TempAvailableMeal
(
	MealTypeName	VARCHAR(25),
	RecipeName		VARCHAR(25),
	ServingQuantity	TINYINT,
	IngredientName	VARCHAR(25)
)

-- Listing 2-26
INSERT INTO #TempAvailableMeal (MealTypeName, RecipeName, ServingQuantity, IngredientName)
SELECT meal.MealTypeName, rec.RecipeName, rec.ServingQuantity, ing.IngredientName
FROM dbo.Recipe rec
	INNER JOIN dbo.MealType meal
	ON rec.MealTypeID = meal.MealTypeID
	INNER JOIN dbo.RecipeIngredient recing
	ON rec.RecipeID = recing.RecipeID
	INNER JOIN dbo.Ingredient ing
	ON recing.IngredientID = ing.IngredientID

-- Listing 2-27
SELECT  MealTypeName, RecipeName, ServingQuantity, IngredientName
FROM #TempAvailableMeal