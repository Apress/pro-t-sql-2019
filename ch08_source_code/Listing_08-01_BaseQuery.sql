USE Menu;
GO

DECLARE @RecipeID             INT = -1;
DECLARE @PreparationTypeID    INT = -1;
DECLARE @MealTypeID           INT = -1;
DECLARE @StartDate            DATETIME = NULL;
DECLARE @EndDate			  DATETIME = NULL;


SELECT recing.RecipeID, 
      recing.IngredientID, 
      ic.IngredientCostID
INTO #TmpRecipe
FROM dbo.Recipe rec
      INNER JOIN dbo.RecipeIngredient recing 
      ON rec.RecipeID = recing.RecipeID
      INNER JOIN dbo.Ingredient ing 
      ON recing.IngredientID = ing.IngredientID
      INNER JOIN dbo.IngredientCost ic 
      ON ing.IngredientID = ic.IngredientID
WHERE (rec.PreparationTypeID = @PreparationTypeID OR @PreparationTypeID = -1)
      AND (rec.RecipeID = @RecipeID OR @RecipeID = -1)
      AND (rec.MealTypeID = @MealTypeID OR @MealTypeID = -1)
      AND ing.IsActive = 1
      AND (rec.DateCreated > @StartDate OR @StartDate IS NULL)
      AND (rec.DateCreated < @EndDate OR @EndDate IS NULL);

SELECT IngredientCostID
INTO #UniqueIngredientCost
FROM IngredientCostHistory
GROUP BY IngredientCostID
HAVING COUNT(*)>3;

SELECT rec.RecipeName, 
      rec.RecipeDescription, 
      ing.IngredientName, 
      rec.PreparationTypeID, 
      p.PreparationTypeName, 
      p.PreparationTypeDescription, 
      ic.Cost
FROM #TmpRecipe tr
      LEFT JOIN #UniqueIngredientCost uic 
      ON tr.IngredientCostID = uic.IngredientCostID 
      LEFT JOIN dbo.IngredientCostHistory ic 
      ON uic.IngredientCostID = ic.IngredientCostID
      INNER JOIN dbo.Recipe rec 
      ON tr.RecipeID = rec.RecipeID
      INNER JOIN dbo.Ingredient ing 
      ON tr.IngredientID = ing.IngredientID
      INNER JOIN dbo.PreparationType p 
      ON rec.PreparationTypeID = p.PreparationTypeID
WHERE uic.IngredientCostID IS NOT NULL
ORDER BY 
      CASE WHEN 
      (
            rec.RecipeID = @RecipeID 
            AND rec.PreparationTypeID = @PreparationTypeID
      ) 
            THEN 0 
            ELSE 1 
      END, 
      rec.RecipeName DESC, 
      ing.IngredientName ASC

DROP TABLE #TmpRecipe
DROP TABLE #UniqueIngredientCost
