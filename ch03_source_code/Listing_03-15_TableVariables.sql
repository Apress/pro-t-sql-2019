USE Menu;
GO

DECLARE @TempAvailableMeal TABLE
(
	MealTypeName VARCHAR(25),
	RecipeName VARCHAR(25),
	ServingQuantity TINYINT,
	IngredientName VARCHAR(25)
)