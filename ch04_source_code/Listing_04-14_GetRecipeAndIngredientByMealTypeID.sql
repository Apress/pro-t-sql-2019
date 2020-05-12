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
AS

DECLARE @QueryString    NVARCHAR(1000);

      -- Original query to be executed
      SELECT @QueryString = N'
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
      WHERE rec.MealTypeID = @MelTypID
      ORDER BY rec.RecipeName, ingr.IngredientName'

 -- If the parameters do not provide a stable execution plan
 ---- Add OPTION(RECOMPILE) to the query
IF (@MealTypeID <> 2)
BEGIN

      SELECT @QueryString = @QueryString + N' OPTION(RECOMPILE)';
END

-- Execute the query string
EXECUTE [sp_executesql] @QueryString,
      N'@MelTypID INT',
      @MelTypID = @MealTypeID;

GO
