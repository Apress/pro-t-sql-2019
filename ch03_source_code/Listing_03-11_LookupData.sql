USE Menu;
GO

SELECT rec.RecipeID, rec.RecipeName
FROM dbo.Recipe rec
 INNER JOIN dbo.MealType meal
 ON rec.MealTypeID = meal.MealTypeID
WHERE meal.MealTypeID = 2