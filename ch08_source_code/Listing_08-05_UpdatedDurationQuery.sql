USE Menu;
GO

DECLARE @RecipeID INT = NULL;

SELECT rec.RecipeName, meal.MealTypeName, ing.IngredientName, ingcos.Cost
FROM dbo.Recipe rec
      INNER JOIN dbo.MealType meal
      ON rec.MealTypeID = meal.MealTypeID
      INNER JOIN dbo.RecipeIngredient recing
      ON rec.RecipeID = recing.RecipeID
      INNER JOIN dbo.Ingredient ing
      ON recing.IngredientID = ing.IngredientID
      LEFT JOIN dbo.IngredientCost ingcos
      ON ing.IngredientID = ingcos.IngredientID
            AND ingcos.IsActive = 1
WHERE (rec.RecipeID = @RecipeID OR @RecipeID IS NULL)
ORDER BY rec.RecipeName, ing.IngredientName;
