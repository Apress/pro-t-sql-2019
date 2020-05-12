USE Menu;
GO

CREATE TABLE #TempAvailableMeal
(
	MealTypeName	VARCHAR(25),
	RecipeName		VARCHAR(25),
	ServingQuantity	TINYINT,
	IngredientName	VARCHAR(25)
)
