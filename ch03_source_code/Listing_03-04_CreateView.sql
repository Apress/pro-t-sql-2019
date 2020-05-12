USE Menu;
GO

-- This code assumes you did not create this view in the previous chapter
CREATE VIEW dbo.AvailableMeal
AS
SELECT meal.MealTypeName, rec.RecipeName, rec.ServingQuantity, ing.IngredientName
FROM dbo.Recipe rec
	INNER JOIN dbo.MealType meal
	ON rec.MealTypeID = meal.MealTypeID
	INNER JOIN dbo.RecipeIngredient recing
	ON rec.RecipeID = recing.RecipeID
	INNER JOIN dbo.Ingredient ing
	ON recing.IngredientID = ing.IngredientID