USE Menu;
GO

CREATE PROCEDURE dbo.CreatePersistentTable
AS
	CREATE TABLE ##AvailableMeal
	(
		MealTypeName VARCHAR(25),
		RecipeName VARCHAR(25),
		ServingQuantity TINYINT,
		IngredientName VARCHAR(25)
	);
GO