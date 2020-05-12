USE Menu;
GO

CREATE PROCEDURE dbo.UpdateRecipeMenuType
    @RecipeMeal RecipeMealType READONLY  
AS   
SET NOCOUNT ON  
UPDATE rec
SET MealTypeID = meal.MealTypeID
FROM dbo.Recipe rec
	INNER JOIN @RecipeMeal recmeal
	ON rec.RecipeName = recmeal.RecipeName
	INNER JOIN dbo.MealType meal
	ON recmeal.MealTypeName = meal.MealTypeName	