USE Menu;
GO

/*-------------------------------------------------------------*\
Name:             dbo.GetRecipeAndIngredientByMealTypeID
Author:           Elizabeth Noble 
Created Date:     April 20, 2019
Description: Get all recipes and their ingredients by meal type

Sample Usage:
      EXECUTE dbo.GetRecipeAndIngredientByMealTypeID 1

\*-------------------------------------------------------------*/
CREATE PROCEDURE dbo.GetRecipeAndIngredientByMealTypeID
      @MealTypeID     INT
WITH RECOMPILE
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
