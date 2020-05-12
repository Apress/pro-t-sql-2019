USE Menu;
GO

DECLARE @RecipeID INT = NULL;

CREATE TABLE #TempIngredient
(
      RecipeID          INT,
      IngredientName    VARCHAR(25),
      Cost              DECIMAL(6,3)
);

INSERT INTO #TempIngredient
SELECT recing.RecipeID, ing.IngredientName, ingcos.Cost
FROM dbo.RecipeIngredient recing
      INNER JOIN dbo.Ingredient ing
      ON recing.IngredientID = ing.IngredientID
      LEFT JOIN dbo.IngredientCost ingcos
      ON ing.IngredientID = ingcos.IngredientID
            AND ingcos.IsActive = 1
            AND ingcos.Cost > 5.00
ORDER BY recing.RecipeID, recing.IngredientID;

SELECT rec.RecipeName, meal.MealTypeName, ting.IngredientName, ting.Cost
FROM dbo.Recipe rec
      INNER JOIN dbo.MealType meal
      ON rec.MealTypeID = meal.MealTypeID
      INNER JOIN #TempIngredient ting
      ON rec.RecipeID = ting.RecipeID
WHERE (rec.RecipeID = @RecipeID OR @RecipeID IS NULL)
ORDER BY rec.RecipeName, ting.IngredientName;

DROP TABLE #TempIngredient;
