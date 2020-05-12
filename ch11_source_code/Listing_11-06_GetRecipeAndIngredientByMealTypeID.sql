USE Menu;
GO

CREATE OR ALTER PROCEDURE dbo.GetRecipeAndIngredientByMealTypeID
      @MealTypeID     INT
AS

      SELECT
            rec.RecipeName,
            ingr.IngredientName, 
            ingr.IsActive, 
            ingr.DateCreated, 
            ingr.DateModified
      FROM dbo.Recipe rec
            INNER JOIN dbo.RecipeIngredient recingr
            ON rec.RecipeID = recingr.RecipeID
            LEFT OUTER JOIN dbo.Ingredient ingr
            ON recingr.IngredientID = ingr.IngredientID
      WHERE rec.MealTypeID = @MealTypeID
      ORDER BY rec.RecipeName, ingr.IngredientName;
