USE Menu;
GO

-- Listing 2-28
---- Step 1:
CREATE TABLE ##TempAvailableMeal
(
	MealTypeName	VARCHAR(25),
	RecipeName		VARCHAR(25),
	ServingQuantity	TINYINT,
	IngredientName	VARCHAR(25)
);

---- Step 2:
INSERT INTO ##TempAvailableMeal (MealTypeName, RecipeName, ServingQuantity, IngredientName)
SELECT meal.MealTypeName, rec.RecipeName, rec.ServingQuantity, ing.IngredientName
FROM dbo.Recipe rec
	INNER JOIN dbo.MealType meal
	ON rec.MealTypeID = meal.MealTypeID
	INNER JOIN dbo.RecipeIngredient recing
	ON rec.RecipeID = recing.RecipeID
	INNER JOIN dbo.Ingredient ing
	ON recing.IngredientID = ing.IngredientID