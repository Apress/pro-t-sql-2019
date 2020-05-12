USE Menu;
GO

-- This code assumes you did not create this procedure in the previous chapter
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